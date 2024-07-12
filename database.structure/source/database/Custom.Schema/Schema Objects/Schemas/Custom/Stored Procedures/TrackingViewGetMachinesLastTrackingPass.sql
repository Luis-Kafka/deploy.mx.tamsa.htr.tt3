-- =============================================
-- Author:		Michele Vai
-- ALTER date: 12/05/2013
-- Description:	Get last trackingpass for all machine with a trackingpass from given tracking
-- =============================================
--Returns data needed by custom dialog of TrackingView. The format of the result depends on how the custom dialog expects it.
CREATE PROCEDURE [Custom].[TrackingViewGetMachinesLastTrackingPass]
	@IdTracking int
AS
BEGIN
	
	WITH MaxTrackingPass AS (
    SELECT TPH.idTrackingPassHistory , 
			KH.idMAchine,
           ROW_NUMBER() OVER(PARTITION BY KH.idMachine
                                 ORDER BY TPH.InsDateTime DESC) AS rk
      FROM Production.VWTrackingPassHistory TPH
	JOIN Production.VWKeyHistory KH ON TPH.idKeyHistory = KH.idKeyHistory
	WHERE  TPH.idTracking = @IdTracking
	)
      

	SELECT A.idTrackingPassHistory, A.idMachine
	FROM MaxTrackingPass A
	WHERE A.rk = 1

END