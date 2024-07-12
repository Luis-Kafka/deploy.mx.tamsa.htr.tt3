-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED FUNCTION, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE FUNCTION [Custom].[FSGetMachineId](@MachineMachineCode [Common].[TCode])
RETURNS INT AS
BEGIN

  DECLARE @Id INT = NULL;

  SELECT 
    @Id = [idMachine]
  FROM [Custom].[Machine]
  WHERE
	((COALESCE(NULL, @MachineMachineCode) IS NULL AND [idMachine] IS NULL) OR ([idMachine] = [Production].[FSGetMachineId](@MachineMachineCode)));

  RETURN @Id;

END