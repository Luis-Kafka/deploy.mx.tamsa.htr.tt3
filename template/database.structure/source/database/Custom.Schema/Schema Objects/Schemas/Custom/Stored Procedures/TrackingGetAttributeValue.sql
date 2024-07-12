

CREATE PROCEDURE [Custom].[TrackingGetAttributeValue]
	@IdTracking INT,
	@AttributeCode Common.TCode,
	@AttributeValue SQL_VARIANT OUT
AS
BEGIN
	IF (@AttributeCode IS NULL OR @AttributeCode = '')
	BEGIN
		RAISERROR('A critical error has occured: AttributeCode is mandatory.', 16, 1)
	END

	DECLARE @idAttribute INT = NULL

	SELECT @idAttribute = idAttribute FROM Tracking.Attribute WHERE Code = @AttributeCode

	IF (@idAttribute IS NULL)
	BEGIN
		RAISERROR('A critical error has occured: AttributeCode does not exist.', 16, 1)
	END

	SELECT TOP 1 @AttributeValue = Value FROM Tracking.AttributeHistory 
	WHERE 
		idTracking = @IdTracking 
	AND 
		idAttribute = @idAttribute
	ORDER BY InsDateTime DESC
	
	RETURN 1
END