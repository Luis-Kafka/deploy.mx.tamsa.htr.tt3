
create FUNCTION [Custom].[FSGetProductionNormalizedCycleTime]
(
	@IdBatch INT,
	@IdMachine INT,
	@CycleTime FLOAT
)
RETURNS FLOAT
AS
BEGIN

	RETURN @CycleTime

END