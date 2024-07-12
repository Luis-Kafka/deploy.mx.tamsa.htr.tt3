-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED VIEW, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE VIEW [Custom].[VwConfigPkTrackingHslColor]
AS
  SELECT
    [TrackingHslColor].[idTrackingHslColor] AS [idTrackingHslColor],
    [TrackingHslColor].[H] AS [H],
    [TrackingHslColor].[S] AS [S],
    [TrackingHslColor].[L] AS [L],
    [TrackingHslColor].[SortOrder] AS [SortOrder]
  FROM [Custom].[TrackingHslColor] AS [TrackingHslColor];
