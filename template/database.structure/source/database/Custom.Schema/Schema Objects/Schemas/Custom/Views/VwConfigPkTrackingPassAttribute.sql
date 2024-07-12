-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED VIEW, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE VIEW [Custom].[VwConfigPkTrackingPassAttribute]
AS
  SELECT
    [TrackingPassAttribute].[idAttribute] AS [idAttribute],
    [TrackingPassAttribute].[Code] AS [Code],
    [TrackingPassAttribute].[InspectionCode] AS [InspectionCode]
  FROM [Custom].[TrackingPassAttribute] AS [TrackingPassAttribute];