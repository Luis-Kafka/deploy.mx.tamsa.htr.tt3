--- Config dump file for schema Message
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Message.AcknowledgeScope
    UPDATE [Message].[AcknowledgeScope] SET [Active] = 'False';
    IF OBJECT_ID('Configuration.DoReseedTableToMax') IS NOT NULL BEGIN EXEC Configuration.DoReseedTableToMax 'Message', 'AcknowledgeScope' END;
    EXEC [Message].[DoConfigDefineAcknowledgeScope] @Code = 'Area', @Name = 'Area', @Description = 'Area Code', @Active = True;
    EXEC [Message].[DoConfigDefineAcknowledgeScope] @Code = 'User', @Name = 'User', @Description = 'User Code', @Active = True;
    EXEC [Message].[DoConfigDefineAcknowledgeScope] @Code = 'Zone', @Name = 'Zone', @Description = 'Zone Code', @Active = True;
    -- End dump for table Message.AcknowledgeScope

    -- Begin dump for table Message.Category
    UPDATE [Message].[Category] SET [Active] = 'False';
    IF OBJECT_ID('Configuration.DoReseedTableToMax') IS NOT NULL BEGIN EXEC Configuration.DoReseedTableToMax 'Message', 'Category' END;
    EXEC [Message].[DoConfigDefineCategory] @Code = 'Alert', @Name = 'Alert', @Description = 'Alert Category Message', @Active = True;
    EXEC [Message].[DoConfigDefineCategory] @Code = 'Informative', @Name = 'Informative', @Description = 'Informative Category Message', @Active = True;
    EXEC [Message].[DoConfigDefineCategory] @Code = 'Reminder', @Name = 'Reminder', @Description = 'Reminder Category Message', @Active = True;
    EXEC [Message].[DoConfigDefineCategory] @Code = 'Warning', @Name = 'Warning', @Description = 'Warning Category Message', @Active = True;
    -- End dump for table Message.Category

    -- Begin dump for table Message.MessageTemplate
    -- End dump for table Message.MessageTemplate

    -- Begin dump for table Message.NotificationList
    -- UPDATE [Message].[NotificationList] SET [Active] = 'False';
    -- IF OBJECT_ID('Configuration.DoReseedTableToMax') IS NOT NULL BEGIN EXEC Configuration.DoReseedTableToMax 'Message', 'NotificationList' END;
    -- EXEC [Message].[DoConfigDefineNotificationList] @Code = 'EXPANDER', @Name = 'EXPANDER', @Description = 'EXPANDER', @Active = True;
    -- EXEC [Message].[DoConfigDefineNotificationList] @Code = 'MESA1', @Name = 'MESA1', @Description = 'MESA1', @Active = True;
    -- EXEC [Message].[DoConfigDefineNotificationList] @Code = 'PH_BYPASS', @Name = 'PH_BYPASS', @Description = 'PH_BYPASS', @Active = True;
    -- EXEC [Message].[DoConfigDefineNotificationList] @Code = 'UT_BYPASS', @Name = 'UT_BYPASS', @Description = 'UT_BYPASS', @Active = True;
    -- EXEC [Message].[DoConfigDefineNotificationList] @Code = 'UT_TUBOSINPH', @Name = 'UT_TUBOSINPH', @Description = 'UT_TUBOSINPH', @Active = True;
    -- End dump for table Message.NotificationList

    -- Begin dump for table Message.Severity
    UPDATE [Message].[Severity] SET [Active] = 'False';
    IF OBJECT_ID('Configuration.DoReseedTableToMax') IS NOT NULL BEGIN EXEC Configuration.DoReseedTableToMax 'Message', 'Severity' END;
    EXEC [Message].[DoConfigDefineSeverity] @Code = 'HIGH', @Name = 'HIGH', @Description = 'HIGH PRIORITY MESSAGE', @Color = 16751968, @FontColor = 0, @Priority = 2, @Active = True;
    EXEC [Message].[DoConfigDefineSeverity] @Code = 'LOW', @Name = 'LOW', @Description = 'LOW PRIORITY MESSAGE', @Color = 16777152, @FontColor = 0, @Priority = 4, @Active = True;
    EXEC [Message].[DoConfigDefineSeverity] @Code = 'MEDIUM', @Name = 'MEDIUM', @Description = 'MEDIUM PRIORITY MESSAGE', @Color = 2012734, @FontColor = 0, @Priority = 3, @Active = True;
    EXEC [Message].[DoConfigDefineSeverity] @Code = 'VHIGH', @Name = 'VERY HIGH', @Description = 'VERY HIGH PRIORITY MESSAGE', @Color = 10027008, @FontColor = 16777215, @Priority = 1, @Active = True;
    -- End dump for table Message.Severity

    -- Begin dump for table Message.ZoneNotificationList
    -- UPDATE [Message].[ZoneNotificationList] SET [Active] = 'False';
    -- IF OBJECT_ID('Configuration.DoReseedTableToMax') IS NOT NULL BEGIN EXEC Configuration.DoReseedTableToMax 'Message', 'ZoneNotificationList' END;
    -- EXEC [Message].[DoConfigDefineZoneNotificationList] @ZoneCode = 'EXPANDER', @NotificationListCode = 'EXPANDER', @Active = True;
    -- EXEC [Message].[DoConfigDefineZoneNotificationList] @ZoneCode = 'MESA1', @NotificationListCode = 'MESA1', @Active = True;
    -- EXEC [Message].[DoConfigDefineZoneNotificationList] @ZoneCode = 'PH', @NotificationListCode = 'PH_BYPASS', @Active = True;
    -- EXEC [Message].[DoConfigDefineZoneNotificationList] @ZoneCode = 'UTPORTICO', @NotificationListCode = 'UT_BYPASS', @Active = True;
    -- EXEC [Message].[DoConfigDefineZoneNotificationList] @ZoneCode = 'UTPORTICO', @NotificationListCode = 'UT_TUBOSINPH', @Active = True;
    -- End dump for table Message.ZoneNotificationList

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
