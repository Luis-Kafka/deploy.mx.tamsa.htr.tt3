
CREATE PROCEDURE [Custom].[TdaGetHeaderSpecification]
(
	@GroupType Common.TCode = NULL
	, @ProductId INT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

	DECLARE @IdBatchHistory INT = NULL

	IF @GroupType = 'ByProductId'
	BEGIN
		SET @IdBatchHistory = @ProductId
	END
	ELSE IF @GroupType = 'ByKey'
	BEGIN
		SELECT @IdBatchHistory = idProductionHistory
		FROM Production.KeyHistory
		WHERE idKeyHistory = @ProductId
	END
	ELSE IF @GroupType = 'ByTrackingPass'
	BEGIN
		DECLARE @idKeyHistory INT

		SELECT @idKeyHistory = idKeyHistory
		FROM Production.TrackingPassHistory
		WHERE idTrackingPassHistory = @ProductId

		SELECT @IdBatchHistory = idProductionHistory
		FROM Production.KeyHistory
		WHERE idKeyHistory = @idKeyHistory
	END
	ELSE IF @GroupType = 'ByTracking'
	BEGIN
		SELECT @IdBatchHistory = idProductionHistory
		FROM Tracking.Tracking 
		WHERE idTracking = @ProductId
	END

	SELECT
		-- All Custom Fields:
		  CO.Code AS OP				--Dynamic column.
		, CH.Code AS LINGADA				--Dynamic column.
		, CE.Code AS SECUENCIA				--Dynamic column.
		, SCAVCU.[Value] AS Customer		--Dynamic column.
		, SCAVSC.[Value] AS SteelCode		--Dynamic column.
		, SCAVSG.[Value] AS SteelGrade		--Dynamic column.
	FROM Common.BatchHistory BH
	-- OP
	CROSS JOIN (SELECT idComponentSubType FROM Specification.ComponentSubType WHERE Code = 'OP') SCSO		
	LEFT JOIN Specification.SpecificationComponent SCO ON SCO.idComponentSubType = SCSO.idComponentSubType AND SCO.idSpecification = BH.idSpecification
	LEFT JOIN Specification.Component CO ON CO.idComponent = SCO.idComponent
	-- LINGADA
	CROSS JOIN (SELECT idComponentSubType FROM Specification.ComponentSubType WHERE Code = 'LINGADA') SCSH			
	LEFT JOIN Specification.SpecificationComponent SCH ON SCH.idComponentSubType = SCSH.idComponentSubType AND SCH.idSpecification = BH.idSpecification
	LEFT JOIN Specification.Component CH ON CH.idComponent = SCH.idComponent
	-- SECUENCIA
	CROSS JOIN (SELECT idComponentSubType FROM Specification.ComponentSubType WHERE Code = 'SECUENCIA') SCSE			
	LEFT JOIN Specification.SpecificationComponent SCE ON SCE.idComponentSubType = SCSE.idComponentSubType AND SCE.idSpecification = BH.idSpecification
	LEFT JOIN Specification.Component CE ON CE.idComponent = SCE.idComponent
	-- Customer
	CROSS JOIN (SELECT idAttribute FROM Specification.Attribute WHERE Code = 'OpCliente') SACU					
	LEFT JOIN Specification.ComponentAttributeValue SCAVCU ON SCAVCU.idComponent = CO.idComponent AND SCAVCU.idAttribute = SACU.idAttribute
	-- Steel Code
	CROSS JOIN (SELECT idAttribute FROM Specification.Attribute WHERE Code = 'PTAcero') SASC			
	LEFT JOIN Specification.ComponentAttributeValue SCAVSC ON SCAVSC.idComponent = CO.idComponent AND SCAVSC.idAttribute = SASC.idAttribute
	-- Steel Grade
	CROSS JOIN (SELECT idAttribute FROM Specification.Attribute WHERE Code = 'PTGradoAcero') SASG						
	LEFT JOIN Specification.ComponentAttributeValue SCAVSG ON SCAVSG.idComponent = CO.idComponent AND SCAVSG.idAttribute = SASG.idAttribute
	WHERE BH.idBatchHistory = @IdBatchHistory

END;