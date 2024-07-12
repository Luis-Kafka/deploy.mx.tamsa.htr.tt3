CREATE PROCEDURE [Custom].[TrackingViewGetQualityMachines]
AS
BEGIN

	SELECT DISTINCT m.idMachine,m.Code,m.Name
	FROM Quality.CodeMachine cm
	INNER JOIN Common.Machine m ON m.idMachine = cm.idMachine

END