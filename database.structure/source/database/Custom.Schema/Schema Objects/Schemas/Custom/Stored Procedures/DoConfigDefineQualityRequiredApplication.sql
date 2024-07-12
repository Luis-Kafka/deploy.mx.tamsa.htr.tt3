-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED STORED PROCEDURE, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE PROCEDURE [Custom].[DoConfigDefineQualityRequiredApplication](
  @MachineCode [Common].[TCode],
  @ApplicationCode [Common].[TCode],
  @Active Common.TActive = 1) AS
BEGIN

  DECLARE @idMachine int;
  SET @idMachine = [Common].[FSGetMachineId](@MachineCode);

  DECLARE @idApplication int;
  SET @idApplication = [Common].[FSGetApplicationId](@ApplicationCode);

  DECLARE @idQualityRequiredApplication INT;
  SET @idQualityRequiredApplication = [Custom].[FSGetQualityRequiredApplicationId](@MachineCode, @ApplicationCode)

  IF (@idQualityRequiredApplication IS NULL)
  BEGIN
    INSERT INTO [Custom].[QualityRequiredApplication] ([idMachine], [idApplication], [Active])
    VALUES (@idMachine, @idApplication, @Active);
  END
  ELSE
  BEGIN
    UPDATE [Custom].[QualityRequiredApplication] SET 
      [idMachine] = @idMachine,
      [idApplication] = @idApplication,
      [Active] = @Active
    WHERE idQualityRequiredApplication = @idQualityRequiredApplication;
  END;

END