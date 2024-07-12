-- IdProductionHistoryOut must be set.
CREATE PROCEDURE [Custom].[TrackingGetProductionHistory]
(
	@idTrackingParent INT,
	@idTrackingType INT,
	@handshakeCode Common.TCode,
	@idProductionHistory INT,
	@traceabilityNumber INT,
	@traceabilitySubNumber INT,
	@traceabilityCode NVARCHAR(MAX) = NULL,
	@traceabilitySubCode NVARCHAR(MAX) = NULL,
	@idItemStatus INT,
	@idCreationType INT,
	@isInverted BIT,
	@customRD01 INT,
	@customRD02 INT,
	@customRD03 INT,
	@customRD04 INT,
	@customRD05 INT,
	@customRD06 INT,
	@idProductionHistoryOut INT OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON;

	IF @customRD03 <> 0 OR @customRD04 <> 0
	BEGIN
		-- ProductionId is received through custom parameters from Entry manager
		EXEC [Common].[ConvertInt16ToInt32]	@customRD03, @customRD04, @Int32 = @idProductionHistoryOut OUTPUT
	END
 	ELSE IF ISNULL(@idProductionHistory, 0) = 0 
	BEGIN		
		-- Determine active ProductionId for given machine
		DECLARE @idStatusActive int = Common.FSGetIdStatus('Active')
				
		SELECT @idProductionHistoryOut = K.idProductionHistory
		FROM Handshake.VwHandshake HS
		JOIN Production.KeyHistory K ON HS.idMachine = k.idMachine
		WHERE HS.Code = @handshakeCode AND idStatus = @idStatusActive
									
		IF @@ROWCOUNT = 0
		BEGIN
			-- If no active production is found, return with error code
			RETURN -6
		END 				
	END
	ELSE
	BEGIN
		-- Default to ProductionId received as input parameter
		SET @idProductionHistoryOut = @idProductionHistory		
	END

END;