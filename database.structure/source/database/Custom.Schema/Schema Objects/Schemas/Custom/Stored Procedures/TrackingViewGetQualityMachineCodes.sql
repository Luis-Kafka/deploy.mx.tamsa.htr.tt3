CREATE PROCEDURE [Custom].[TrackingViewGetQualityMachineCodes]
	@idMachine AS INT
AS
BEGIN

	SELECT CM.idCodeMachine, CM.idCode, CM.idMachine, C.Code, C.Name, C.[Description], C.ElaborationStatus
	FROM Quality.VwCodeMachine CM
		INNER JOIN Quality.VwCode C ON CM.idCode = C.idCode
	WHERE idMachine = @idMachine

END