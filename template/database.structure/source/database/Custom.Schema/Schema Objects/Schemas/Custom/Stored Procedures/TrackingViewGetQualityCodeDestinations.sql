CREATE PROCEDURE [Custom].[TrackingViewGetQualityCodeDestinations]
	@idCode AS INT
AS
BEGIN

	SELECT CD.idCode, CD.idDestination, D.Code, D.Name, D.[Description], D.idItemStatus
	FROM Quality.VwCodeDestination CD
		INNER JOIN Quality.VwCode C ON CD.idCode = C.idCode
		INNER JOIN Quality.VwDestination D ON CD.idDestination = D.idDestination
	WHERE CD.idCode = @idCode

END