--- Config dump file for schema Tda
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Tda.CompressionMethod
    UPDATE [Tda].[CompressionMethod] SET [Active] = 'False';
    EXEC [Tda].[DoConfigDefineCompressionMethod] @id = 1, @Code = 'None', @Name = 'None', @Description = 'None', @Active = True;
    -- EXEC [Tda].[DoConfigDefineCompressionMethod] @id = 3, @Code = 'SfZip', @Name = 'SfZip', @Description = 'SfZip', @Active = True;
    EXEC [Tda].[DoConfigDefineCompressionMethod] @id = 2, @Code = 'Zip', @Name = 'GZip', @Description = 'GZip', @Active = True;
    -- End dump for table Tda.CompressionMethod

    -- Begin dump for table Tda.ErrorType
    UPDATE [Tda].[ErrorType] SET [Active] = 'False';
    EXEC [Tda].[DoConfigDefineErrorType] @id = 1, @Code = 'Error', @Name = 'Error', @Description = 'Error', @Severity = -1, @Active = True;
    EXEC [Tda].[DoConfigDefineErrorType] @id = 3, @Code = 'SamplingLost', @Name = 'SamplingLost', @Description = 'SamplingLost', @Severity = -2, @Active = True;
    EXEC [Tda].[DoConfigDefineErrorType] @id = 2, @Code = 'Warning', @Name = 'Warning', @Description = 'Warning', @Severity = 1, @Active = True;
    -- End dump for table Tda.ErrorType

    -- Begin dump for table Tda.GroupType
    UPDATE [Tda].[GroupType] SET [Active] = 'False';
    EXEC [Tda].[DoConfigDefineGroupType] @id = 2, @Code = 'ByKey', @Name = 'ByKey', @Description = 'ByKey', @Active = True;
    EXEC [Tda].[DoConfigDefineGroupType] @id = 5, @Code = 'ByProductId', @Name = 'ByProductId', @Description = 'ByProductId', @Active = True;
    EXEC [Tda].[DoConfigDefineGroupType] @id = 4, @Code = 'ByTracking', @Name = 'ByTracking', @Description = 'ByTracking', @Active = True;
    EXEC [Tda].[DoConfigDefineGroupType] @id = 3, @Code = 'ByTrackingPass', @Name = 'ByTrackingPass', @Description = 'ByTrackingPass', @Active = True;
    EXEC [Tda].[DoConfigDefineGroupType] @id = 1, @Code = 'None', @Name = 'None', @Description = 'None', @Active = True;
    -- End dump for table Tda.GroupType

    -- Begin dump for table Tda.SaveFormat
    UPDATE [Tda].[SaveFormat] SET [Active] = 'False';
    EXEC [Tda].[DoConfigDefineSaveFormat] @id = 6, @Code = 'Undefined', @Name = 'Undefined', @Description = 'Undefined', @Active = True;
    EXEC [Tda].[DoConfigDefineSaveFormat] @id = 5, @Code = 'YOnly', @Name = 'Y Only', @Description = 'Y Only', @Active = True;
    EXEC [Tda].[DoConfigDefineSaveFormat] @id = 2, @Code = 'YXAbsoluteNumber', @Name = 'Y - X Absolute Number', @Description = 'Y - X Absolute Number', @Active = True;
    EXEC [Tda].[DoConfigDefineSaveFormat] @id = 1, @Code = 'YXAbsoluteTime', @Name = 'Y - X Absolute Time', @Description = 'Y - X Absolute Time', @Active = True;
    EXEC [Tda].[DoConfigDefineSaveFormat] @id = 4, @Code = 'YXDifferentialNumber', @Name = 'Y - X Differential Number', @Description = 'Y - X Differential Number', @Active = True;
    EXEC [Tda].[DoConfigDefineSaveFormat] @id = 3, @Code = 'YXDifferentialTime', @Name = 'Y - X Differential Time', @Description = 'Y - X Differential Time', @Active = True;
    -- End dump for table Tda.SaveFormat

    -- Begin dump for table Tda.TagType
    UPDATE [Tda].[TagType] SET [Active] = 'False';
    EXEC [Tda].[DoConfigDefineTagType] @Code = 'EVENT', @Name = 'Event', @Description = null, @IsBlob = False, @IsDerived = False, @Active = True;
    EXEC [Tda].[DoConfigDefineTagType] @Code = 'POINT', @Name = 'Point', @Description = null, @IsBlob = False, @IsDerived = False, @Active = True;
    EXEC [Tda].[DoConfigDefineTagType] @Code = 'POINT_L2', @Name = 'PointL2', @Description = 'PointL2', @IsBlob = False, @IsDerived = True, @Active = True;
    EXEC [Tda].[DoConfigDefineTagType] @Code = 'PRESET', @Name = 'Preset', @Description = null, @IsBlob = False, @IsDerived = False, @Active = True;
    EXEC [Tda].[DoConfigDefineTagType] @Code = 'READ_AREA', @Name = 'ReadArea', @Description = null, @IsBlob = False, @IsDerived = False, @Active = True;
    EXEC [Tda].[DoConfigDefineTagType] @Code = 'READ_AREA_TREND', @Name = 'ReadAreaTrend', @Description = null, @IsBlob = True, @IsDerived = False, @Active = True;
    EXEC [Tda].[DoConfigDefineTagType] @Code = 'TREND', @Name = 'Trend', @Description = null, @IsBlob = True, @IsDerived = False, @Active = True;
    EXEC [Tda].[DoConfigDefineTagType] @Code = 'TREND_L2', @Name = 'TrendL2', @Description = 'TrendL2', @IsBlob = True, @IsDerived = True, @Active = True;
    -- End dump for table Tda.TagType

    -- Begin dump for table Tda.Egu
    EXEC [Tda].[DoConfigDefineEgu] @EguCode = 'KG', @YAxisLow = null, @YAxisHigh = null;
    EXEC [Tda].[DoConfigDefineEgu] @EguCode = 'MM', @YAxisLow = 10, @YAxisHigh = null;
    EXEC [Tda].[DoConfigDefineEgu] @EguCode = 'SEC', @YAxisLow = null, @YAxisHigh = null;
    -- End dump for table Tda.Egu

    -- Begin dump for table Tda.PointX
    -- End dump for table Tda.PointX

    -- Begin dump for table Tda.TrendX
    -- End dump for table Tda.TrendX

    -- Begin dump for table Tda.PlcTagPoint
    -- End dump for table Tda.PlcTagPoint

    -- Begin dump for table Tda.PlcTagTrend
    -- End dump for table Tda.PlcTagTrend

    -- Begin dump for table Tda.HandshakeX
    -- End dump for table Tda.HandshakeX

    -- Begin dump for table Tda.Tag
    -- End dump for table Tda.Tag

    -- Begin dump for table Tda.AttributeTag
    -- End dump for table Tda.AttributeTag

    -- Begin dump for table Tda.Derived
    -- End dump for table Tda.Derived

    -- Begin dump for table Tda.Event
    -- End dump for table Tda.Event

    -- Begin dump for table Tda.Handshake
    -- End dump for table Tda.Handshake

    -- Begin dump for table Tda.Point
    -- End dump for table Tda.Point

    -- Begin dump for table Tda.ReadArea
    -- End dump for table Tda.ReadArea

    -- Begin dump for table Tda.Trend
    -- End dump for table Tda.Trend

    -- Begin dump for table Tda.Preset
    -- End dump for table Tda.Preset

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
