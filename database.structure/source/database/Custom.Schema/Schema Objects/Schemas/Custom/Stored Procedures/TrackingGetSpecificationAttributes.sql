
CREATE PROCEDURE [Custom].[TrackingGetSpecificationAttributes]
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

	DECLARE @idSpecification INT

	SELECT @idSpecification = idSpecification
	FROM Production.BatchHistory
	WHERE idBatchHistory = @idProductionHistory

	SELECT TA.Code AS AttributeCode, 
		CASE WHEN TSA.idMachineWorkflowSequence IS NOT NULL THEN SCAVMWS.Value
			 WHEN TSA.idMachine IS NOT NULL THEN SCAVM.Value
			 WHEN TSA.idMachineWorkflow IS NOT NULL THEN SCAVMW.Value
			 WHEN TSA.idArea IS NOT NULL THEN SCAVA.Value
			 ELSE SCAV.Value END AS AttributeValue
	FROM Specification.SpecificationComponent SSC
		INNER JOIN Specification.Component SC ON SC.idComponent = SSC.idComponent
		INNER JOIN Specification.ComponentAttributeValue SCAV ON SCAV.idComponent = SSC.idComponent
		INNER JOIN Specification.Attribute SA ON SA.idAttribute = SCAV.idAttribute
		INNER JOIN Custom.TrackingSpecificationAttribute TSA ON TSA.idSpecificationAttribute = SA.idAttribute AND TSA.idSpecificationComponentSubType = SSC.idComponentSubType
		INNER JOIN Tracking.Attribute TA ON TA.idAttribute = TSA.idTrackingAttribute
		LEFT JOIN Specification.ComponentAttributeValueMachine SCAVM ON SCAVM.idMachine = TSA.idMachine
		LEFT JOIN Specification.ComponentAttributeValueArea SCAVA ON SCAVA.idArea = TSA.idArea
		LEFT JOIN Specification.ComponentAttributeValueMachineWorkflow SCAVMW ON SCAVMW.idMachineWorkflow = TSA.idMachineWorkflow
		LEFT JOIN Specification.ComponentAttributeValueMachineWorkflowSequence SCAVMWS ON SCAVMWS.idMachineWorkflowSequence = TSA.idMachineWorkflowSequence
	WHERE SSC.idSpecification = @idSpecification

END