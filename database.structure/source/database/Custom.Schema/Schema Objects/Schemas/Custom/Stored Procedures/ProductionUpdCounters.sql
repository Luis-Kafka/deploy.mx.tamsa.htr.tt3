CREATE PROCEDURE [Custom].[ProductionUpdCounters]
	@IdTrackingPass INT = NULL,
	@IdKeyHistory INT,
    @IdItemStatus INT = NULL,
    @PreviousIdItemStatus INT = NULL,
    @ItemCount INT = 1
AS
BEGIN
		
		SET NOCOUNT ON;
		
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
		DECLARE @IdCounterHistory INT
		DECLARE @IdMachine INT
		
		DECLARE @CurrentCounters TABLE
		(
			IdItemStatus INT PRIMARY KEY,
			ItemStatusCode NVARCHAR(50) NOT NULL,
			CounterValue INT NOT NULL
		)

		BEGIN -- Verify counterHistory exists

			SELECT @IdCounterHistory = idCounterHistory
			FROM Production.CounterHistory
			WHERE idKeyHistory = @IdKeyHistory
		
			IF @IdCounterHistory IS NULL	
			BEGIN
				RAISERROR(N'CounterHistory for idKeyHistory ''%d'' NOT FOUND in database. Cannot count TrackingPass ''%d''', 11, 1, @IdKeyHistory, @IdTrackingPass)
			END

		END

		BEGIN -- Get current counters

			SET @IdMachine = (SELECT idMachine FROM Production.KeyHistory WHERE idKeyHistory = @IdKeyHistory)

			INSERT @CurrentCounters(IdItemStatus, ItemStatusCode, CounterValue)
			SELECT IdItemStatus, ItemStatusCode, CounterValue
			FROM [Custom].[ProductionGetCounters](@IdMachine, NULL, NULL, @IdKeyHistory, 1)

		END

		BEGIN -- Updating counter history
		
			UPDATE Production.CounterHistory SET 
				LoadedCount		= (SELECT CounterValue FROM @CurrentCounters WHERE ItemStatusCode = @LoadedStatusCode),
				ExitedCount		= (SELECT CounterValue FROM @CurrentCounters WHERE ItemStatusCode = @ExitedStatusCode),
				WorkedCount		= (SELECT CounterValue FROM @CurrentCounters WHERE ItemStatusCode = @WorkedStatusCode),
				GoodCount		= (SELECT CounterValue FROM @CurrentCounters WHERE ItemStatusCode = @GoodStatusCode),
				RejectedCount	= (SELECT CounterValue FROM @CurrentCounters WHERE ItemStatusCode = @RejectedStatusCode),
				DiscardedCount	= (SELECT CounterValue FROM @CurrentCounters WHERE ItemStatusCode = @DiscardedStatusCode),
				ReworkedCount	= (SELECT CounterValue FROM @CurrentCounters WHERE ItemStatusCode = @ReworkStatusCode)
			WHERE idCounterHistory = @IdCounterHistory
			
		END

		BEGIN -- Updating custom counter history

			MERGE Production.CustomCounterHistory AS Target
			USING @CurrentCounters AS Source
				ON Target.idCounterHistory = @IdCounterHistory AND Target.IdItemStatus = Source.IdItemStatus
			WHEN MATCHED THEN
				UPDATE SET Target.[Count] = Source.CounterValue
			WHEN NOT MATCHED BY TARGET THEN
				INSERT ([idCounterHistory], [idItemStatus], [Count]) VALUES(@IdCounterHistory, Source.IdItemStatus, Source.CounterValue);

		END
		
END