CREATE FUNCTION Custom.FSGetTrackingSpecificationAttribute
(
	@idTracking INT,
	@ComponentSubTypeCode Common.TCode,
	@AttributeCode Common.TCode,
	@AreaCode Common.TCode = NULL,
	@MachineWorkflowCode Common.TCode = NULL,
	@MachineCode Common.TCode = NULL
)
RETURNS SQL_VARIANT
AS
BEGIN

	DECLARE @idComponent INT;
	DECLARE @Result SQL_VARIANT;

	SELECT @idComponent = idComponent 
	FROM Tracking.Tracking T
		JOIN Production.BatchHistory BH ON T.idProductionHistory = BH.idBatchHistory
		JOIN Specification.SpecificationComponent SC ON SC.idSpecification = BH.idSpecification
		JOIN Specification.ComponentSubType CST ON CST.idComponentSubType = SC.idComponentSubType
	WHERE idTracking = @idTracking AND CST.Code = @ComponentSubTypeCode

	SELECT @Result = Value
	FROM Specification.FTComponentAttributes(@idComponent, @AreaCode, @MachineWorkflowCode, @MachineCode, 1)
	WHERE AttributeCode = @AttributeCode

	RETURN @Result
END