CREATE PROCEDURE [Custom].[TrackingGetDataExample]
(
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
	@ReadCustom11 INT,
	@ReadCustom12 INT,
	@ReadCustom13 INT,
	@ReadCustom14 INT,
	@ReadCustom15 INT,
	@idTrackingOut INT OUTPUT,
	@idItemStatusOut INT OUTPUT,

	@WriteCustom1 INT OUTPUT,
	@WriteCustom2 INT OUTPUT,
	@WriteCustom3 INT OUTPUT,
	@WriteCustom4 INT OUTPUT,
	@WriteCustom5 INT OUTPUT,
	@WriteCustom6 INT OUTPUT,
	@WriteCustom7 INT OUTPUT,
	@WriteCustom8 INT OUTPUT,
	@WriteCustom9 INT OUTPUT,
	@WriteCustom10 INT OUTPUT,
	@WriteCustom11 INT OUTPUT,
	@WriteCustom12 INT OUTPUT,
	@WriteCustom13 INT OUTPUT,
	@WriteCustom14 INT OUTPUT,
	@WriteCustom15 INT OUTPUT,
	@WriteCustom16 INT OUTPUT
	
	)
AS
BEGIN
    SET NOCOUNT ON;

	RETURN 1
END