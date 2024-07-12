create VIEW Custom.VwSpecification with schemabinding 
AS	
	SELECT  		
		TargetWorkorder.idSpecification,		
		--TargetWorkorder
		TargetWorkorder,
		MaximumAdjustedLength,
		MinimumAdjustedLength,
		StandarCycleTime,
		
		--TargetProduct
		TargetProduct,
		FullLength,
		Probeteo,
		PipeTypeCode,
		Fabrica,
		BocaPescado,
		SierraCaliente,
		SierraFrio,
		ClaseProbeteo,
		[K-DESP-COLA-LRE],
		[K-DESP-PUNTA-LRE],
		NumeroTramos,
		
		--Heat
		Heat--,

		----Lot
		--Lot,

		----Batch
		--Batch,

		----MACHINEWORKFLOW
		--MACHINEWORKFLOW
	FROM
	--TargetWorkorder
	(SELECT S.idSpecification, SC.idComponent, A.Code, Value
	FROM 
		Specification.Attribute A 
		INNER JOIN Specification.ComponentAttributeValue CV ON CV.IdAttribute = A.IdAttribute
		INNER JOIN Specification.Component C ON C.idComponent = CV.idComponent
		INNER JOIN Specification.ComponentType CT ON CT.idComponentType = C.idComponentType AND CT.Code in ('TargetWorkorder')
		INNER JOIN Specification.SpecificationComponent SC ON SC.idComponent = C.idComponent
		INNER JOIN Specification.Specification S ON S.idSpecification = SC.idSpecification) AS SourceTable
	PIVOT
	(
		MAX(Value)
		FOR Code IN (TargetWorkorder,MaximumAdjustedLength,MinimumAdjustedLength,StandarCycleTime)
	) AS TargetWorkorder
	--TargetProduct
	JOIN 
	(SELECT S.idSpecification, SC.idComponent, A.Code, Value
	FROM 
		Specification.Attribute A 
		INNER JOIN Specification.ComponentAttributeValue CV ON CV.IdAttribute = A.IdAttribute
		INNER JOIN Specification.Component C ON C.idComponent = CV.idComponent
		INNER JOIN Specification.ComponentType CT ON CT.idComponentType = C.idComponentType AND CT.Code in ('TargetProduct')
		INNER JOIN Specification.SpecificationComponent SC ON SC.idComponent = C.idComponent
		INNER JOIN Specification.Specification S ON S.idSpecification = SC.idSpecification) AS SourceTable
	PIVOT
	(
		MAX(Value)
		FOR Code IN (TargetProduct,FullLength,Probeteo,PipeTypeCode,Fabrica,BocaPescado,SierraCaliente,SierraFrio,ClaseProbeteo,[K-DESP-COLA-LRE],[K-DESP-PUNTA-LRE],NumeroTramos)
	) AS TargetProduct ON TargetProduct.idSpecification = TargetWorkorder.idspecification
	--Heat
	JOIN 
	(SELECT S.idSpecification, SC.idComponent, A.Code, Value
	FROM 
		Specification.Attribute A 
		INNER JOIN Specification.ComponentAttributeValue CV ON CV.IdAttribute = A.IdAttribute
		INNER JOIN Specification.Component C ON C.idComponent = CV.idComponent
		INNER JOIN Specification.ComponentType CT ON CT.idComponentType = C.idComponentType AND CT.Code in ('Heat')
		INNER JOIN Specification.SpecificationComponent SC ON SC.idComponent = C.idComponent
		INNER JOIN Specification.Specification S ON S.idSpecification = SC.idSpecification) AS SourceTable
	PIVOT
	(
		MAX(Value)
		FOR Code IN (Heat)
	) AS Heat ON Heat.idSpecification = TargetWorkorder.idspecification
	----Lot
	--JOIN 
	--(SELECT S.idSpecification, SC.idComponent, A.Code, Value
	--FROM 
	--	Specification.Attribute A 
	--	INNER JOIN Specification.ComponentAttributeValue CV ON CV.IdAttribute = A.IdAttribute
	--	INNER JOIN Specification.Component C ON C.idComponent = CV.idComponent
	--	INNER JOIN Specification.ComponentType CT ON CT.idComponentType = C.idComponentType AND CT.Code in ('Lot')
	--	INNER JOIN Specification.SpecificationComponent SC ON SC.idComponent = C.idComponent
	--	INNER JOIN Specification.Specification S ON S.idSpecification = SC.idSpecification) AS SourceTable
	--PIVOT
	--(
	--	MAX(Value)
	--	FOR Code IN (Lot)
	--) AS Lot ON Lot.idSpecification = TargetWorkorder.idspecification
	----Batch
	--JOIN
	--(SELECT S.idSpecification, SC.idComponent, A.Code, Value
	--FROM 
	--	Specification.Attribute A 
	--	INNER JOIN Specification.ComponentAttributeValue CV ON CV.IdAttribute = A.IdAttribute
	--	INNER JOIN Specification.Component C ON C.idComponent = CV.idComponent
	--	INNER JOIN Specification.ComponentType CT ON CT.idComponentType = C.idComponentType AND CT.Code in ('Batch')
	--	INNER JOIN Specification.SpecificationComponent SC ON SC.idComponent = C.idComponent
	--	INNER JOIN Specification.Specification S ON S.idSpecification = SC.idSpecification) AS SourceTable
	--PIVOT
	--(
	--	MAX(Value)
	--	FOR Code IN (Batch)
	--) AS Batch ON Batch.idspecification = TargetWorkorder.idSpecification
	----MACHINEWORKFLOW
	--JOIN
	--(SELECT S.idSpecification, SC.idComponent, A.Code, Value
	--FROM 
	--	Specification.Attribute A 
	--	INNER JOIN Specification.ComponentAttributeValue CV ON CV.IdAttribute = A.IdAttribute
	--	INNER JOIN Specification.Component C ON C.idComponent = CV.idComponent
	--	INNER JOIN Specification.ComponentType CT ON CT.idComponentType = C.idComponentType AND CT.Code in ('MACHINEWORKFLOW')
	--	INNER JOIN Specification.SpecificationComponent SC ON SC.idComponent = C.idComponent
	--	INNER JOIN Specification.Specification S ON S.idSpecification = SC.idSpecification) AS SourceTable
	--PIVOT
	--(
	--	MAX(Value)
	--	FOR Code IN (MACHINEWORKFLOW)
	--) AS MACHINEWORKFLOW ON MACHINEWORKFLOW.idspecification = TargetWorkorder.idSpecification