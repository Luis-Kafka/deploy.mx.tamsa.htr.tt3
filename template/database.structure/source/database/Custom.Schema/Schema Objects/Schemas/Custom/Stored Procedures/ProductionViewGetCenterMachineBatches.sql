CREATE PROCEDURE [Custom].[ProductionViewGetCenterMachineBatches]
	@MachineCode Common.TCode
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT	-- Fixed fields
			BH.idBatchHistory,
			MBH.idMachineBatchHistory,
   			S1.Code as BatchStatusCode,
			S2.Code as MachineBatchStatusCode,			
			BH.DisplayName,
			-- End fixed fields
			-- Custom fields
			BH.ProgrammedCount,
			BH.LoadedCount,
			BH.EnteredCount,
			BH.UpdDateTime,
			GETDATE() as DeliveryDate
			--SPEC.OP,
			--SPEC.DiametroNominal,
			--SPEC.EspesorNominal,
			--SPEC.LINGADA,
			--SPEC.SECUENCIA,
			--SPEC.PTAcero,
			--SPEC.OpCliente,
			--SPEC.PTTipoSubtipoDesc
			-- End custom fields
	FROM Production.VwBatchHistory BH
		INNER JOIN Production.VwMachineBatchHistory MBH ON BH.idBatchHistory = MBH.idBatchHistory
		INNER JOIN Common.VwStatus S1 ON BH.idStatus = S1.idStatus
		INNER JOIN Common.VwStatus S2 ON MBH.idStatus = S2.idStatus
		--INNER JOIN Custom.VwTrefSpecification SPEC ON SPEC.idSpecification = BH.idSpecification
		INNER JOIN Common.VwMachine M ON M.idMachine = MBH.idMachine
	WHERE 	
		M.Code = @MachineCode
	--Order by SPEC.OP,SPEC.LINGADA,SPEC.SECUENCIA
END