-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED VIEW, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE VIEW [Custom].[VwConfigTrackingHslColor]
AS
  SELECT
    [TrackingHslColor].[idTrackingHslColor] AS [idTrackingHslColor],
    [TrackingHslColor].[H] AS [H],
    [TrackingHslColor].[S] AS [S],
    [TrackingHslColor].[L] AS [L],
    [TrackingHslColor].[SortOrder] AS [SortOrder],
    [TrackingHslColor].[Active] AS [Active]
  FROM [Custom].[TrackingHslColor] AS [TrackingHslColor];


GO
