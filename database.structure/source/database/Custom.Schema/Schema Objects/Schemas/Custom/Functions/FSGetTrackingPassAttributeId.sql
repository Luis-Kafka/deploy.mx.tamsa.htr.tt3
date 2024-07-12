-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED FUNCTION, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE FUNCTION [Custom].[FSGetTrackingPassAttributeId](@Code Common.TCode, @InspectionCode nvarchar(200))
RETURNS INT AS
BEGIN

  DECLARE @Id INT = NULL;

  SELECT 
    @Id = [idAttribute]
  FROM [Custom].[TrackingPassAttribute]
  WHERE
	((@Code IS NULL AND [Code] IS NULL) OR ([Code] = @Code)) AND
	((@InspectionCode IS NULL AND [InspectionCode] IS NULL) OR ([InspectionCode] = @InspectionCode));

  RETURN @Id;

END