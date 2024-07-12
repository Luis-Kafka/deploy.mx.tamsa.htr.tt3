-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED VIEW, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE VIEW [Custom].[VwConfigQualityRequiredApplication]
AS
  SELECT
    [QualityRequiredApplication].[idQualityRequiredApplication] AS [idQualityRequiredApplication],
    [MachineVwConfigPkMachine].[Code] AS [MachineCode],
    [ApplicationVwConfigPkApplication].[Code] AS [ApplicationCode],
    [QualityRequiredApplication].[Active] AS [Active]
  FROM [Custom].[QualityRequiredApplication] AS [QualityRequiredApplication]
    LEFT JOIN [Common].[VwConfigPkMachine] AS [MachineVwConfigPkMachine] ON [MachineVwConfigPkMachine].[idMachine] = [QualityRequiredApplication].[idMachine]
    LEFT JOIN [Common].[VwConfigPkApplication] AS [ApplicationVwConfigPkApplication] ON [ApplicationVwConfigPkApplication].[idApplication] = [QualityRequiredApplication].[idApplication];