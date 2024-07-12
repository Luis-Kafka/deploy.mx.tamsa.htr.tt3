CREATE PROCEDURE [Custom].[TrackingGetDataEx2Example]
	@HandshakeCode Common.TCode,
	@idTracking INT,
	@idTrackingPass INT,
	@ReadCustom1 INT,
	@ReadCustom2 INT,
	@ReadCustom3 INT,
	@ReadCustom4 INT, 
	@ReadCustom5 INT,
	@ReadCustom6 INT,
	@ReadCustom7 INT,
	@ReadCustom8 INT,
	@ReadCustom9 INT,
	@ReadCustom10 INT,

	@WriteCustom1 INT OUTPUT,
	@WriteCustom2 INT OUTPUT,
	@WriteCustom3 INT OUTPUT,
	@WriteCustom4 INT OUTPUT,
	@WriteCustom5 INT OUTPUT,
	@WriteCustom6 INT OUTPUT,
	@WriteCustom7 INT OUTPUT,
	@WriteCustom8 INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE 
	@StatusId int, 
	@StatusIdWarned int = Tracking.FSGetIdItemStatus('Warned'),
	@StatusIdRejected int = Tracking.FSGetIdItemStatus('Rejected'),
	@IdTrackingPassOut int,
	@IdTrackingPassStatusOut int
	
	IF (@HandshakeCode IS NULL OR @HandshakeCode='')
	BEGIN
		RAISERROR('A critical error has occured: HandshakeCode is mandatory.', 16, 1)
	END
	
	IF (@idTracking IS NULL OR @idTracking='')
	BEGIN
		RAISERROR('A critical error has occured: IdTracking is mandatory.', 16, 1)
	END

	EXEC [Custom].[TrackingGetTrackingPass] 'TORNO1',@idTracking, @IdTrackingPassOut OUT, @WriteCustom2 OUT, @WriteCustom3 OUT, @IdTrackingPassStatusOut OUT
		

	--If (@IdTrackingPassStatusOut = @StatusIdWarned) or (@IdTrackingPassStatusOut = @StatusIdRejected)
	--BEGIN
	--	SET @WriteCustom1 = 1  --> byPass
	--END
	--ELSE
	--BEGIN 
	--	SET @WriteCustom1 = 0  --> Produccion normal
	--END

	RETURN 1
END
