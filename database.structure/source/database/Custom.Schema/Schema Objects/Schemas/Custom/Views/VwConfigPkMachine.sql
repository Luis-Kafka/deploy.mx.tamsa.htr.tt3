-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED VIEW, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE VIEW [Custom].[VwConfigPkMachine]
AS
  SELECT
    [Machine].[idMachine] AS [idMachine],
    [MachineVwConfigPkMachine].[MachineCode] AS [MachineMachineCode]
  FROM [Custom].[Machine] AS [Machine]
    LEFT JOIN [Production].[VwConfigPkMachine] AS [MachineVwConfigPkMachine] ON [MachineVwConfigPkMachine].[idMachine] = [Machine].[idMachine];