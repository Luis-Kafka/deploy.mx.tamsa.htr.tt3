
CREATE FUNCTION [Custom].[FSInterruptionPluginGetCycleTime]
(
	@IdMachine			INT,
	@IdBatchHistory		INT,
	@IdSpecification	INT = NULL
)
RETURNS FLOAT AS
BEGIN
	DECLARE @CycleTime FLOAT = NULL;

	-- Get cycle time from [Production].[MachineBatchHistory]
	SELECT
		@CycleTime = StandardCycleTime
	FROM		[Production].[MachineBatchHistory]
	WHERE		idMachine = @IdMachine
		AND		idBatchHistory = @IdBatchHistory
		AND		idStatus = Common.FSGetIdStatus('Active');

	-- Get cycle time from Specification
	--IF @CycleTime IS NULL AND @IdSpecification IS NOT NULL
	--BEGIN
	--	DECLARE @MachineCode Common.TCode = [Common].[FSGetMachineCode]( @IdMachine );
	--	SET @CycleTime = CONVERT( FLOAT, [Specification].[FSGetSpecificationAttribute]( @IdSpecification, 'BC_WO_COMMON', 'CYCLE_TIME', NULL, NULL, @MachineCode ) );
	--END;

	-- Get cycle time from machine default
	IF ISNULL( @CycleTime, -1 ) = -1
	BEGIN
		SELECT
			@CycleTime = DefaultStandardCycleTime
		FROM		Production.VWMachine
		WHERE		idMachine = @IdMachine
	END;

	RETURN @CycleTime;
END

GO
