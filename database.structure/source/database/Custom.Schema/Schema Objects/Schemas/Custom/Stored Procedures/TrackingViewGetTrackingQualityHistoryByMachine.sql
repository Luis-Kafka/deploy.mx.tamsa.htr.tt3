CREATE PROCEDURE [Custom].[TrackingViewGetTrackingQualityHistoryByMachine]
	@idTracking INT,
	@idMachine INT
AS
BEGIN

	SELECT H.idHistory,
		TPH.idTracking,
		TPH.idTrackingPassHistory,
		C.idCode,
		CM.idMachine,
		A.idApplication,
		A.Code AS ApplicationCode,
		A.Name AS ApplicationName,
		ISNULL(U.idUser, 0) AS idUser,
		ISNULL(U.Identification, '') AS UserIdentification,
		ISNULL(U.FirstName + ISNULL(' ' + U.LastName, ''), ISNULL(U.Identification, '')) AS UserName,
		C.Code AS QualityCode, 
		C.Name AS QualityName, 
		C.[Description] AS QualityDescription,
		ISNULL(D.idDestination, 0) AS idDestination,
		ISNULL(D.Code, '') AS DestinationCode,
		ISNULL(D.Name, '') AS DestinationName,
		ISNULL(D.[Description], '') AS DestinationDescription,
		ISNULL(IST.idItemStatus, 0) AS idItemStatus,
		H.IsMain,
		H.Observation,
		H.InsDateTime AS QualificationDateTime
	FROM Production.VWTrackingPassHistory TPH
		INNER JOIN Production.VwKeyHistory KH ON TPH.idKeyHistory = KH.idKeyHistory
		INNER JOIN Quality.VWHistory H ON H.idTrackingPassHistory = TPH.idTrackingPassHistory
		LEFT JOIN [Security].[User] U ON H.idUser = U.idUser
		INNER JOIN Common.VwApplication A ON H.idApplication = A.idApplication
		INNER JOIN Quality.VWCode C ON H.idCode = C.idCode
		INNER JOIN Quality.VWCodeMachine CM ON C.idCode= CM.idCode AND CM.idMachine = KH.idMachine
		LEFT JOIN Quality.VwCodeDestination CD ON C.idCode = CD.idCode AND H.idDestination = CD.idDestination
		LEFT JOIN Quality.VwDestination D ON CD.idDestination = D.idDestination
		LEFT JOIN Tracking.VWItemStatus IST ON D.idItemStatus = IST.idItemStatus
	WHERE TPH.idTracking = @idTracking
		AND KH.idMachine = @idMachine
	ORDER BY H.IsMain DESC, H.idApplication, H.InsDateTime DESC

END