--- Config dump file for schema Command
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Command.Definition
    UPDATE [Command].[Definition] SET [Active] = 'False';
    EXEC [Command].[DoConfigDefineDefinition] @ApplicationCode = 'PresetManager', @Code = 'PresetCommand', @Name = 'PresetCommand', @Description = 'PresetCommand', @TagCount = 1, @Audit = False, @Active = True;
    EXEC [Command].[DoConfigDefineDefinition] @ApplicationCode = 'ProductionManager', @Code = 'Prod_LockMachine', @Name = 'Prod_LockMachine', @Description = 'Prod_LockMachine', @TagCount = 5, @Audit = False, @Active = True;
    EXEC [Command].[DoConfigDefineDefinition] @ApplicationCode = 'ProductionManager', @Code = 'Prod_ProductData', @Name = 'Prod_ProductData', @Description = 'Prod_ProductData', @TagCount = 20, @Audit = False, @Active = True;
    EXEC [Command].[DoConfigDefineDefinition] @ApplicationCode = 'TrackingManager', @Code = 'TrackingZoneLock', @Name = 'TrackingZoneLock', @Description = 'TrackingZoneLock', @TagCount = 10, @Audit = False, @Active = True;
    -- End dump for table Command.Definition

    -- Begin dump for table Command.DefinitionStatus
    UPDATE [Command].[DefinitionStatus] SET [Active] = 'False';
    EXEC [Command].[DoConfigDefineDefinitionStatus] @DefinitionCode = 'Prod_LockMachine', @Code = 'UNLOCKED', @Name = 'UNLOCKED', @Description = 'UNLOCKED', @ReadValue = 0, @WriteValue = 1, @Audit = False, @Active = True;
    EXEC [Command].[DoConfigDefineDefinitionStatus] @DefinitionCode = 'Prod_LockMachine', @Code = 'LOCKED', @Name = 'LOCKED', @Description = 'LOCKED', @ReadValue = 0, @WriteValue = 2, @Audit = False, @Active = True;
    EXEC [Command].[DoConfigDefineDefinitionStatus] @DefinitionCode = 'Prod_ProductData', @Code = 'ACCEPTED', @Name = 'ACCEPTED', @Description = 'ACCEPTED', @ReadValue = 0, @WriteValue = 0, @Audit = False, @Active = True;
    EXEC [Command].[DoConfigDefineDefinitionStatus] @DefinitionCode = 'Prod_ProductData', @Code = 'SENDING', @Name = 'SENDING', @Description = 'SENDING', @ReadValue = 0, @WriteValue = 1, @Audit = False, @Active = True;
    EXEC [Command].[DoConfigDefineDefinitionStatus] @DefinitionCode = 'Prod_ProductData', @Code = 'RECEIVED', @Name = 'RECEIVED', @Description = 'RECEIVED', @ReadValue = 1, @WriteValue = 1, @Audit = False, @Active = True;
    EXEC [Command].[DoConfigDefineDefinitionStatus] @DefinitionCode = 'TrackingZoneLock', @Code = 'UNLOCKED', @Name = 'UNLOCKED', @Description = 'UNLOCKED', @ReadValue = 0, @WriteValue = 0, @Audit = False, @Active = True;
    EXEC [Command].[DoConfigDefineDefinitionStatus] @DefinitionCode = 'TrackingZoneLock', @Code = 'LOCKING', @Name = 'LOCKING', @Description = 'LOCKING', @ReadValue = 0, @WriteValue = 1, @Audit = False, @Active = True;
    EXEC [Command].[DoConfigDefineDefinitionStatus] @DefinitionCode = 'TrackingZoneLock', @Code = 'UNLOCKING', @Name = 'UNLOCKING', @Description = 'UNLOCKING', @ReadValue = 1, @WriteValue = 0, @Audit = False, @Active = True;
    EXEC [Command].[DoConfigDefineDefinitionStatus] @DefinitionCode = 'TrackingZoneLock', @Code = 'LOCKED', @Name = 'LOCKED', @Description = 'LOCKED', @ReadValue = 1, @WriteValue = 1, @Audit = False, @Active = True;
    -- End dump for table Command.DefinitionStatus

    -- Begin dump for table Command.Parameter
    UPDATE [Command].[Parameter] SET [Active] = 'False';
    EXEC [Command].[DoConfigDefineParameter] @DefinitionCode = 'Prod_ProductData', @EguCode = null, @Code = 'BatchNumber', @Name = 'BatchNumber', @Description = 'BatchNumber', @IsL1ToL2 = False, @Offset = 3, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Command].[DoConfigDefineParameter] @DefinitionCode = 'Prod_ProductData', @EguCode = null, @Code = 'Diameter', @Name = 'Diameter', @Description = 'Diameter', @IsL1ToL2 = False, @Offset = 11, @Size = 2, @Precision = 2, @Bias = 0, @Active = True;
    EXEC [Command].[DoConfigDefineParameter] @DefinitionCode = 'Prod_ProductData', @EguCode = null, @Code = 'HeatNumber', @Name = 'HeatNumber', @Description = 'HeatNumber', @IsL1ToL2 = False, @Offset = 5, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Command].[DoConfigDefineParameter] @DefinitionCode = 'Prod_ProductData', @EguCode = null, @Code = 'idBatchHistory', @Name = 'idBatchHistory', @Description = 'idBatchHistory', @IsL1ToL2 = False, @Offset = 9, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Command].[DoConfigDefineParameter] @DefinitionCode = 'Prod_ProductData', @EguCode = null, @Code = 'NominalLength', @Name = 'NominalLength', @Description = 'NominalLength', @IsL1ToL2 = False, @Offset = 17, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Command].[DoConfigDefineParameter] @DefinitionCode = 'Prod_ProductData', @EguCode = null, @Code = 'OrderNumber', @Name = 'OrderNumber', @Description = 'OrderNumber', @IsL1ToL2 = False, @Offset = 1, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Command].[DoConfigDefineParameter] @DefinitionCode = 'Prod_ProductData', @EguCode = null, @Code = 'Steel', @Name = 'Steel', @Description = 'Steel', @IsL1ToL2 = False, @Offset = 15, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    EXEC [Command].[DoConfigDefineParameter] @DefinitionCode = 'Prod_ProductData', @EguCode = null, @Code = 'Thickness', @Name = 'Thickness', @Description = 'Thickness', @IsL1ToL2 = False, @Offset = 13, @Size = 2, @Precision = 2, @Bias = 0, @Active = True;
    EXEC [Command].[DoConfigDefineParameter] @DefinitionCode = 'Prod_ProductData', @EguCode = null, @Code = 'TraceabilityNumber', @Name = 'TraceabilityNumber', @Description = 'TraceabilityNumber', @IsL1ToL2 = False, @Offset = 7, @Size = 2, @Precision = 0, @Bias = 0, @Active = True;
    -- End dump for table Command.Parameter

    -- Begin dump for table Command.Command
    -- End dump for table Command.Command

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
