
CREATE PROCEDURE [Custom].[ProductionViewGetChangeProductBatchMachines]
	@IdMachine INT,
	@ShowAll BIT

AS
BEGIN
    SET NOCOUNT ON;

	-- FILTER BY BATCH MACHINE STATUS
    DECLARE @BatchMachineStatuses TABLE 
    (
		id INT PRIMARY KEY,
		sort INT
    )
	INSERT @BatchMachineStatuses SELECT Common.FSGetIdStatus('ACTIVE'), 1
	INSERT @BatchMachineStatuses SELECT Common.FSGetIdStatus('FUTURE'), 2
	INSERT @BatchMachineStatuses SELECT Common.FSGetIdStatus('SCHEDULED'), 3
	INSERT @BatchMachineStatuses SELECT Common.FSGetIdStatus('NEXTFUTURE'), 4
	INSERT @BatchMachineStatuses SELECT Common.FSGetIdStatus('HOLD'), 5
	IF @ShowAll = 1
	BEGIN
		INSERT @BatchMachineStatuses SELECT Common.FSGetIdStatus('ENDED'), 6
		INSERT @BatchMachineStatuses SELECT Common.FSGetIdStatus('CANCELED'), 7
	END
 
	SELECT 
		BM.idMachineBatchHistory
		,BM.idStatus AS idBatchMachineStatus
		,CSBM.Code AS BatchMachineStatusCode
		,B.idBatchHistory
		,B.idStatus AS idBatchStatus
		,CSB.Code AS BatchStatusCode
		,B.ProgrammedCount
		,B.LoadedCount
		,B.EnteredCount
		--,SPEC.OP
		--,SPEC.DiametroNominal 
		--,SPEC.EspesorNominal
		--,SPEC.LINGADA
		--,SPEC.SECUENCIA
		--,SPEC.PTGradoAcero
		--,SPEC.OpCliente
		--,SPEC.PTTipoSubtipoDesc
	FROM Production.MachineBatchHistory BM
		INNER JOIN Common.[VwStatus] AS CSBM ON BM.idStatus = CSBM.idStatus
		INNER JOIN Production.BatchHistory B ON BM.idBatchHistory = B.idBatchHistory
		INNER JOIN Common.[VwStatus] AS CSB ON B.idStatus = CSB.idStatus
		INNER JOIN @BatchMachineStatuses BMS1 ON BMS1.id = B.idStatus 
		--INNER JOIN Custom.VwTrefSpecification SPEC ON SPEC.idSpecification = B.idSpecification
	WHERE BM.idMachine = @IdMachine
	ORDER BY BMS1.sort, BM.idMachineBatchHistory DESC

END