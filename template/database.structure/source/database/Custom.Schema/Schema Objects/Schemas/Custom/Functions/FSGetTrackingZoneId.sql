-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED FUNCTION, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE FUNCTION [Custom].[FSGetTrackingZoneId](@ZoneCode [Common].[TCode])
RETURNS INT AS
BEGIN

  DECLARE @Id INT = NULL;

  SELECT 
    @Id = [idZone]
  FROM [Custom].[TrackingZone]
  WHERE
	((COALESCE(NULL, @ZoneCode) IS NULL AND [idZone] IS NULL) OR ([idZone] = [Tracking].[FSGetZoneId](@ZoneCode)));

  RETURN @Id;

END