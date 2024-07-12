-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED STORED PROCEDURE, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE PROCEDURE [Custom].[DoConfigDefineTrackingZone](
  @ZoneCode [Common].[TCode],
  @DenyItemStatusChange bit) AS
BEGIN

  DECLARE @idZone int;
  SET @idZone = [Tracking].[FSGetZoneId](@ZoneCode);

  IF NOT EXISTS (SELECT 1 FROM [Custom].[TrackingZone] WHERE idZone = @idZone)
  BEGIN
    INSERT INTO [Custom].[TrackingZone] ([idZone], [DenyItemStatusChange])
    VALUES (@idZone, @DenyItemStatusChange);
  END
  ELSE
  BEGIN
    UPDATE [Custom].[TrackingZone] SET 
      [DenyItemStatusChange] = @DenyItemStatusChange
    WHERE idZone = @idZone;
  END;

END