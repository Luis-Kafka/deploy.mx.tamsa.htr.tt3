-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED VIEW, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE VIEW [Custom].[VwConfigPkTrackingZone]
AS
  SELECT
    [TrackingZone].[idZone] AS [idZone],
    [ZoneVwConfigPkZone].[Code] AS [ZoneCode]
  FROM [Custom].[TrackingZone] AS [TrackingZone]
    LEFT JOIN [Tracking].[VwConfigPkZone] AS [ZoneVwConfigPkZone] ON [ZoneVwConfigPkZone].[idZone] = [TrackingZone].[idZone];