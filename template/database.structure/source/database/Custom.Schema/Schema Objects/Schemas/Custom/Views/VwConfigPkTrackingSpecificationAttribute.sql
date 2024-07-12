-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED VIEW, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE VIEW [Custom].[VwConfigPkTrackingSpecificationAttribute]
AS
  SELECT
    [TrackingSpecificationAttribute].[idTrackingSpecificationAttribute] AS [idTrackingSpecificationAttribute],
    [TrackingSpecificationAttribute].[idTrackingAttribute] AS [idTrackingAttribute],
    [TrackingSpecificationAttribute].[idSpecificationComponentSubType] AS [idSpecificationComponentSubType],
    [TrackingSpecificationAttribute].[idSpecificationAttribute] AS [idSpecificationAttribute]
  FROM [Custom].[TrackingSpecificationAttribute] AS [TrackingSpecificationAttribute];