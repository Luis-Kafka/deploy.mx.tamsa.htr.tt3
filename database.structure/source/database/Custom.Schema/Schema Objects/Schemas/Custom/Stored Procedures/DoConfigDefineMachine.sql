-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED STORED PROCEDURE, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE PROCEDURE [Custom].[DoConfigDefineMachine](
  @MachineMachineCode [Common].[TCode],
  @ProductionSortOrder int) AS
BEGIN

  DECLARE @idMachine int;
  SET @idMachine = [Production].[FSGetMachineId](@MachineMachineCode);

  IF NOT EXISTS (SELECT 1 FROM [Custom].[Machine] WHERE idMachine = @idMachine)
  BEGIN
    INSERT INTO [Custom].[Machine] ([idMachine], [ProductionSortOrder])
    VALUES (@idMachine, @ProductionSortOrder);
  END
  ELSE
  BEGIN
    UPDATE [Custom].[Machine] SET 
      [ProductionSortOrder] = @ProductionSortOrder
    WHERE idMachine = @idMachine;
  END;

END