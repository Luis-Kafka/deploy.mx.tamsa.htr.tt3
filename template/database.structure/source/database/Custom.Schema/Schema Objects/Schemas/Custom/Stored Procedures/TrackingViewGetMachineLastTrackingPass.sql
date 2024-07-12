CREATE PROCEDURE [Custom].[TrackingViewGetMachineLastTrackingPass]
	@idTracking INT,
	@idMachine INT
AS
BEGIN

	DECLARE @idSpecification INT = 0,
			@OrderNumber INT = 0,
			@HeatNumber NVARCHAR(100) = '',
			@Diameter FLOAT = 0,
			@SteelGrade NVARCHAR(100) = ''

	DECLARE @SpecificationData AS TABLE
	(
		AttributeCategory NVARCHAR(MAX),
		AttributeName NVARCHAR(MAX),
		AttributeValue SQL_VARIANT
	)


	SELECT @idSpecification = BH.idSpecification
	FROM Tracking.Tracking T
		INNER JOIN Production.BatchHistory BH ON T.idProductionHistory = BH.idBatchHistory
	WHERE idTracking = @idTracking

	INSERT @SpecificationData(AttributeCategory, AttributeName, AttributeValue)   
	SELECT CT.Code,A.Code, Value
    FROM 
		Specification.Attribute A 
		INNER JOIN Specification.ComponentAttributeValue CV ON CV.IdAttribute = A.IdAttribute
		INNER JOIN Specification.Component C ON C.idComponent = CV.idComponent
		INNER JOIN Specification.ComponentType CT ON CT.idComponentType =C.idComponentType
		INNER JOIN Specification.SpecificationComponent SC ON SC.idComponent = C.idComponent
		INNER JOIN Specification.Specification S ON S.idSpecification = SC.idSpecification 
	WHERE
		S.idSpecification = @idSpecification 
	ORDER BY 
		cv.idComponent

	SELECT @OrderNumber = CAST(AttributeValue AS INT)
	FROM @SpecificationData
	WHERE AttributeName = 'WORKORDER'

	SELECT @HeatNumber = CAST(AttributeValue AS NVARCHAR(100))
	FROM @SpecificationData
	WHERE AttributeName = 'HEAT'

	SELECT @Diameter = CAST(AttributeValue AS FLOAT)
	FROM @SpecificationData
	WHERE AttributeName = 'DIAM_OUT_I'

	SELECT @SteelGrade = CAST(AttributeValue AS NVARCHAR(100))
	FROM @SpecificationData
	WHERE AttributeName = 'STG_NAME'


	SELECT TOP 1 T.idTracking,
		R.idTrackingPassHistory,
		@OrderNumber AS OrderNumber,
		@HeatNumber AS HeatNumber,
		T.TraceabilityNumber,
		@Diameter AS Diameter,
		@SteelGrade AS SteelGrade,
		R.BeginDateTime,
		R.PassCount,
		R.idItemStatus
	FROM Tracking.VwTracking T
		LEFT JOIN 
			(
				SELECT TPH.idTracking, TPH.idTrackingPassHistory, TPH.BeginDateTime, TPH.PassCount, TPH.idItemStatus
				FROM Production.VWTrackingPassHistory TPH
					INNER JOIN Production.VwKeyHistory KH ON TPH.idKeyHistory = KH.idKeyHistory
														AND KH.idMachine = @idMachine
				WHERE TPH.idTracking = @idTracking
			) AS R ON T.idTracking = R.idTracking
	WHERE T.idTracking = @idTracking
	ORDER BY R.BeginDateTime DESC

END