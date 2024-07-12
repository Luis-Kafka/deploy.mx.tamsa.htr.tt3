CREATE PROCEDURE [Custom].[InsTrackingPassAttributeHistory](
	  @idTrackingPass INT
	, @Attribute Common.TCode
	, @Value SQL_VARIANT
)AS
BEGIN
	SET NOCOUNT ON;

	if @idTrackingPass is null or @idTrackingPass = 0
		return
 
	DECLARE @idAttributeHistory int
	DECLARE @idAttribute int

	SELECT @idAttribute = idAttribute FROM Custom.TrackingPassAttribute wHERE Code = @Attribute
 
	IF (@idAttribute IS NOT NULL AND @idAttribute > 0)
	BEGIN
		UPDATE [Custom].[TrackingPassAttributeHistory] WITH (TABLOCKX)
		SET Active = 0
		WHERE idTrackingPass = @idTrackingPass AND idAttribute = @idAttribute

		INSERT INTO [Custom].[TrackingPassAttributeHistory] WITH (TABLOCKX) (idTrackingPass, idAttribute, Value)
		VALUES (@idTrackingPass, @idAttribute, @Value);

		SET @idAttributeHistory = SCOPE_IDENTITY();
	END

END