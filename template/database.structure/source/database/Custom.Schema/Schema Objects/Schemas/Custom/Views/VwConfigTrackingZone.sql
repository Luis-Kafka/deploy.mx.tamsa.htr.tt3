-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED VIEW, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE VIEW [Custom].[VwConfigTrackingZone]
AS
  SELECT
    [TrackingZone].[idZone] AS [idZone],
    [ZoneVwConfigPkZone].[Code] AS [ZoneCode],
    [TrackingZone].[DenyItemStatusChange] AS [DenyItemStatusChange]
  FROM [Custom].[TrackingZone] AS [TrackingZone]
    LEFT JOIN [Tracking].[VwConfigPkZone] AS [ZoneVwConfigPkZone] ON [ZoneVwConfigPkZone].[idZone] = [TrackingZone].[idZone];