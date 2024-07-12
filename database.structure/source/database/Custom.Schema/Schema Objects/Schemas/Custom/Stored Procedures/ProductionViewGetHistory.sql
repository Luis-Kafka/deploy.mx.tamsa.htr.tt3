CREATE PROCEDURE [Custom].[ProductionViewGetHistory]
	  @StationCode nvarchar(20), -- Fixed param: this parameter must be present
	  @ShiftDate datetime = null,
	  @ShiftNumber int = null,
	  @FromDate datetime = null,
	  @ToDate datetime = null,
	  @OrderNumber INT = null,
	  @HeatNumber int = null,
	  @SteelGrade nvarchar(20) = null,
	  @SteelCode nvarchar(20) = null,
      @Diameter float = null,
      @Thickness float = null,
	  @ByDates BIT
AS
  BEGIN
	SET NOCOUNT ON;

	DECLARE @ByProduct BIT = CASE WHEN @ByDates = 1 THEN 0 ELSE 1 END
	DECLARE @idMachine INT = Common.FSGetIdMachine(@StationCode)
	
	BEGIN -- Get counters for all matching keys

		DECLARE @ProductionKeysHistory TABLE
		(
			idKeyHistory INT PRIMARY KEY,
			idCounterHistory INT NOT NULL,
			ShiftDate DATE NOT NULL,
			ShiftNumber TINYINT NOT NULL,
			idBatchHistory INT NOT NULL,
			BeginDateTime DATETIMEOFFSET(7) NULL,
			EndDateTime DATETIMEOFFSET(7) NULL,
			BatchNumber INT NULL,
			OrderNumber NVARCHAR(1000) NULL,
			Customer NVARCHAR(1000) NULL,
			HeatNumber NVARCHAR(1000) NULL,
			SteelGrade NVARCHAR(1000) NULL,
			SteelCode NVARCHAR(1000) NULL,
			Diameter DECIMAL(8,3) NULL,
			Thickness DECIMAL(8,3) NULL,
			ProgrammedPieces INT NOT NULL,
			LoadedPieces INT NOT NULL,
			GoodPieces INT NOT NULL,
			RejectedPieces INT NOT NULL,
			ReworkedPieces INT NOT NULL,
			ScrapPieces INT NOT NULL,
			HoldPieces INT NOT NULL,
			WarnedPieces INT NOT NULL,
			StandardCycleTime FLOAT NOT NULL,
			StandardWorkTime FLOAT NOT NULL
		)

		INSERT @ProductionKeysHistory (
			idKeyHistory,
			idCounterHistory,
			ShiftDate,
			ShiftNumber,
			idBatchHistory, 
			BeginDateTime, 
			EndDateTime, 
			BatchNumber, 
			OrderNumber, 
			Customer, 
			HeatNumber, 
			SteelGrade, 
			SteelCode, 
			Diameter, 
			Thickness, 
			ProgrammedPieces, 
			LoadedPieces, 
			GoodPieces, 
			RejectedPieces,
			ReworkedPieces,
			ScrapPieces,
			HoldPieces,
			WarnedPieces,
			StandardCycleTime,
			StandardWorkTime
		)
		SELECT
			KH.idKeyHistory,
			CH.idCounterHistory,
			SH.ShiftDate,
			SH.ShiftNumber,
			B.idBatchHistory,
			KH.BeginDateTime AS BeginDateTime,
			KH.EndDateTime AS EndDateTime,
			B.Number as BatchNumber,
			OH.OrderNumber AS OrderNumber,
			OH.Customer AS Customer,
			HH.HeatNumber AS HeatNumber,
			OH.SteelGrade AS SteelGrade,
			OH.SteelCode AS SteelCode,
			CONVERT(DECIMAL(8,3), OH.Diameter) AS Diameter,
			CONVERT(DECIMAL(8,3), OH.Thickness) AS Thickness,
			B.ProgrammedCount AS ProgrammedPieces,
			0 AS LoadedPieces,
			0 AS GoodPieces,
			0 AS RejectedPieces,
			0 AS ReworkedPieces,
			0 AS ScrapPieces,
			0 AS HoldPieces,
			0 AS WarnedPieces,
			MBH.StandardCycleTime AS StandardCycleTime,
			MBH.StandardWorkTime AS StandardWorkTime
		FROM	
			Production.VWCounterHistory AS CH
			JOIN Production.VwKeyHistory AS KH ON CH.idKeyHistory = KH.idKeyHistory
			JOIN Production.VWBatchHistory AS B ON B.idBatchHistory = KH.idProductionHistory
			JOIN Production.VWMachineBatchHistory MBH ON MBH.idBatchHistory = B.idBatchHistory AND MBH.idMachine = @idMachine
			JOIN Shift.VwShiftHistoryComplete SH on KH.idShiftHistory = SH.idShiftHistory
			JOIN Custom.VwSpecificationOrderHistoryComplete OH on B.idSpecification = OH.idSpecification
			JOIN Custom.VwSpecificationHeatHistoryComplete HH on B.idSpecification = HH.idSpecification
		WHERE
			KH.idMachine = @idMachine
			AND (@FromDate IS NULL OR SH.ShiftDate >= @FromDate)
			AND (@ToDate IS NULL OR SH.ShiftDate <= @ToDate)
			AND (@ShiftDate IS NULL OR SH.ShiftDate = @ShiftDate)
			AND (@ShiftNumber IS NULL OR @ShiftNumber = 0 OR SH.ShiftNumber = @ShiftNumber)		
			AND (@OrderNumber IS NULL OR CONVERT(INT, OH.OrderNumber) = @OrderNumber)
			AND (@HeatNumber IS NULL OR CONVERT(INT, HH.HeatNumber) = @HeatNumber)
			AND (@SteelGrade IS NULL OR OH.SteelGrade = @SteelGrade)
			AND (@SteelCode IS NULL OR OH.SteelCode = @SteelCode)
			AND (@Diameter IS NULL OR CONVERT(DECIMAL(8,3), OH.Diameter) = CONVERT(DECIMAL(8,3), @Diameter))
			AND (@Thickness IS NULL OR CONVERT(DECIMAL(8,3), OH.Thickness) = CONVERT(DECIMAL(8,3), @Thickness))
		ORDER BY KH.BeginDateTime ASC
		
	END

	BEGIN -- Get custom counters for all matching keys

		UPDATE PKH SET
			LoadedPieces = CCH.Loaded,
			GoodPieces = CCH.Good,
			RejectedPieces = CCH.Rejected,
			ReworkedPieces = CCH.Rework,
			ScrapPieces = CCH.Discarded,
			HoldPieces = CCH.Hold,
			WarnedPieces = CCH.Warned
		FROM @ProductionKeysHistory PKH
		JOIN (
			SELECT idCounterHistory, [Good], [Rejected], [Warned], [Discarded], [Hold], [Counted], [Exited], [Loaded], [Programmed], [Remaining], [Rework], [Worked]
			FROM
			(
				SELECT idCounterHistory, TS.Code ItemStatusCode, [Count]
				FROM Production.CustomCounterHistory CH
				JOIN Tracking.ItemStatus TS ON CH.idItemStatus = TS.idItemStatus
				WHERE idCounterHistory IN (SELECT idCounterHistory FROM @ProductionKeysHistory)
			) SRC
			PIVOT
			(
				SUM([Count])
				FOR ItemStatusCode IN ([Good], [Rejected], [Warned], [Discarded], [Hold], [Counted], [Exited], [Loaded], [Programmed], [Remaining], [Rework], [Worked])
			) PIV
		) CCH ON PKH.idCounterHistory = CCH.idCounterHistory

	END

	IF @ByProduct = 1
	BEGIN -- Get counters from all keys grouped by batch
		
		SELECT
			idBatchHistory,
			MIN(BeginDateTime) AS BeginDateTime,
			MAX(EndDateTime) AS EndDateTime,
			BatchNumber,
			OrderNumber,
			Customer,
			HeatNumber,
			SteelGrade,
			SteelCode,
			Diameter,
			Thickness,
			MAX(ProgrammedPieces) AS ProgrammedPieces,
			SUM(LoadedPieces) AS LoadedPieces,
			SUM(GoodPieces) AS GoodPieces,
			SUM(RejectedPieces) AS RejectedPieces,
			SUM(ReworkedPieces) AS ReworkedPieces,
			SUM(ScrapPieces) AS ScrapPieces,
			SUM(HoldPieces) AS HoldPieces,
			SUM(WarnedPieces) AS WarnedPieces,
			MAX(StandardCycleTime) StandardCycleTime,
			MAX(StandardWorkTime) StandardWorkTime
		FROM @ProductionKeysHistory PKH
		GROUP BY idBatchHistory, BatchNumber, Diameter, Thickness, SteelGrade, SteelCode, OrderNumber, Customer, HeatNumber
		ORDER BY MIN(BeginDateTime) ASC

		RETURN
	END

	IF @ByDates = 1
	BEGIN -- Get counters from all keys grouped by dates
		
		SELECT
			ShiftDate,
			ShiftNumber,
			MIN(BeginDateTime) AS BeginDateTime,
			MAX(EndDateTime) AS EndDateTime,
			MAX(ProgrammedPieces) AS ProgrammedPieces,		
			SUM(LoadedPieces) AS LoadedPieces,
			SUM(GoodPieces) AS GoodPieces,
			SUM(RejectedPieces) AS RejectedPieces,
			SUM(ReworkedPieces) AS ReworkedPieces,
			SUM(ScrapPieces) AS ScrapPieces,
			SUM(HoldPieces) AS HoldPieces,
			SUM(WarnedPieces) AS WarnedPieces,
			MAX(StandardCycleTime) StandardCycleTime,
			MAX(StandardWorkTime) StandardWorkTime
		FROM @ProductionKeysHistory PKH
		GROUP BY ShiftDate, ShiftNumber
		ORDER BY ShiftDate, ShiftNumber

		RETURN
	END

END