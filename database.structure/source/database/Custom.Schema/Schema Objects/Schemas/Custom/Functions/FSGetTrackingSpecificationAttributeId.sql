-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED FUNCTION, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE FUNCTION [Custom].[FSGetTrackingSpecificationAttributeId](@idTrackingAttribute int, @idSpecificationComponentSubType int, @idSpecificationAttribute int)
RETURNS INT AS
BEGIN

  DECLARE @Id INT = NULL;

  SELECT 
    @Id = [idTrackingSpecificationAttribute]
  FROM [Custom].[TrackingSpecificationAttribute]
  WHERE
	((@idTrackingAttribute IS NULL AND [idTrackingAttribute] IS NULL) OR ([idTrackingAttribute] = @idTrackingAttribute)) AND
	((@idSpecificationComponentSubType IS NULL AND [idSpecificationComponentSubType] IS NULL) OR ([idSpecificationComponentSubType] = @idSpecificationComponentSubType)) AND
	((@idSpecificationAttribute IS NULL AND [idSpecificationAttribute] IS NULL) OR ([idSpecificationAttribute] = @idSpecificationAttribute));

  RETURN @Id;

END