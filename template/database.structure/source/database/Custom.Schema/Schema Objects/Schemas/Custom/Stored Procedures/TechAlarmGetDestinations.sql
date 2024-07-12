CREATE PROCEDURE [Custom].[TechAlarmGetDestinations]
	@IdTrackingPass INT
	,@IdCode INT	
AS
BEGIN
	

	SELECT DISTINCT 
		d.idDestination AS idCode
		,d.Code
		,d.Name
		,d.[Description]
		,0 IsSelected
		,d.idItemStatus
	FROM
		Quality.VwDestination d
		INNER JOIN Quality.VwCodeDestination cd ON cd.idDestination = d.idDestination
	WHERE
		cd.idCode = @IdCode

END