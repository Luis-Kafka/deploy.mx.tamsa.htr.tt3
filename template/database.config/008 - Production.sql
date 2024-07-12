--- Config dump file for schema Production
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Production.BalanceMode
    UPDATE [Production].[BalanceMode] SET [Active] = 'False';
    EXEC [Production].[DoConfigDefineBalanceMode] @Code = 'Continuous', @Name = 'Continuous', @Description = 'Continuous', @Active = True;
    EXEC [Production].[DoConfigDefineBalanceMode] @Code = 'EndBatch', @Name = 'EndBatch', @Description = 'EndBatch', @Active = True;
    EXEC [Production].[DoConfigDefineBalanceMode] @Code = 'EndKey', @Name = 'EndKey', @Description = 'EndKey', @Active = True;
    EXEC [Production].[DoConfigDefineBalanceMode] @Code = 'NoBalance', @Name = 'NoBalance', @Description = 'NoBalance', @Active = True;
    -- End dump for table Production.BalanceMode

    -- Begin dump for table Production.Stage
    UPDATE [Production].[Stage] SET [Active] = 'False';
    EXEC [Production].[DoConfigDefineStage] @AreaCode = '$AREA_CODE', @PlcCode = 1, @Code = '$AREA_CODE', @Name = '$AREA_CODE', @Description = '$AREA_CODE', @Active = True;
    -- End dump for table Production.Stage

    -- Begin dump for table Production.Machine
    EXEC [Production].[DoConfigDefineMachine] @MachineCode = '$MACHINE_CODE', @IsEntrance = False, @IsExit = False, @IsItemMultiplier = False, @ChangeBatchMode = 0, @HasTracking = True, @BalanceModeCode = 'Continuous', @LockRemainingCount = 0, @LockFrequency = 0, @DefaultStandardCycleTime = 60, @DefaultStandardWorkTime = 60, @faultIdItemSideCode = null, @SPGetCommandProductData = '[Custom].[ProductionGetProductData]', @SPDenyLockRemainingCount = null, @SPApplyLockForBatchChange = null, @SPIsValidProduct = null, @SPCanGenerateNewTrackingPass = NULL;-- End dump for table Production.Machine

    COMMIT TRANSACTION;
END TRY

BEGIN CATCH

    SELECT
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() AS ErrorState ,
        ERROR_PROCEDURE() AS ErrorProcedure,
        ERROR_LINE() AS ErrorLine,
        ERROR_MESSAGE() AS ErrorMessage;

    IF @TC > 0 AND XACT_STATE() = 1
        COMMIT TRANSACTION;
    IF @TC = 0
        ROLLBACK TRANSACTION;
END CATCH;
