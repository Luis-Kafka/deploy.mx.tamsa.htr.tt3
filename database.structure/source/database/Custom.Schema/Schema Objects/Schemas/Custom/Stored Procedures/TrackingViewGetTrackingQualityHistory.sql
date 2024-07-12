-- =============================================
-- Author:		Michele Vai
-- ALTER date: 09/05/2013
-- Description:	Get quality history given tracking
-- =============================================
--Returns data needed by custom dialog of TrackingView. The format of the result depends on how the custom dialog expects it.
CREATE PROCEDURE [Custom].[TrackingViewGetTrackingQualityHistory]
	@IdTracking int
AS
BEGIN
	--data visible into markpipe plugin change as you want
	SELECT C.Code AS 'Code', 
	--C.Name , 
	C.[Description] 'Description',
	ISNULL(IST.[Description],'') AS 'Status',
	M.[Description] AS 'Machine',
	H.IsMain 'isMain', 
	H.Observation 'Comment'
	FROM Production.VWTrackingPassHistory TPH
	JOIN Quality.VWHistory H ON TPH.idTrackingPassHistory= H.idTrackingPassHistory AND 
								TPH.idTracking = @IdTracking
	JOIN Quality.VWCode C ON H.idCode = C.idCode
	JOIN Quality.VWCodeMachine CM ON C.idCode= CM.idCode
	JOIN Common.VWMachine M ON M.idMachine = CM.idMachine
	JOIN Production.VWKeyHistory KH ON TPH.idKeyHistory = KH.idKeyHistory AND M.idMachine= KH.idMachine
	LEFT JOIN Quality.VwDestination D ON D.idDestination = H.idDestination
	LEFT JOIN Tracking.VWItemStatus IST ON IST.idItemStatus=D.idItemStatus

END