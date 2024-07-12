
create VIEW [Custom].[VwSpecificationHeatHistoryComplete]
AS
	SELECT 
		idSpecification,
		idHeatHistory,
		[HEAT] AS HeatNumber,
		[Color]
	FROM
	(SELECT s.idSpecification, SC.idComponent AS idHeatHistory, A.Code, Value
	FROM 
		Specification.Attribute A 
		INNER JOIN Specification.ComponentAttributeValue CV ON CV.IdAttribute = A.IdAttribute
		INNER JOIN Specification.Component C ON C.idComponent = CV.idComponent
		INNER JOIN Specification.ComponentType CT ON CT.idComponentType =C.idComponentType AND CT.Code = 'HEAT'
		INNER JOIN Specification.SpecificationComponent SC ON SC.idComponent = C.idComponent
		INNER JOIN Specification.Specification S ON S.idSpecification = SC.idSpecification) AS SourceTable
	PIVOT
	(
		MAX(Value)
		FOR Code IN ([HEAT],[Color])
	) AS PivotTable