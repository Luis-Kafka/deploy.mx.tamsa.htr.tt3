CREATE FUNCTION [Custom].[PresetFSGetPresetSQLExpression]
(
	@catalogValue NVARCHAR(MAX),
	@defaultValue NVARCHAR(MAX),
	@specificationValues Custom.TPresetSpecificationAttributeValue READONLY
)
RETURNS NVARCHAR(MAX)
AS
BEGIN

	DECLARE @result NVARCHAR(MAX) = @catalogValue
	DECLARE @idxSubTypeStart INT= CHARINDEX('[', @catalogValue), @idxSubTypeEnd INT, @idxAttributeStart INT, @idxAttributeEnd INT
	DECLARE @attributeValue Common.TDescription
	
	WHILE @idxSubTypeStart <> 0
	BEGIN
		SET @idxSubTypeEnd = CHARINDEX(']', @catalogValue, @idxSubTypeStart + 1)
		SET @idxAttributeStart = CHARINDEX('[', @catalogValue, @idxSubTypeStart + 1)
		SET @idxAttributeEnd = CHARINDEX(']', @catalogValue, @idxAttributeStart + 1)
		SET @attributeValue = null

		IF 
			(@idxSubTypeEnd = 0) OR
			(@idxAttributeStart = 0) OR
			(@idxAttributeEnd = 0) OR
			(@idxAttributeStart < @idxSubTypeEnd) OR 
			((@idxSubTypeEnd + 2) <> @idxAttributeStart)
		BEGIN
			-- ERROR: Bad Formed expression for catalog value
			RETURN NULL;
		END

		DECLARE @varName NVARCHAR(MAX) = SUBSTRING(@catalogValue, @idxSubTypeStart, @idxAttributeEnd - @idxSubTypeStart + 1)
		DECLARE @componentSubTypeCode NVARCHAR(MAX) = SUBSTRING(@catalogValue, @idxSubTypeStart + 1, @idxSubTypeEnd - @idxSubTypeStart-1)
		DECLARE @attributeCode NVARCHAR(MAX) = SUBSTRING(@catalogValue, @idxAttributeStart + 1, @idxAttributeEnd - @idxAttributeStart-1)

		SELECT @attributeValue = SpecificationValue
		FROM @specificationValues
		WHERE AttributeCode = @attributeCode AND ComponentSubTypeCode = @componentSubTypeCode

		IF (@attributeValue IS NULL)
		BEGIN
			-- ERROR: No specification value available for given attribute
			RETURN NULL;
		END
	
		SET @result = REPLACE(@result, @varName, @attributeValue)

		SET @idxSubTypeStart = CHARINDEX('[', @catalogValue, @idxAttributeEnd + 1)
	END

	IF @result IS NULL OR LEN(@result) = 0
	BEGIN
		RETURN @defaultValue
	END
	
	RETURN @result
	
END