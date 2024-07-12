-- WARNING!!!
-- THIS IS AN AUTOMATICALLY CREATED STORED PROCEDURE, ANY MODIFICATION WILL BE OVERRIDEN WHEN REGENERATED.

CREATE PROCEDURE [Custom].[DoConfigDefineTrackingPassAttribute](
  @DataTypeCode [Common].[TCode],
  @Code Common.TCode,
  @Name Common.TName,
  @Description Common.TDescription,
  @DefaultValue sql_variant,
  @InspectionCode nvarchar(200),
  @Active Common.TActive = 1) AS
BEGIN

  DECLARE @idDataType int;
  SET @idDataType = [Common].[FSGetDataTypeId](@DataTypeCode);

  DECLARE @idAttribute INT;
  SET @idAttribute = [Custom].[FSGetTrackingPassAttributeId](@Code, @InspectionCode)

  IF (@idAttribute IS NULL)
  BEGIN
    INSERT INTO [Custom].[TrackingPassAttribute] ([idDataType], [Code], [Name], [Description], [DefaultValue], [InspectionCode], [Active])
    VALUES (@idDataType, @Code, @Name, @Description, @DefaultValue, @InspectionCode, @Active);
  END
  ELSE
  BEGIN
    UPDATE [Custom].[TrackingPassAttribute] SET 
      [idDataType] = @idDataType,
      [Code] = @Code,
      [Name] = @Name,
      [Description] = @Description,
      [DefaultValue] = @DefaultValue,
      [InspectionCode] = @InspectionCode,
      [Active] = @Active
    WHERE idAttribute = @idAttribute;
  END;

END