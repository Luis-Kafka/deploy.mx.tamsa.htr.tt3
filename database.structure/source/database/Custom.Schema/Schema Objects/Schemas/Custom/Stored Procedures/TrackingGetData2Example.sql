CREATE PROCEDURE [Custom].[TrackingGetData2Example]
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

	@WriteCustom1 INT OUTPUT,
	@WriteCustom2 INT OUTPUT,
	@WriteCustom3 INT OUTPUT,
	@WriteCustom4 INT OUTPUT,
	@WriteCustom5 INT OUTPUT,
	@WriteCustom6 INT OUTPUT,
	@WriteCustom7 INT OUTPUT,
	@WriteCustom8 INT OUTPUT
	
	)
AS
BEGIN
    SET NOCOUNT ON;

	IF (@HandshakeCode IS NULL OR @HandshakeCode='')
	BEGIN
		RAISERROR('A critical error has occured: HandshakeCode is mandatory.', 16, 1)
	END

	
		SET @WriteCustom1 =	91
		SET @WriteCustom2 = 92
		SET @WriteCustom3 = 93
		SET @WriteCustom4 = 94
		SET @WriteCustom5 = 95
		SET @WriteCustom6 = 96
		SET @WriteCustom7 = 97
		SET @WriteCustom8 = 98

		Return 1


-- Define Customs Errors
--      OK = 1
--      SourceZoneEmpty = -3,
--      InvalidIdTracking = -102,
--      InvalidIdTrackingPass = -105,
--      Undefined = Any other value


END;