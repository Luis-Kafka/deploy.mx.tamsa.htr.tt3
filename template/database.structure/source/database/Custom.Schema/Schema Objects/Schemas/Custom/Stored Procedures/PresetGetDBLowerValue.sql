CREATE PROCEDURE [Custom].[PresetGetDBLowerValue]
	@PresetCode [Common].[TCode]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT CONVERT(FLOAT,0)
	--IF (@PresetCode IN ('=150+A30-HDT.Test pressure_HDT', '=150+A30-HDT.Test pressure objetive', '=150+A30-HDT.Test_pressure max'))
	--BEGIN
	--	Declare @idBatchHistory int
	--	Declare @idMachine int

	--	Select @idMachine = M.idMachine
	--	From [Preset].[Preset] P
	--	Inner Join [Preset].[MachineComponent] MC On P.[idMachineComponent] = MC.idMachineComponent
	--	Inner Join [Preset].[Machine] M  On MC.idMachine = M.idMachine
	--	Where P.Code = @PresetCode 

	--	SELECT @idBatchHistory = idProductionHistory
	--	FROM Production.KeyHistory 
	--	WHERE idStatus = Common.FSGetIdStatus('Active') And idMachine = @idMachine

	--	SELECT CONVERT(FLOAT, Specification.FsGetBatchSpecificationAttribute(@idBatchHistory, 'BC_WO_COMMON','PRESSURE.PROCESS_MIN', NULL, NULL, NULL)) As [Value]
	--END
END