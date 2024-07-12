--- Config dump file for schema Preset
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Preset.CatalogCriteria
    -- End dump for table Preset.CatalogCriteria

    -- Begin dump for table Preset.Class
    UPDATE [Preset].[Class] SET [Active] = 'False';
    EXEC [Preset].[DoConfigDefineClass] @Code = 'L2_GLOBAL', @Name = 'L2 Equipment', @Description = 'L2 Equipment', @SortOrder = 5, @IsPlcPreset = False, @IsAutoApply = False, @HasCatalog = False, @HasFuture = False, @HasMathematicalCorrection = False, @HasToolingCorrection = False, @CanModifyCatalog = True, @CanModifySet = True, @Active = True;
    EXEC [Preset].[DoConfigDefineClass] @Code = 'L2_PRODUCT', @Name = 'L2 Product', @Description = 'L2 Product', @SortOrder = 4, @IsPlcPreset = False, @IsAutoApply = False, @HasCatalog = True,  @HasFuture = False, @HasMathematicalCorrection = False, @HasToolingCorrection = False, @CanModifyCatalog = True, @CanModifySet = True, @Active = True;
    EXEC [Preset].[DoConfigDefineClass] @Code = 'L2_PRODUCT_AUTO', @Name = 'L2 Product (Auto)', @Description = 'L2 Product (Auto)', @SortOrder = 4, @IsPlcPreset = False, @IsAutoApply = True,  @HasCatalog = True,  @HasFuture = False, @HasMathematicalCorrection = False, @HasToolingCorrection = False, @CanModifyCatalog = True, @CanModifySet = True, @Active = True;
    EXEC [Preset].[DoConfigDefineClass] @Code = 'PLC_GLOBAL', @Name = 'PLC Equipment', @Description = 'PLC Equipment', @SortOrder = 3, @IsPlcPreset = True,  @IsAutoApply = False, @HasCatalog = False, @HasFuture = False, @HasMathematicalCorrection = False, @HasToolingCorrection = False, @CanModifyCatalog = True, @CanModifySet = True, @Active = True;
    EXEC [Preset].[DoConfigDefineClass] @Code = 'PLC_PRODUCT', @Name = 'PLC Product', @Description = 'PLC Product', @SortOrder = 1, @IsPlcPreset = True,  @IsAutoApply = False, @HasCatalog = True,  @HasFuture = False, @HasMathematicalCorrection = False, @HasToolingCorrection = False, @CanModifyCatalog = True, @CanModifySet = True, @Active = True;
    EXEC [Preset].[DoConfigDefineClass] @Code = 'PLC_PRODUCT_AUTO', @Name = 'Product (Auto)', @Description = 'Product (Auto)', @SortOrder = 2, @IsPlcPreset = True,  @IsAutoApply = True,  @HasCatalog = True,  @HasFuture = False, @HasMathematicalCorrection = False, @HasToolingCorrection = False, @CanModifyCatalog = True, @CanModifySet = True, @Active = True;
    -- End dump for table Preset.Class

    -- Begin dump for table Preset.Container
    -- End dump for table Preset.Container

    -- Begin dump for table Preset.ExtendedCatalog
    UPDATE [Preset].[ExtendedCatalog] SET [Active] = 'False';
    EXEC [Preset].[DoConfigDefineExtendedCatalog] @Code = 'PresetCatalog', @Name = 'PresetCatalog', @Description = 'PresetCatalog', @ValueUri = 'sp://[PresetCatalog].[GetExtendedCatalogValues]', @HandshakeCode = Null,  @Active = True;
    -- End dump for table Preset.ExtendedCatalog

    -- Begin dump for table Preset.Property
    UPDATE [Preset].[Property] SET [Active] = 'False';
    EXEC [Preset].[DoConfigDefineProperty] @id = 6, @Code = 'Accepted', @Name = 'Accepted', @Description = 'Accepted', @Active = True;
    EXEC [Preset].[DoConfigDefineProperty] @id = 10, @Code = 'Actual', @Name = 'Actual', @Description = 'Actual', @Active = True;
    EXEC [Preset].[DoConfigDefineProperty] @id = 1, @Code = 'CurrentCatalog', @Name = 'Catalog', @Description = 'Catalog', @Active = True;
    EXEC [Preset].[DoConfigDefineProperty] @id = 5, @Code = 'CurrentSet', @Name = 'Set', @Description = 'Set', @Active = True;
    EXEC [Preset].[DoConfigDefineProperty] @id = 9, @Code = 'FutureCatalog', @Name = 'Future Catalog', @Description = 'Future Catalog', @Active = True;
    EXEC [Preset].[DoConfigDefineProperty] @id = 8, @Code = 'FutureProcess', @Name = 'Future Process', @Description = 'Future Process', @Active = True;
    EXEC [Preset].[DoConfigDefineProperty] @id = 7, @Code = 'FutureSet', @Name = 'Future Set', @Description = 'Future Set', @Active = True;
    EXEC [Preset].[DoConfigDefineProperty] @id = 13, @Code = 'IsEnabledMathCorr', @Name = 'Is Enabled Mathematical Correction', @Description = 'Is Enabled Mathematical Correction', @Active = True;
    EXEC [Preset].[DoConfigDefineProperty] @id = 11, @Code = 'PositioningMode', @Name = 'Positioning Mode', @Description = 'Positioning Mode', @Active = True;
    EXEC [Preset].[DoConfigDefineProperty] @id = 12, @Code = 'PositioningStatus', @Name = 'Positioning Status', @Description = 'Positioning Status', @Active = True;
    -- End dump for table Preset.Property

    -- Begin dump for table Preset.CatalogCriteriaRange
    -- End dump for table Preset.CatalogCriteriaRange

    -- Begin dump for table Preset.EnumValue
    -- End dump for table Preset.EnumValue

    -- Begin dump for table Preset.Definition
    -- UPDATE [Preset].[Definition] SET [Active] = 'False';
    -- EXEC [Preset].[DoConfigDefineDefinition] @EnumValueCode = null, @EnumStatusCode = null, @DataTypeCode = 'DOUBLE', @Code = 'AIRE/GAS', @Name = 'AIRE/GAS', @Description = 'AIRE/GAS', @CatalogCriteriaMaskLow = 0, @CatalogCriteriaMaskHigh = 0, @Size = 1, @Precision = 2, @Bias = 0, @EguCode = 'A/G', @PrecisionX = 1, @BiasX = 0, @EguXCode = null, @UpDownStep = 1, @IsCurve = False, @CurveItemsCount = null, @HasActual = True, @Active = True;
    -- EXEC [Preset].[DoConfigDefineDefinition] @EnumValueCode = null, @EnumStatusCode = null, @DataTypeCode = 'DOUBLE', @Code = 'ANGULO', @Name = 'ANGULO', @Description = 'ANGULO', @CatalogCriteriaMaskLow = 0, @CatalogCriteriaMaskHigh = 0, @Size = 1, @Precision = 1, @Bias = 0, @EguCode = 'DEG', @PrecisionX = 0, @BiasX = 0, @EguXCode = null, @UpDownStep = 1, @IsCurve = False, @CurveItemsCount = null, @HasActual = True, @Active = True;
    -- EXEC [Preset].[DoConfigDefineDefinition] @EnumValueCode = null, @EnumStatusCode = null, @DataTypeCode = 'DOUBLE', @Code = 'CORRIENTE', @Name = 'CORRIENTE', @Description = 'CORRIENTE', @CatalogCriteriaMaskLow = 0, @CatalogCriteriaMaskHigh = 0, @Size = 1, @Precision = 1, @Bias = 0, @EguCode = 'A', @PrecisionX = 0, @BiasX = 0, @EguXCode = null, @UpDownStep = 1, @IsCurve = False, @CurveItemsCount = null, @HasActual = True, @Active = True;
    -- EXEC [Preset].[DoConfigDefineDefinition] @EnumValueCode = null, @EnumStatusCode = null, @DataTypeCode = 'DOUBLE', @Code = 'MODO', @Name = 'MODO', @Description = 'MODO', @CatalogCriteriaMaskLow = 0, @CatalogCriteriaMaskHigh = 0, @Size = 1, @Precision = 0, @Bias = 0, @EguCode = 'Mode', @PrecisionX = 0, @BiasX = 0, @EguXCode = null, @UpDownStep = 1, @IsCurve = False, @CurveItemsCount = null, @HasActual = True, @Active = True;
    -- End dump for table Preset.Definition

    -- Begin dump for table Preset.Tag
    -- End dump for table Preset.Tag

    -- Begin dump for table Preset.Policy
    -- UPDATE [Preset].[Policy] SET [Active] = 'False';
    -- EXEC [Preset].[DoConfigDefinePolicy] @DefinitionCode = 'AIRE/GAS', @GroupCode = null, @ApplicationCommandApplicationCode = null, @ApplicationCommandCommand = null, @CanWrite = True, @Active = True;
    -- EXEC [Preset].[DoConfigDefinePolicy] @DefinitionCode = 'ANGULO', @GroupCode = null, @ApplicationCommandApplicationCode = null, @ApplicationCommandCommand = null, @CanWrite = True, @Active = True;
    -- EXEC [Preset].[DoConfigDefinePolicy] @DefinitionCode = 'CORRIENTE', @GroupCode = null, @ApplicationCommandApplicationCode = null, @ApplicationCommandCommand = null, @CanWrite = True, @Active = True;
    -- EXEC [Preset].[DoConfigDefinePolicy] @DefinitionCode = 'MODO', @GroupCode = null, @ApplicationCommandApplicationCode = null, @ApplicationCommandCommand = null, @CanWrite = True, @Active = True;
    -- End dump for table Preset.Policy

    -- Begin dump for table Preset.Machine
    -- UPDATE [Preset].[Machine] SET [Active] = 'False';
    -- EXEC [Preset].[DoConfigDefineMachine] @MachineCode = 'Entry', @SortOrder = 1, @CommandCode = null, @Active = True;
    -- End dump for table Preset.Machine

    -- Begin dump for table Preset.TagCommand
    -- End dump for table Preset.TagCommand

    -- Begin dump for table Preset.MachineComponent
    -- UPDATE [Preset].[MachineComponent] SET [Active] = 'False';
    -- EXEC [Preset].[DoConfigDefineMachineComponent] @MachineMachineCode = 'Entry', @Code = 'Entry', @Name = 'Entry', @Description = 'Entry', @SortOrder = 3, @idCommand = null, @Active = True;
    -- End dump for table Preset.MachineComponent

    -- Begin dump for table Preset.Preset
    -- End dump for table Preset.Preset

    -- Begin dump for table Preset.Catalog
    -- End dump for table Preset.Catalog

    -- Begin dump for table Preset.PresetContainer
    -- End dump for table Preset.PresetContainer

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
