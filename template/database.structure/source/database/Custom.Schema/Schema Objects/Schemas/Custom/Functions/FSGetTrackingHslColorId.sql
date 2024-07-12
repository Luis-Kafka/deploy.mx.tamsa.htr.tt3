-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED FUNCTION, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE FUNCTION [Custom].[FSGetTrackingHslColorId](@H int, @S int, @L int, @SortOrder int)
RETURNS INT AS
BEGIN

  DECLARE @Id INT = NULL;

  SELECT 
    @Id = [idTrackingHslColor]
  FROM [Custom].[TrackingHslColor]
  WHERE
	((@H IS NULL AND [H] IS NULL) OR ([H] = @H)) AND
	((@S IS NULL AND [S] IS NULL) OR ([S] = @S)) AND
	((@L IS NULL AND [L] IS NULL) OR ([L] = @L)) AND
	((@SortOrder IS NULL AND [SortOrder] IS NULL) OR ([SortOrder] = @SortOrder));

  RETURN @Id;

END
