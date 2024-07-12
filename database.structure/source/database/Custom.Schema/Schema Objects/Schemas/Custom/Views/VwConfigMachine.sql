-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED VIEW, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE VIEW [Custom].[VwConfigMachine]
AS
  SELECT
    [Machine].[idMachine] AS [idMachine],
    [MachineVwConfigPkMachine].[MachineCode] AS [MachineMachineCode],
    [Machine].[ProductionSortOrder] AS [ProductionSortOrder]
  FROM [Custom].[Machine] AS [Machine]
    LEFT JOIN [Production].[VwConfigPkMachine] AS [MachineVwConfigPkMachine] ON [MachineVwConfigPkMachine].[idMachine] = [Machine].[idMachine];