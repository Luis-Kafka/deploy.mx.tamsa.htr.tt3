-------------------------------------------------------------------------
-- CUSTOM get for interruptions close datetimes.
--
CREATE FUNCTION [Custom].[FTInterruptionPluginGetInterruptionsClose]
(
	@IdMachine			INT,
	@HandlingMode		[Common].[TCode],
	@HandshakeCode		[Common].[TCode] = NULL,
	@FromDateTime		[Common].[TDateTime],
	@ToDateTime			[Common].[TDateTime] = NULL
)
RETURNS @Result
TABLE
(
	CloseDateTime				Common.TDateTime,
	idStageHistory				INT NULL,
	idTracking					INT NULL,
	idTrackingPassHistory		INT NULL,
	idCode						INT NULL,
	CycleTime					FLOAT NULL,
	Observations				Common.TDescription NULL
)
AS
BEGIN
	SET @ToDateTime = ISNULL( @ToDateTime, SYSDATETIMEOFFSET() );

	IF @HandlingMode = 'HANDSHAKE'
	BEGIN
		INSERT INTO @Result
		(
			CloseDateTime
		)
		SELECT
			HSH.InsDateTime
		FROM		Handshake.VwComposition C
		JOIN		Handshake.VwHandshakeComposition HC ON C.idComposition = C.idComposition
		JOIN		Handshake.VwHandshake HS ON C.Code = @HandshakeCode AND HC.idHandshakeComposition = HS.idHandshakeComposition AND HS.idMachine = @IdMachine
		JOIN		Handshake.VwHandshakeCompositionHistory HCH ON HCH.idHandshakeComposition = HC.idHandshakeComposition
		JOIN		Handshake.VwHandshakeHistory HSH ON HS.idHandshake = HSH.idHandshake
		WHERE		HSH.InsDateTime BETWEEN @FromDateTime AND @ToDateTime
			AND		HSH.Result > 0
			AND		HCH.CheckMode = 0
		ORDER BY	HSH.InsDateTime ASC;
	END
	ELSE IF @HandlingMode = 'LOAD'
	BEGIN
		INSERT INTO @Result
		(
			CloseDateTime,
			idTracking,
			idTrackingPassHistory
		)
		SELECT
			TPH.BeginDateTime,
			TPH.idTracking,
			TPH.idTrackingPassHistory
		FROM		Production.KeyHistory KH
		JOIN		Production.VWTrackingPassHistory TPH ON TPH.idKeyHistory = KH.idKeyHistory
		LEFT JOIN	Tracking.Tracking TT ON TT.idTracking = TPH.idTracking
		LEFT JOIN	Tracking.TrackingType TTT ON TTT.idTrackingType = TT.idTrackingType
		WHERE		KH.idMachine = @IdMachine
			AND		TPH.BeginDateTime BETWEEN @FromDateTime AND @ToDateTime
			AND		( TTT.Code IS NULL OR TTT.Code IN ( 'Pipe', 'MotherPipe', 'Bar', 'Billet' ) )
		ORDER BY TPH.InsDateTime ASC;
	END
	ELSE IF @HandlingMode = 'COUNT'
	BEGIN
		INSERT INTO @Result
		(
			CloseDateTime,
			idTracking,
			idTrackingPassHistory
		)
		SELECT
			TPH.EndDateTime,
			TPH.idTracking,
			TPH.idTrackingPassHistory
		FROM		Production.KeyHistory KH
		JOIN		Production.VWTrackingPassHistory TPH ON TPH.idKeyHistory = KH.idKeyHistory
		LEFT JOIN	Tracking.Tracking TT ON TT.idTracking = TPH.idTracking
		LEFT JOIN	Tracking.TrackingType TTT ON TTT.idTrackingType = TT.idTrackingType
		WHERE		KH.idMachine = @IdMachine
			AND		TPH.EndDateTime BETWEEN @FromDateTime AND @ToDateTime
			AND		( TTT.Code IS NULL OR TTT.Code IN ( 'Pipe', 'MotherPipe', 'Bar', 'Billet' ) )
		ORDER BY TPH.InsDateTime ASC;
	END;

	RETURN;
END
