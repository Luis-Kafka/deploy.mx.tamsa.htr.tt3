-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED VIEW, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE VIEW [Custom].[VwConfigTrackingPassAttribute]
AS
  SELECT
    [TrackingPassAttribute].[idAttribute] AS [idAttribute],
    [DataTypeVwConfigPkDataType].[Code] AS [DataTypeCode],
    [TrackingPassAttribute].[Code] AS [Code],
    [TrackingPassAttribute].[Name] AS [Name],
    [TrackingPassAttribute].[Description] AS [Description],
    [TrackingPassAttribute].[DefaultValue] AS [DefaultValue],
    [TrackingPassAttribute].[InspectionCode] AS [InspectionCode],
    [TrackingPassAttribute].[Active] AS [Active]
  FROM [Custom].[TrackingPassAttribute] AS [TrackingPassAttribute]
    LEFT JOIN [Common].[VwConfigPkDataType] AS [DataTypeVwConfigPkDataType] ON [DataTypeVwConfigPkDataType].[idDataType] = [TrackingPassAttribute].[idDataType];