CREATE PROCEDURE [Custom].[TechAlarmGetQualityCodes]
	@TrackingPasses [Custom].[TTrackingPass] READONLY
AS
BEGIN

	--[ Assigned defect: Only one may be selected by default ]----------

	SELECT 
		QH.idTrackingPassHistory AS idTrackingPass,
		QH.idApplication AS idApplication,
		QC.[idCode], 
		QC.[Code], 
		QC.[Name],
		1 AS Priority,
		'[' + QC.[Code] + '] ' + QC.[Description] AS [Description],
		A.Name as Application,
		Qh.Observation,
		1 AS [IsSelected]
	FROM 
		Quality.VWHistory QH 
	INNER JOIN 
		@TrackingPasses TP ON QH.idTrackingPassHistory = TP.idTrackingPassHistory
	INNER JOIN 
		Quality.Code QC ON QC.idCode = QH.idCode
	left join 
		common.application A on a.idApplication = QH.idApplication
	WHERE
	 IsMain = 1

	 --[ Main defect: Only one may be selected by default ]----------
	select 
		NULL AS idTrackingPass,
		NULL AS idApplication,
		'' as Application,
		c.idCode
		,c.Code
		,c.Name
		,0 Priority
		,'[' + c.Code + '] ' + c.[Description] as [Description]
		,0 as IsSelected
		
	from Quality.VwCode c
		inner join Quality.VwCodeMachine cm on cm.idCode = c.idCode
		inner join Common.VwMachine m on m.idMachine = cm.idMachine


	--[ Se	condary defects: None or many can be selected by default ]----------
	
	SELECT DISTINCT
		NULL AS idTrackingPass,
		NULL AS idApplication,
		'' as Application,
		C.[idCode], 
		C.[Code], 
		C.[Name], 
		'[' + C.[Code] + '] ' + C.[Description] AS [Description],
		'' as Applcation,
		0 AS [IsSelected]
	from Quality.VwCode c
		inner join Quality.VwCodeMachine cm on cm.idCode = c.idCode
		inner join Common.VwMachine m on m.idMachine = cm.idMachine
	
END