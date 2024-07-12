-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED FUNCTION, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE FUNCTION [Custom].[FSGetQualityRequiredApplicationId](@MachineCode [Common].[TCode], @ApplicationCode [Common].[TCode])
RETURNS INT AS
BEGIN

  DECLARE @Id INT = NULL;

  SELECT 
    @Id = [idQualityRequiredApplication]
  FROM [Custom].[QualityRequiredApplication]
  WHERE
	((COALESCE(NULL, @MachineCode) IS NULL AND [idMachine] IS NULL) OR ([idMachine] = [Common].[FSGetMachineId](@MachineCode))) AND
	((COALESCE(NULL, @ApplicationCode) IS NULL AND [idApplication] IS NULL) OR ([idApplication] = [Common].[FSGetApplicationId](@ApplicationCode)));

  RETURN @Id;

END