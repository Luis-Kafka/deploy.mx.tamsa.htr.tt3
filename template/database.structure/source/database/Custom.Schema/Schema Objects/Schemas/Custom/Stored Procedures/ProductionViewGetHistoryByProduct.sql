CREATE PROCEDURE [Custom].[ProductionViewGetHistoryByProduct]
	  @StationCode nvarchar(20), -- Fixed param: this parameter must be present
	  @ShiftDate datetime = null, -- Fixed param: this parameter must be present
	  @ShiftNumber int = null, -- Fixed param: this parameter must be present
	  @FromDate datetime = null,
	  @ToDate datetime = null,
	  @OrderNumber INT = null,
	  @HeatNumber int = null,
	  @SteelGrade nvarchar(20) = null,
	  @SteelCode nvarchar(20) = null,
      --@EndTypeCode nvarchar(50) = null,
      @Diameter float = null,
      @Thickness float = null
	  --@PipeType nvarchar(30) = null,
AS
  BEGIN
	SET NOCOUNT ON;
	SELECT
		B.idBatchHistory,
		MIN(KH.BeginDateTime) AS BeginDateTime,
		MAX(KH.EndDateTime) AS EndDateTime,
		B.Number as BatchNumber,
		OH.OrderNumber AS OrderNumber,
		OH.Customer AS Customer,
		HH.HeatNumber AS HeatNumber,
		OH.SteelGrade AS SteelGrade,
		OH.SteelCode AS SteelCode,
		--v.EndTypeCode AS PipeEnd,
		CONVERT(DECIMAL(8,3), OH.Diameter) AS Diameter,
		CONVERT(DECIMAL(8,3), OH.Thickness) AS Thickness,
		--v.PipeTypeCode AS PipeType,
		SUM(B.ProgrammedCount) AS ProgrammedPieces,		
		SUM(H.LoadedCount) AS LoadedPieces,
		SUM(H.GoodCount) AS GoodPieces,
		SUM(H.DiscardedCount) AS RejectedPieces,
		SUM(H.ReworkedCount) AS ReworkedPieces,
		SUM(H.RejectedCount) AS ScrapPieces,
		(SELECT StandardCycleTime
			FROM Production.VWMachineBatchHistory MBH
			WHERE MBH.idMachine = Common.FSGetIdMachine(@StationCode) and MBH.idBatchHistory = B.idBatchHistory) as StandardCycleTime, 
		(SELECT StandardWorkTime
			FROM Production.VWMachineBatchHistory MBH
			WHERE MBH.idMachine = Common.FSGetIdMachine(@StationCode) and MBH.idBatchHistory = B.idBatchHistory) as StandardWorkTime	
	FROM	
		Production.VWCounterHistory AS H
		inner join Production.VwKeyHistory AS KH ON H.idKeyHistory = KH.idKeyHistory
		inner join Production.VWBatchHistory AS B ON B.idBatchHistory = KH.idProductionHistory
		inner join Shift.VwShiftHistoryComplete SH on KH.idShiftHistory = SH.idShiftHistory
		inner join Custom.VwSpecificationOrderHistoryComplete OH on B.idSpecification = OH.idSpecification
		inner join Custom.VwSpecificationHeatHistoryComplete HH on B.idSpecification = HH.idSpecification
	WHERE
		(KH.idMachine = Common.FSGetIdMachine(@StationCode))
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
		--AND (@PipeType IS NULL OR CONVERT(VARCHAR, v.PipeTypeCode) = @PipeType)
		--AND (@EndTypeCode IS NULL OR @EndTypeCode = '' OR CONVERT(VARCHAR, v.EndTypeCode) = @EndTypeCode)
	GROUP BY B.idBatchHistory, B.Number, OH.Diameter, OH.Thickness, OH.SteelGrade, OH.SteelCode, OH.OrderNumber, OH.Customer, HH.HeatNumber --, v.PipeTypeCode, v.EndTypeCode
	ORDER BY MIN(KH.BeginDateTime) ASC
	
  END