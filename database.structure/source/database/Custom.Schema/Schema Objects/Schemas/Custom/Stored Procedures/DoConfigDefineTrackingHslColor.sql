-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED STORED PROCEDURE, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE PROCEDURE [Custom].[DoConfigDefineTrackingHslColor](
  @H int,
  @S int,
  @L int,
  @SortOrder int,
  @Active Common.TActive = 1) AS
BEGIN

  DECLARE @idTrackingHslColor INT;
  SET @idTrackingHslColor = [Custom].[FSGetTrackingHslColorId](@H, @S, @L, @SortOrder)

  IF (@idTrackingHslColor IS NULL)
  BEGIN
    INSERT INTO [Custom].[TrackingHslColor] ([H], [S], [L], [SortOrder], [Active])
    VALUES (@H, @S, @L, @SortOrder, @Active);
  END
  ELSE
  BEGIN
    UPDATE [Custom].[TrackingHslColor] SET 
      [H] = @H,
      [S] = @S,
      [L] = @L,
      [SortOrder] = @SortOrder,
      [Active] = @Active
    WHERE idTrackingHslColor = @idTrackingHslColor;
  END;

END