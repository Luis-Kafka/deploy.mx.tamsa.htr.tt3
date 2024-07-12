
CREATE PROCEDURE [Custom].[ProductionGetMachineBatchRemainingCount]
	@IdMachine INT,
	@IdBatch INT,
	@RemainingCount INT = NULL OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
	
	--------------------------------------------------------------------------------------
	--  This stored procedure COULD BE CUSTOMIZED for each implementation of production manager
	--	The implementation may vary depending on particular conditions on each mill
	--
	--  Description:
	--  Get how many pieces belonging to given batch are left to pass by given machine.
	--  As a proposal for this calculation, here we apply the following formula:
	--
	--  Pieces left to pass by given machine =
	--		Total pieces of batch (i.e. BatchHistory.LoadedCount)
	--		minus pieces entered by given machine 
	--		minus pieces entered by twins of given machine
	--		minus discard count from previous machines
	--------------------------------------------------------------------------------------
	
	DECLARE @BatchTotal INT
	DECLARE @MachineEntered INT
	DECLARE @TwinsEntered INT
	DECLARE @PreviousDiscarded INT
		
	-- Getting batch total
	SELECT @BatchTotal = LoadedCount
	FROM Production.BatchHistory
	WHERE idBatchHistory = @IdBatch
	
	-- Getting machine entered
	SELECT @MachineEntered = EnteredCount
	FROM Production.MachineBatchHistory
	WHERE idBatchHistory = @IdBatch AND idMachine = @IdMachine
	
	-- Geting machine's twins entered
	SELECT @TwinsEntered = SUM(EnteredCount)
	FROM Production.MachineBatchHistory
	WHERE idBatchHistory = @IdBatch AND idMachine IN
	(
		SELECT idMachine
		FROM Common.VwTwinMachine
		WHERE idTwin IN 
		(
			SELECT idTwin 
			FROM  Common.VwTwinMachine
			WHERE idMachine = @IdMachine
		)
	) AND idMachine <> @IdMachine
	
	-- Getting discarded count from previous machines
	SELECT @PreviousDiscarded = SUM(DiscardedCount)
	FROM Production.CounterHistory
	WHERE idKeyHistory IN
	(
		SELECT idKeyHistory
		FROM Production.KeyHistory
		WHERE 
			idProductionHistory = @IdBatch AND 
			idMachine IN
			(
				SELECT IdMachine 
				FROM [Production].[FTGetPreviousMachines](@IdMachine)
			)
	)
	
	IF @BatchTotal IS NULL OR @BatchTotal < 0
	BEGIN
		SET @BatchTotal = 0
	END
	
	IF @MachineEntered IS NULL OR @MachineEntered < 0
	BEGIN
		SET @MachineEntered = 0
	END
	
	IF @TwinsEntered IS NULL OR @TwinsEntered < 0
	BEGIN
		SET @TwinsEntered = 0
	END
	
	IF @PreviousDiscarded IS NULL OR @PreviousDiscarded < 0
	BEGIN
		SET @PreviousDiscarded = 0
	END
	
	SET @RemainingCount = @BatchTotal - @MachineEntered - @TwinsEntered - @PreviousDiscarded
    
    IF @RemainingCount IS NULL OR @RemainingCount < 0
	BEGIN
		SET @RemainingCount = 0
	END
    
END