
CREATE VIEW [Custom].[VwSpecificationProductHistoryComplete]
AS	
	SELECT  
		idSpecification,	
		idProductHistory,			
		TargetProduct,
		Fabrica,
		PipeTypeCode,		
		SteelGrade,
		SteelCode,
		CAST(DiameterMM AS FLOAT) Diameter,		
		CAST(ThicknessMM AS FLOAT) Thickness,		
		CAST(MaxLengthMM AS FLOAT) MaximumLength,
		CAST(MinLengthMM AS FLOAT) MinimumLength,		
		CAST(MetricWeightKg AS FLOAT) MetricWeightKg,		
		CAST(StdCycleTime AS FLOAT) CycleTime,
		EndType as ThreadType,
		Norm,
		SubNorm
	FROM
	(SELECT S.idSpecification, SC.idComponent AS idProductHistory, A.Code, Value
	FROM 
		Specification.Attribute A 
		INNER JOIN Specification.ComponentAttributeValue CV ON CV.IdAttribute = A.IdAttribute
		INNER JOIN Specification.Component C ON C.idComponent = CV.idComponent
		INNER JOIN Specification.ComponentType CT ON CT.idComponentType = C.idComponentType AND CT.Code = 'TargetProduct'
		INNER JOIN Specification.SpecificationComponent SC ON SC.idComponent = C.idComponent
		INNER JOIN Specification.Specification S ON S.idSpecification = SC.idSpecification) AS SourceTable
	PIVOT
	(
		MAX(Value)
		FOR Code IN (TargetProduct,DiameterMM,ThicknessMM,SteelGrade,SteelCode,MaxLengthMM,MinLengthMM
		,StdCycleTime,Fabrica,PipeTypeCode,MetricWeightKg
		,EndType,Norm,SubNorm
		)
	) AS PivotTable