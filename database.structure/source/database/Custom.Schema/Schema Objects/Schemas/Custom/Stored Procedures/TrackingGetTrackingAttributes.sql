CREATE PROCEDURE [Custom].[TrackingGetTrackingAttributes]
(
	@idTrackingParent INT,
	@idTrackingType INT,
	@handshakeCode Common.TCode,
	@idProductionHistory INT,
	@traceabilityNumber INT,
	@traceabilitySubNumber INT,
	@traceabilityCode NVARCHAR(MAX),
	@traceabilitySubCode NVARCHAR(MAX),
	@idItemStatus INT,
	@idCreationType INT,
	@isInverted BIT,
	@customRD01 INT,
	@customRD02 INT,
	@customRD03 INT,
	@customRD04 INT,
	@customRD05 INT,
	@customRD06 INT,
	@idTracking INT
)
AS
BEGIN
    SET NOCOUNT ON;

	DECLARE @AttributeValues TABLE
	(
		AttributeCode NVARCHAR(50),
		AttributeValue SQL_VARIANT
	)

	--Specification Attributes
	INSERT INTO @AttributeValues(AttributeCode, AttributeValue)
	EXEC [Custom].[TrackingGetSpecificationAttributes] 	@idTrackingParent,
														@idTrackingType,
														@handshakeCode,
														@idProductionHistory,
														@traceabilityNumber,
														@traceabilitySubNumber,
														@traceabilityCode,
														@traceabilitySubCode,
														@idItemStatus,
														@idCreationType,
														@isInverted,
														@customRD01,
														@customRD02,
														@customRD03,
														@customRD04,
														@customRD05,
														@customRD06,
														@idTracking

	--Color Attribute
	INSERT INTO @AttributeValues(AttributeCode, AttributeValue)
	EXEC [Custom].[TrackingGetHslColorAttribute] 		@idTrackingParent,
														@idTrackingType,
														@handshakeCode,
														@idProductionHistory,
														@traceabilityNumber,
														@traceabilitySubNumber,
														@traceabilityCode,
														@traceabilitySubCode,
														@idItemStatus,
														@idCreationType,
														@isInverted,
														@customRD01,
														@customRD02,
														@customRD03,
														@customRD04,
														@customRD05,
														@customRD06,
														@idTracking

	INSERT INTO @AttributeValues(AttributeCode, AttributeValue)
	SELECT 'PipeNumber'		, @idTracking UNION
	SELECT 'NDT_VI_PASSED'	, 0 UNION
	SELECT 'NDT_STATUS'		, 0 UNION
	SELECT 'HEAD_CUT'		, 0 UNION
	SELECT 'TAIL_CUT'		, 0 UNION
	SELECT 'HEAD_TYPE'		, 1 UNION
	SELECT 'TAIL_TYPE'		, 1 UNION
	SELECT 'NDT_STOPPER'	, 0 UNION
	SELECT 'HEAD_UNTESTED'	, 0 UNION
	SELECT 'TAIL_UNTESTED'	, 0 UNION
	SELECT 'REAL_LENGTH'	, 0 	

	--Traceability Attribute (SearchKey)
	--INSERT INTO @AttributeValues(AttributeCode, AttributeValue)
	--EXEC [Custom].[TrackingGetTraceabilityAttributes]
	--													@idTrackingParent,
	--													@idTrackingType,
	--													@handshakeCode,
	--													@idProductionHistory,
	--													@traceabilityNumber,
	--													@traceabilitySubNumber,
	--													@traceabilityCode,
	--													@traceabilitySubCode,
	--													@idItemStatus,
	--													@idCreationType,
	--													@isInverted,
	--													@customRD01,
	--													@customRD02,
	--													@customRD03,
	--													@customRD04,
	--													@customRD05,
	--													@customRD06,
	--													@idTracking

	SELECT AttributeCode, AttributeValue
	FROM @AttributeValues

END
GO

