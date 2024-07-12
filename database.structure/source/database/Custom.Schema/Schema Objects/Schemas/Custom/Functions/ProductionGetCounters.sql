-- SELECT * FROM [Custom].[ProductionGetCounters1](1, 87, NULL, NULL, 1)
CREATE FUNCTION [Custom].[ProductionGetCounters]
(
	@IdMachine INT,
	@IdBatch INT = NULL,
	@IdShiftHistory INT = NULL,
	@IdKey INT = NULL,
	@CalculateRemainingCount BIT = 1
)
RETURNS @ResultCounters TABLE
(
	IdItemStatus INT PRIMARY KEY,
	ItemStatusCode NVARCHAR(50) NOT NULL,
	CounterValue INT NOT NULL
)
AS
BEGIN
		
		DECLARE @GoodStatusCode NVARCHAR(50) = 'Good'
		DECLARE @DiscardedStatusCode NVARCHAR(50) = 'Discarded'
		DECLARE @ReworkStatusCode NVARCHAR(50) = 'Rework'
		DECLARE @HoldStatusCode NVARCHAR(50) = 'Hold'
		DECLARE @WarnedStatusCode NVARCHAR(50) = 'Warned'
		DECLARE @LoadedStatusCode NVARCHAR(50) = 'Loaded'
		DECLARE @CountedStatusCode NVARCHAR(50) = 'Counted'
		DECLARE @ProgrammedStatusCode NVARCHAR(50) = 'Programmed'
		DECLARE @RemainingStatusCode NVARCHAR(50) = 'Remaining'
		DECLARE @ExitedStatusCode NVARCHAR(50) = 'Exited'
		DECLARE @RejectedStatusCode NVARCHAR(50) = 'Rejected'
		DECLARE @PendingStatusCode NVARCHAR(50) = 'Pending'
		DECLARE @WorkedStatusCode NVARCHAR(50) = 'Worked'

		DECLARE @GoodStatusId INT
		DECLARE @DiscardedStatusId INT
		DECLARE @ReworkStatusId INT
		DECLARE @HoldStatusId INT
		DECLARE @WarnedStatusId INT
		DECLARE @LoadedStatusId INT
		DECLARE @CountedStatusId INT
		DECLARE @ProgrammedStatusId INT
		DECLARE @RemainingStatusId INT
		DECLARE @ExitedStatusId INT
		DECLARE @RejectedStatusId INT
		DECLARE @PendingStatusId INT
		DECLARE @WorkedStatusId INT

		DECLARE @ReworkDestinationId INT
		DECLARE @HoldDestinationId INT

		DECLARE @ActiveKeyStatus INT
		DECLARE @EndedKeyStatus INT

		DECLARE @ProductionKeys TABLE
		(
			IdKeyHistory INT PRIMARY KEY,
			IdShiftHistory INT NOT NULL,
			IdBatchHistory INT NOT NULL,
			IdMachine INT NOT NULL
		)

		DECLARE @ProductionBatches TABLE
		(
			Idx INT IDENTITY(1,1),
			IdBatchHistory INT NOT NULL
		)

		DECLARE @ProductionTrackingPasses TABLE
		(
			IdTrackingPassHistory INT PRIMARY KEY,
			IdKeyHistory INT NOT NULL,
			IdItemStatus INT NOT NULL,
			IdItemSide INT NULL,
			IdDestination INT NULL,
			IsCounted BIT NOT NULL
		)

		DECLARE @GoodCount INT = 0
		DECLARE @DiscardedCount INT = 0
		DECLARE @ReworkCount INT = 0
		DECLARE @HoldCount INT = 0
		DECLARE @WarnedCount INT = 0
		DECLARE @LoadedCount INT = 0
		DECLARE @CountedCount INT = 0
		DECLARE @ProgrammedCount INT = 0
		DECLARE @RemainingCount INT = 0
		DECLARE @ExitedCount INT = 0
		DECLARE @RejectedCount INT = 0
		DECLARE @WorkedCount INT = 0

		BEGIN -- Get itemStatuses, keyStatuses and Destinations

			SET @GoodStatusId = [Tracking].[FSGetItemStatusId](@GoodStatusCode)
			SET @DiscardedStatusId = [Tracking].[FSGetItemStatusId](@DiscardedStatusCode)
			SET @ReworkStatusId = [Tracking].[FSGetItemStatusId](@ReworkStatusCode)
			SET @HoldStatusId = [Tracking].[FSGetItemStatusId](@HoldStatusCode)
			SET @WarnedStatusId = [Tracking].[FSGetItemStatusId](@WarnedStatusCode)
			SET @LoadedStatusId = [Tracking].[FSGetItemStatusId](@LoadedStatusCode)
			SET @CountedStatusId = [Tracking].[FSGetItemStatusId](@CountedStatusCode)
			SET @ProgrammedStatusId = [Tracking].[FSGetItemStatusId](@ProgrammedStatusCode)
			SET @RemainingStatusId = [Tracking].[FSGetItemStatusId](@RemainingStatusCode)
			SET @ExitedStatusId = [Tracking].[FSGetItemStatusId](@ExitedStatusCode)
			SET @RejectedStatusId = [Tracking].[FSGetItemStatusId](@RejectedStatusCode)
			SET @PendingStatusId = [Tracking].[FSGetItemStatusId](@PendingStatusCode)
			SET @WorkedStatusId = [Tracking].[FSGetItemStatusId](@WorkedStatusCode)

			SET @ReworkDestinationId = [Quality].[FSGetDestinationId]('RW')
			SET @HoldDestinationId = [Quality].[FSGetDestinationId]('Hold')

			SET @ActiveKeyStatus = [Common].[FSGetIdStatus]('Active')
			SET @EndedKeyStatus = [Common].[FSGetIdStatus]('Ended')

		END

		BEGIN -- Gather keys that correspond to received filters

			INSERT @ProductionKeys (IdKeyHistory, IdShiftHistory, IdBatchHistory, IdMachine)
			SELECT idKeyHistory, idShiftHistory, idProductionHistory, idMachine
			FROM Production.KeyHistory
			WHERE 
				idMachine = @IdMachine AND 
				idStatus IN (@ActiveKeyStatus, @EndedKeyStatus) AND
				(@IdBatch IS NULL OR idProductionHistory = @IdBatch) AND
				(@IdShiftHistory IS NULL OR idShiftHistory = @IdShiftHistory) AND
				(@IdKey IS NULL OR idKeyHistory = @IdKey) AND
				idShiftHistory IS NOT NULL

		END

		BEGIN -- Gather batches that correspond to received filters

			INSERT @ProductionBatches (IdBatchHistory)
			SELECT DISTINCT IdBatchHistory 
			FROM @ProductionKeys

		END

		BEGIN -- Gather trackingPasses that correspond to received filters

			INSERT @ProductionTrackingPasses(IdTrackingPassHistory, IdKeyHistory, IdItemStatus, IdItemSide, IdDestination, IsCounted)
			SELECT DISTINCT TP.idTrackingPassHistory, TP.idKeyHistory, TP.idItemStatus, TP.idItemSide, QH.idDestination,
				CASE WHEN TP.EndDateTime IS NOT NULL THEN 1 ELSE 0 END AS IsCounted
			FROM Production.TrackingPassHistory TP
			JOIN @ProductionKeys K ON TP.idKeyHistory = K.IdKeyHistory
			LEFT JOIN Quality.History QH ON TP.idTrackingPassHistory = QH.idTrackingPassHistory AND QH.IsMain = 1 AND QH.Active = 1

		END

		BEGIN -- Calculate trackingPasses counters

			SELECT 
				@GoodCount = SUM(CAST(ST.GoodState AS INT)),
				@DiscardedCount = SUM(CAST(ST.DiscardedState AS INT)),
				@ReworkCount = SUM(CAST(ST.ReworkState AS INT)),
				@HoldCount = SUM(CAST(ST.HoldState AS INT)),
				@WarnedCount = SUM(CAST(ST.WarnedState AS INT)),
				@LoadedCount = SUM(CAST(ST.LoadedState AS INT)),
				@CountedCount = SUM(CAST(ST.CountedState AS INT)),
				@RejectedCount = SUM(CAST(ST.RejectedState AS INT))
			FROM
			(
				SELECT 
					CASE WHEN IdItemStatus = @GoodStatusId AND IsCounted = 1 THEN 1 ELSE 0 END AS GoodState,
					CASE WHEN IdItemStatus = @DiscardedStatusId  AND IsCounted = 1  THEN 1 ELSE 0 END AS DiscardedState,
					CASE WHEN IdItemStatus = @RejectedStatusId AND IdDestination = @ReworkDestinationId  AND IsCounted = 1 THEN 1 ELSE 0 END AS ReworkState,
					CASE WHEN IdItemStatus = @HoldStatusId AND IdDestination = @HoldDestinationId  AND IsCounted = 1 THEN 1 ELSE 0 END AS HoldState,
					CASE WHEN IdItemStatus = @WarnedStatusId AND IsCounted = 1 THEN 1 ELSE 0 END AS WarnedState,
					1 AS LoadedState,
					IsCounted AS CountedState,
					CASE WHEN IdItemStatus = @RejectedStatusId AND IsCounted = 1 THEN 1 ELSE 0 END AS RejectedState
				FROM @ProductionTrackingPasses
			) ST

			IF @IdBatch IS NOT NULL
			BEGIN
				SELECT @ProgrammedCount = SUM(LoadedCount)
				FROM Common.BatchHistory BH
				WHERE idBatchHistory = @IdBatch
			END
			ELSE
			BEGIN
				SELECT @ProgrammedCount = SUM(LoadedCount)
				FROM Common.BatchHistory BH
				JOIN @ProductionBatches KB ON BH.idBatchHistory = KB.IdBatchHistory
			END

			SET @GoodCount = ISNULL(@GoodCount, 0)
			SET @DiscardedCount = ISNULL(@DiscardedCount, 0)
			SET @ReworkCount = ISNULL(@ReworkCount, 0)
			SET @HoldCount = ISNULL(@HoldCount, 0)
			SET @WarnedCount = ISNULL(@WarnedCount, 0)
			SET @LoadedCount = ISNULL(@LoadedCount, 0)
			SET @CountedCount = ISNULL(@CountedCount, 0)
			SET @RejectedCount = ISNULL(@RejectedCount, 0)
			SET @ProgrammedCount = ISNULL(@ProgrammedCount, 0)

			SET @ExitedCount = @GoodCount + @DiscardedCount + @HoldCount + @WarnedCount
			SET @WorkedCount = @ExitedCount

			IF @CalculateRemainingCount = 1
			BEGIN

				IF @IdBatch IS NOT NULL
				BEGIN
					SET @RemainingCount = @ProgrammedCount + @ReworkCount - @LoadedCount
				END
				ELSE
				BEGIN
					DECLARE @BatchesCounters TABLE
					(
						IdItemStatus INT,
						ItemStatusCode NVARCHAR(50) NOT NULL,
						CounterValue INT NOT NULL
					)
					DECLARE @currentBatchId INT
					DECLARE @currentIdx INT = 1
					DECLARE @maximumIdx INT = (SELECT COUNT(*) FROM @ProductionBatches)

					WHILE @currentIdx <= @maximumIdx
					BEGIN
						SELECT @currentBatchId = IdBatchHistory
						FROM @ProductionBatches
						WHERE Idx = @currentIdx

						INSERT @BatchesCounters (IdItemStatus, ItemStatusCode, CounterValue)
						SELECT IdItemStatus, ItemStatusCode, CounterValue
						FROM [Custom].[ProductionGetCounters] (@IdMachine, @currentBatchId, NULL, NULL, 0)

						SET @currentIdx = @currentIdx + 1
					END
					
					SET @RemainingCount = @ProgrammedCount
											+ ISNULL((SELECT SUM(CounterValue) FROM @BatchesCounters WHERE IdItemStatus = @ReworkStatusId), 0)  -- @ReworkCount
											- ISNULL((SELECT SUM(CounterValue) FROM @BatchesCounters WHERE IdItemStatus = @LoadedStatusId), 0)  -- @LoadedCount
				END

			END
			ELSE
			BEGIN
				SET @RemainingCount = 0
			END

		END

		INSERT @ResultCounters (IdItemStatus, ItemStatusCode, CounterValue)
		SELECT @GoodStatusId,		@GoodStatusCode,		@GoodCount			UNION
		SELECT @DiscardedStatusId,	@DiscardedStatusCode,	@DiscardedCount		UNION
		SELECT @ReworkStatusId,		@ReworkStatusCode,		@ReworkCount		UNION
		SELECT @HoldStatusId,		@HoldStatusCode,		@HoldCount			UNION
		SELECT @WarnedStatusId,		@WarnedStatusCode,		@WarnedCount		UNION
		SELECT @LoadedStatusId,		@LoadedStatusCode,		@LoadedCount		UNION
		SELECT @CountedStatusId,	@CountedStatusCode,		@CountedCount		UNION
		SELECT @ProgrammedStatusId,	@ProgrammedStatusCode,	@ProgrammedCount	UNION
		SELECT @RemainingStatusId,	@RemainingStatusCode,	@RemainingCount		UNION
		SELECT @ExitedStatusId,		@ExitedStatusCode,		@ExitedCount		UNION
		SELECT @WorkedStatusId,		@WorkedStatusCode,		@WorkedCount		UNION
		SELECT @RejectedStatusId,	@RejectedStatusCode,	@RejectedCount

		RETURN
END