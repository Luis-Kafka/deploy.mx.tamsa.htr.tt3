-- IdItemStatusOut must be set.
CREATE PROCEDURE [Custom].[TrackingGetItemStatus]
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
	@idItemStatusOut INT OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON;

	-- ALTER Trackings with initial status PENDING
	SET @idItemStatusOut = [Tracking].[FSGetIdItemStatus]('Pending')

END;