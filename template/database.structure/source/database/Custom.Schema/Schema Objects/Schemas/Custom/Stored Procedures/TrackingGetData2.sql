CREATE PROCEDURE [Custom].[TrackingGetData2]
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

	IF (@HandshakeCode IS NULL OR @HandshakeCode='')
	BEGIN
		RAISERROR('A critical error has occured: HandshakeCode is mandatory.', 16, 1)
	END

	RETURN 1
END