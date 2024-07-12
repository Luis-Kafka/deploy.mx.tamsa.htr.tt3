

CREATE PROCEDURE [Custom].[TrackingGetTrackingPass]
	@MachineCode Common.TCode,
	@IdTracking INT,
	@IdTrackingPassOut INT OUT,
	@IdTrackingPassMSW INT OUT,
	@IdTrackingPassLSW INT OUT,
	@IdTrackingPassStatusOut INT OUT
AS
BEGIN
	DECLARE @IdMachine INT
	
	SELECT @IdMachine = Common.FSGetIdMachine(@MachineCode)
	
	SELECT @IdTrackingPassOut = ISNULL(idTrackingPassHistory, 0), @IdTrackingPassStatusOut = TP.idItemStatus
	FROM 
		Production.TrackingPassHistory TP WITH(READCOMMITTED)
	INNER JOIN
		Tracking.ItemStatus TS ON TP.idItemStatus = TS.idItemStatus		
	INNER JOIN 
		Production.KeyHistory KH ON TP.idKeyHistory = KH.idKeyHistory
	WHERE 
		TP.idTracking = @IdTracking
	AND
		KH.idMachine = @IdMachine
	AND 
		TP.PassCount = (SELECT MAX(TP2.PassCount) 
						FROM 
							Production.TrackingPassHistory TP2
						INNER JOIN 
							Production.KeyHistory KH2 ON TP2.idKeyHistory = KH2.idKeyHistory
						WHERE 
							TP2.idTracking = @IdTracking
						AND
							KH2.idMachine = @IdMachine)	


	IF (@IdTrackingPassOut IS NOT NULL)
	BEGIN
		EXEC [Common].[ConvertInt32ToInt16] @IdTrackingPassOut, @IdTrackingPassMSW OUT, @IdTrackingPassLSW OUT
	END
	ELSE
	BEGIN
		SET @IdTrackingPassOut= 0
		SET @IdTrackingPassMSW= 0
		SET @IdTrackingPassLSW= 0
	END

	IF (@IdTrackingPassStatusOut IS NOT NULL)
	BEGIN
		IF (@IdTrackingPassStatusOut = Production.FSGetPendingIdItemStatus())
		BEGIN
			SET @IdTrackingPassStatusOut = Production.FSGetGoodIdItemStatus()
		END		
	END
	ELSE
	BEGIN
		SET @IdTrackingPassStatusOut= 0
	END


END