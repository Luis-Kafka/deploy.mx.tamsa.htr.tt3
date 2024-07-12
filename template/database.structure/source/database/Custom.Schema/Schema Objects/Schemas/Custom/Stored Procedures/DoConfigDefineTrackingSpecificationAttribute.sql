-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED STORED PROCEDURE, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE PROCEDURE [Custom].[DoConfigDefineTrackingSpecificationAttribute](
  @idTrackingAttribute int,
  @idSpecificationComponentSubType int,
  @idSpecificationAttribute int,
  @idArea int,
  @idMachineWorkflow int,
  @idMachine int,
  @idMachineWorkflowSequence int,
  @Active Common.TActive = 1) AS
BEGIN

  DECLARE @idTrackingSpecificationAttribute INT;
  SET @idTrackingSpecificationAttribute = [Custom].[FSGetTrackingSpecificationAttributeId](@idTrackingAttribute, @idSpecificationComponentSubType, @idSpecificationAttribute)

  IF (@idTrackingSpecificationAttribute IS NULL)
  BEGIN
    INSERT INTO [Custom].[TrackingSpecificationAttribute] ([idTrackingAttribute], [idSpecificationComponentSubType], [idSpecificationAttribute], [idArea], [idMachineWorkflow], [idMachine], [idMachineWorkflowSequence], [Active])
    VALUES (@idTrackingAttribute, @idSpecificationComponentSubType, @idSpecificationAttribute, @idArea, @idMachineWorkflow, @idMachine, @idMachineWorkflowSequence, @Active);
  END
  ELSE
  BEGIN
    UPDATE [Custom].[TrackingSpecificationAttribute] SET 
      [idTrackingAttribute] = @idTrackingAttribute,
      [idSpecificationComponentSubType] = @idSpecificationComponentSubType,
      [idSpecificationAttribute] = @idSpecificationAttribute,
      [idArea] = @idArea,
      [idMachineWorkflow] = @idMachineWorkflow,
      [idMachine] = @idMachine,
      [idMachineWorkflowSequence] = @idMachineWorkflowSequence,
      [Active] = @Active
    WHERE idTrackingSpecificationAttribute = @idTrackingSpecificationAttribute;
  END;

END