--- Config dump file for schema Tracking
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Tracking.CreationType
    UPDATE [Tracking].[CreationType] SET [Active] = 'False';
    EXEC [Tracking].[DoConfigDefineCreationType] @id = 1, @PlcCode = 1, @Code = 'Auto', @Name = 'Auto', @Description = 'Creation by handshake', @Active = True;
    EXEC [Tracking].[DoConfigDefineCreationType] @id = 2, @PlcCode = 2, @Code = 'Manual', @Name = 'Manual', @Description = 'Creation by view', @Active = True;
    EXEC [Tracking].[DoConfigDefineCreationType] @id = 3, @PlcCode = 3, @Code = 'OCR', @Name = 'OCR', @Description = 'Creation by OCR', @Active = True;
    -- End dump for table Tracking.CreationType

    -- Begin dump for table Tracking.ItemStatus
    UPDATE [Tracking].[ItemStatus] SET [Active] = 'False';
	EXEC [Tracking].[DoConfigDefineItemStatus] @id = 7, @PlcCode = 7, @Code = 'Canceled', @Name = 'Canceled', @Description = 'Canceled', @Priority = 7, @RequiresQualification = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineItemStatus] @id = 5, @PlcCode = 5, @Code = 'Discarded', @Name = 'Discarded', @Description = 'Discarded', @Priority = 6, @RequiresQualification = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineItemStatus] @id = 1, @PlcCode = 1, @Code = 'Good', @Name = 'Good', @Description = 'Good', @Priority = 2, @RequiresQualification = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineItemStatus] @id = 6, @PlcCode = 6, @Code = 'Hold', @Name = 'Hold', @Description = 'Hold', @Priority = 4, @RequiresQualification = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineItemStatus] @id = 4, @PlcCode = 4, @Code = 'Pending', @Name = 'Pending', @Description = 'Pending', @Priority = 1, @RequiresQualification = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineItemStatus] @id = 2, @PlcCode = 2, @Code = 'Rejected', @Name = 'Rejected', @Description = 'Rejected', @Priority = 5, @RequiresQualification = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineItemStatus] @id = 3, @PlcCode = 3, @Code = 'Warned', @Name = 'Warned', @Description = 'Warned', @Priority = 3, @RequiresQualification = null, @Active = True;
	
    EXEC [Tracking].[DoConfigDefineItemStatus] @id = 8, @PlcCode = 15, @Code = 'Counted', @Name = 'Counted', @Description = 'Counted', @Priority = 8, @RequiresQualification = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineItemStatus] @id = 9, @PlcCode = 9, @Code = 'Exited', @Name = 'Exited', @Description = 'Exited', @Priority = 9, @RequiresQualification = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineItemStatus] @id = 10, @PlcCode = 10, @Code = 'Loaded', @Name = 'Loaded', @Description = 'Loaded', @Priority = 10, @RequiresQualification = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineItemStatus] @id = 11, @PlcCode = 11, @Code = 'Programmed', @Name = 'Programmed', @Description = 'Programmed', @Priority = 11, @RequiresQualification = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineItemStatus] @id = 12, @PlcCode = 12, @Code = 'Remaining', @Name = 'Remaining', @Description = 'Remaining', @Priority = 12, @RequiresQualification = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineItemStatus] @id = 13, @PlcCode = 13, @Code = 'Rework', @Name = 'Rework', @Description = 'Rework', @Priority = 13, @RequiresQualification = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineItemStatus] @id = 15, @PlcCode = 8, @Code = 'Scheduled', @Name = 'Scheduled', @Description = 'Scheduled', @Priority = 14, @RequiresQualification = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineItemStatus] @id = 14, @PlcCode = 14, @Code = 'Worked', @Name = 'Worked', @Description = 'Worked', @Priority = 15, @RequiresQualification = null, @Active = True;
    -- End dump for table Tracking.ItemStatus

    -- Begin dump for table Tracking.TrackingType
    UPDATE [Tracking].[TrackingType] SET [Active] = 'False';
    EXEC [Tracking].[DoConfigDefineTrackingType] @id = 1, @PlcCode = 1, @Code = 'Bar', @Name = 'Bar', @Description = 'Bar', @Active = True;
    EXEC [Tracking].[DoConfigDefineTrackingType] @id = 2, @PlcCode = 2, @Code = 'Billet', @Name = 'Billet', @Description = 'Billet', @Active = True;
    EXEC [Tracking].[DoConfigDefineTrackingType] @id = 5, @PlcCode = 5, @Code = 'Bundle', @Name = 'Bundle', @Description = 'Bundle', @Active = True;
    EXEC [Tracking].[DoConfigDefineTrackingType] @id = 7, @PlcCode = 7, @Code = 'Coupling', @Name = 'Coupling', @Description = 'Coupling', @Active = True;
    EXEC [Tracking].[DoConfigDefineTrackingType] @id = 8, @PlcCode = 8, @Code = 'Mandrel', @Name = 'Mandrel', @Description = 'Mandrel', @Active = True;
    EXEC [Tracking].[DoConfigDefineTrackingType] @id = 4, @PlcCode = 4, @Code = 'MotherPipe', @Name = 'MotherPipe', @Description = 'MotherPipe', @Active = True;
    EXEC [Tracking].[DoConfigDefineTrackingType] @id = 3, @PlcCode = 3, @Code = 'Pipe', @Name = 'Pipe', @Description = 'Pipe', @Active = True;
    EXEC [Tracking].[DoConfigDefineTrackingType] @id = 6, @PlcCode = 6, @Code = 'StandardPipe', @Name = 'StandardPipe', @Description = 'StandardPipe', @Active = True;
    -- End dump for table Tracking.TrackingType

    -- Begin dump for table Tracking.Attribute
    UPDATE [Tracking].[Attribute] SET [Active] = 'False';
    EXEC [Tracking].[DoConfigDefineAttribute] @DataTypeCode = 'STRING', @Code = 'Batch', @Name = 'Batch', @Description = 'Batch', @DefaultValue = null, @EnumCode = null, @Active = True;
	EXEC [Tracking].[DoConfigDefineAttribute] @DataTypeCode = 'STRING', @Code = 'Lot', @Name = 'Lote', @Description = 'Lote', @DefaultValue = null, @EnumCode = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineAttribute] @DataTypeCode = 'STRING', @Code = 'HeatNumber', @Name = 'Colada', @Description = 'Colada', @DefaultValue = null, @EnumCode = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineAttribute] @DataTypeCode = 'STRING', @Code = 'Workorder', @Name = 'Workorder', @Description = 'Orden', @DefaultValue = null, @EnumCode = null, @Active = True;
	EXEC [Tracking].[DoConfigDefineAttribute] @DataTypeCode = 'STRING', @Code = 'Product', @Name = 'Product', @Description = 'Producto', @DefaultValue = null, @EnumCode = null, @Active = True;
    EXEC [Tracking].[DoConfigDefineAttribute] @DataTypeCode = 'STRING', @Code = 'TrackingColor', @Name = 'TrackingColor', @Description = 'TrackingColor', @DefaultValue = '0', @EnumCode = null, @Active = True;
    -- End dump for table Tracking.Attribute
	
	
    -- Begin dump for table Tracking.Zone
    UPDATE [Tracking].[Zone] SET [Active] = 'False';
    EXEC [Tracking].[DoConfigDefineZone] @AreaCode = '$AREA_CODE', @DefaultOutOfLineZoneCode = null, @CommandCode = null, @Code = 'Crane', @PlcCode = 1, @Name = 'Crane', @Description = 'Crane', @MaxItems = 150, @IsWB = False, @IsAutoWrap = True, @IsOutOfLine = True, @AllowBasicEdition = True, @Active = True;
    EXEC [Tracking].[DoConfigDefineZone] @AreaCode = '$AREA_CODE', @DefaultOutOfLineZoneCode = null, @CommandCode = null, @Code = 'DeadZone', @PlcCode = 2, @Name = 'DeadZone', @Description = 'DeadZone', @MaxItems = 25, @IsWB = False, @IsAutoWrap = True, @IsOutOfLine = True, @AllowBasicEdition = True, @Active = True;
    -- End dump for table Tracking.Zone

    -- Begin dump for table Tracking.TrackingLocation
    -- End dump for table Tracking.TrackingLocation

    -- Begin dump for table Tracking.Handshake
    -- End dump for table Tracking.Handshake

    -- Begin dump for table Tracking.AttributeParameter
    -- End dump for table Tracking.AttributeParameter

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
