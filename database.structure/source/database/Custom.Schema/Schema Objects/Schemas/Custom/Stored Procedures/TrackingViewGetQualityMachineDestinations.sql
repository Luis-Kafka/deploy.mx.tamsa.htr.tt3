CREATE PROCEDURE [Custom].[TrackingViewGetQualityMachineDestinations]
	@idMachine AS INT
AS
BEGIN

	SELECT DISTINCT CD.idCode, CD.idDestination, D.Code, D.Name, D.[Description], D.idItemStatus
	FROM Quality.VwCodeDestination CD
		INNER JOIN Quality.VwCode C ON CD.idCode = C.idCode
		INNER JOIN Quality.VwDestination D ON CD.idDestination = D.idDestination
		INNER JOIN  Quality.VwCodeMachine CM ON CM.idCode = C.idCode
	WHERE CM.idMachine = @idMachine

END