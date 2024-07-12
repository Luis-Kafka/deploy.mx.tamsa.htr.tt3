CREATE PROCEDURE [Custom].[TrackingViewGetTechAlarms]
	@idtracking INT
AS
BEGIN
	SET NOCOUNT ON;	
		
	SELECT
	     A.idAlarm
		,A.[Code]
		,A.[Name]
		,A.[Description]
		,M.Code AS MachineCode
		,A.SeverityCode AS [Priority]
		,H.idHistory
		,G.Code AS GroupType
		,H.idKeyHistory
		,H.idTracking
		,H.idTrackingPassHistory
		,TT.TraceabilityCode AS TraceabilityNumber
		,SOHC.OrderNumber
		,SHHC.HeatNumber
		,H.idAcknowledgeUser AS idUser
		,H.ActivationDateTime
		,H.DeactivationDateTime
		,H.AcknowledgeDateTime
		,H.ActivationXValue
		,H.DeactivationXValue
		,H.ActivationTagValue
		,H.DeactivationTagValue
		,H.MinTagValue
		,H.MaxTagValue
		,H.AvgTagValue
		,H.UpperThreshold
		,H.LowerThreshold
		,H.DeadBand
		,H.Comment AS JustificationComment		  
		,J.idJustification AS AlarmJustification_idJustification
		,J.Code AS AlarmJustification_Code
		,J.Name AS AlarmJustification_Name
		,J.Description AS AlarmJustification_Description
		,J.QualificationRequired AS AlarmJustification_QualificationRequired
		,J.idItemStatus AS AlarmJustification_IdItemStatus					
		FROM 
			TechAlarm.VwActiveAlarm A
			INNER JOIN Common.VwMachine M ON A.idMachine = M.idMachine		
			INNER JOIN TechAlarm.History H ON H.idAlarm = A.idAlarm
			LEFT JOIN Production.TrackingPassHistory TPH ON TPH.idTrackingPassHistory = H.idTrackingPassHistory
			LEFT JOIN Production.KeyHistory PKH ON PKH.idKeyHistory = TPH.idKeyHistory
			LEFT JOIN Production.BatchHistory BH ON PKH.idProductionHistory = BH.idBatchHistory
			LEFT JOIN Custom.VwSpecificationOrderHistoryComplete SOHC ON SOHC.idSpecification = BH.idSpecification
			LEFT JOIN Custom.VwSpecificationHeatHistoryComplete SHHC ON SHHC.idSpecification = BH.idSpecification
			LEFT JOIN Tracking.Tracking TT ON TT.idTracking = H.idTracking
			LEFT JOIN TechAlarm.VwGroupType G on G.idGroupType = H.idGroupType 
			LEFT JOIN TechAlarm.VwJustification J on H.idJustification = J.idJustification
		WHERE 
			TPH.idTracking = @idtracking
		ORDER BY H.idHistory DESC
		 
END