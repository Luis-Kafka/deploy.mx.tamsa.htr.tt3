CREATE FUNCTION [Custom].[ProductionFSGetMachineSortOrder]
(
	@IdMachine INT
)
RETURNS INT
AS
BEGIN

	DECLARE @resultSortOrder INT

	SELECT @resultSortOrder = ProductionSortOrder
	FROM Custom.Machine
	WHERE idMachine = @IdMachine

	SET @resultSortOrder = ISNULL(@resultSortOrder, 0)

	RETURN @resultSortOrder

END