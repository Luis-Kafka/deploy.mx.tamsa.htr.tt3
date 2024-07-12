-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED VIEW, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE VIEW [Custom].[VwConfigTrackingSpecificationAttribute]
AS
  SELECT
    [TrackingSpecificationAttribute].[idTrackingSpecificationAttribute] AS [idTrackingSpecificationAttribute],
    [TrackingSpecificationAttribute].[idTrackingAttribute] AS [idTrackingAttribute],
    [TrackingSpecificationAttribute].[idSpecificationComponentSubType] AS [idSpecificationComponentSubType],
    [TrackingSpecificationAttribute].[idSpecificationAttribute] AS [idSpecificationAttribute],
    [TrackingSpecificationAttribute].[idArea] AS [idArea],
    [TrackingSpecificationAttribute].[idMachineWorkflow] AS [idMachineWorkflow],
    [TrackingSpecificationAttribute].[idMachine] AS [idMachine],
    [TrackingSpecificationAttribute].[idMachineWorkflowSequence] AS [idMachineWorkflowSequence],
    [TrackingSpecificationAttribute].[Active] AS [Active]
  FROM [Custom].[TrackingSpecificationAttribute] AS [TrackingSpecificationAttribute];