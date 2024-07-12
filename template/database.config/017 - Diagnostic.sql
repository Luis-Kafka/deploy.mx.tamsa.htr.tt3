--- Config dump file for schema Diagnostic
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Diagnostic.Attribute
    UPDATE [Diagnostic].[Attribute] SET [Active] = 'False';
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 7, @Code = 'AlarmCode', @Name = 'AlarmCode', @Description = 'AlarmCode', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 7, @Code = 'DestinationZone', @Name = 'DestinationZone', @Description = 'DestinationZone', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 7, @Code = 'DummyHandshakeCompositionCode', @Name = 'DummyHandshakeCompositionCode', @Description = 'DummyHandshakeCompositionCode', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 7, @Code = 'DummyIssueCauseMessage', @Name = 'DummyIssueCauseMessage', @Description = 'DummyIssueCauseMessage', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 7, @Code = 'DummyIssueSuggestionMessage', @Name = 'DummyIssueSuggestionMessage', @Description = 'DummyIssueSuggestionMessage', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 7, @Code = 'DummyZoneCode', @Name = 'DummyZoneCode', @Description = 'DummyZoneCode', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 7, @Code = 'HandshakeCompositionCode', @Name = 'HandshakeCompositionCode', @Description = 'HandshakeCompositionCode', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 2, @Code = 'IdFailedHandshake', @Name = 'IdFailedHandshake', @Description = 'IdFailedHandshake', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 2, @Code = 'IdTracking', @Name = 'IdTracking', @Description = 'IdTracking', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 2, @Code = 'IdTrackingPass', @Name = 'IdTrackingPass', @Description = 'IdTrackingPass', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 7, @Code = 'IssueCauseMessage', @Name = 'IssueCauseMessage', @Description = 'IssueCauseMessage', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 7, @Code = 'IssueSuggestionMessage', @Name = 'IssueSuggestionMessage', @Description = 'IssueSuggestionMessage', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 8, @Code = 'LastInCheckMode', @Name = 'LastInCheckMode', @Description = 'LastInCheckMode', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 11, @Code = 'LastTimestamp', @Name = 'LastTimestamp', @Description = 'LastTimestamp', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 8, @Code = 'PreviousInCheckMode', @Name = 'PreviousInCheckMode', @Description = 'PreviousInCheckMode', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 11, @Code = 'PreviousTimestamp', @Name = 'PreviousTimestamp', @Description = 'PreviousTimestamp', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 8, @Code = 'RequiresCheckMode', @Name = 'RequiresCheckMode', @Description = 'RequiresCheckMode', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 7, @Code = 'SourceZone', @Name = 'SourceZone', @Description = 'SourceZone', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 2, @Code = 'TimeBetweenTriggers', @Name = 'TimeBetweenTriggers', @Description = 'TimeBetweenTriggers', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 8, @Code = 'TimeoutExpired', @Name = 'TimeoutExpired', @Description = 'TimeoutExpired', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineAttribute] @idDataType = 8, @Code = 'TransactionFailed', @Name = 'TransactionFailed', @Description = 'TransactionFailed', @Active = True;
    -- End dump for table Diagnostic.Attribute

    -- Begin dump for table Diagnostic.IssueCause
    UPDATE [Diagnostic].[IssueCause] SET [Active] = 'False';
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'AlarmActive', @Name = 'AlarmActive', @Description = 'AlarmActive', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'HsCompGeneral', @Name = 'HsCompGeneral', @Description = 'HsCompGeneral', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'HsCompMode', @Name = 'HsCompMode', @Description = 'HsCompMode', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'HsCompRepeated', @Name = 'HsCompRepeated', @Description = 'HsCompRepeated', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'HsCompTimeout', @Name = 'HsCompTimeout', @Description = 'HsCompTimeout', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'HsCompTransaction', @Name = 'HsCompTransaction', @Description = 'HsCompTransaction', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'HsConditionsError', @Name = 'Handshake conditions error', @Description = 'Handshake conditions were not met', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'HsError', @Name = 'Handshake error', @Description = 'Handshake general error', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'HskCmpFail', @Name = 'HskCmpFail', @Description = 'HskCmpFail', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'HsModeError', @Name = 'Handshake mode error', @Description = 'Handshake triggered by PLC without properly handling check mode', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'HsTimeoutError', @Name = 'Handshake timeout', @Description = 'Handshake did not finished executing because of timeout', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'HsTimingError', @Name = 'Handshake timing error', @Description = 'Handshake triggered by PLC at a faster rate than expected', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'HsTransactionError', @Name = 'Handshake transaction error', @Description = 'Handshake did not finished executing because transaction failed', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'TrkDestinationZoneFull', @Name = 'TrkDestinationZoneFull', @Description = 'TrkDestinationZoneFull', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'TrkInvalidIdTracking', @Name = 'TrkInvalidIdTracking', @Description = 'TrkInvalidIdTracking', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'TrkInvalidIdTrackingPass', @Name = 'TrkInvalidIdTrackingPass', @Description = 'TrkInvalidIdTrackingPass', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'TrkNoActiveProductionFound', @Name = 'TrkNoActiveProductionFound', @Description = 'TrkNoActiveProductionFound', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueCause] @Code = 'TrkSourceZoneEmpty', @Name = 'TrkSourceZoneEmpty', @Description = 'TrkSourceZoneEmpty', @Active = True;
    -- End dump for table Diagnostic.IssueCause

    -- Begin dump for table Diagnostic.IssueSuggestion
    UPDATE [Diagnostic].[IssueSuggestion] SET [Active] = 'False';
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'AlarmActive', @Name = 'AlarmActive', @Description = 'AlarmActive', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'AlarmSuggestion', @Name = 'Alarm suggestion', @Description = 'Make sure that count of physical pipes matches versus count of logical pipes in Tracking module per zone. Verify other alarms currently ON in Alarm module.', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'HsCompGeneral', @Name = 'HsCompGeneral', @Description = 'HsCompGeneral', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'HsCompMode', @Name = 'HsCompMode', @Description = 'HsCompMode', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'HsCompRepeated', @Name = 'HsCompRepeated', @Description = 'HsCompRepeated', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'HsCompTimeout', @Name = 'HsCompTimeout', @Description = 'HsCompTimeout', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'HsCompTransaction', @Name = 'HsCompTransaction', @Description = 'HsCompTransaction', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'HskCmpSuggestion', @Name = 'HskCmpSuggestion', @Description = 'HskCmpSuggestion', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'HsModeSuggestion', @Name = 'Handshake mode suggestion', @Description = 'Report failure to automation technical support', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'HsSuggestion', @Name = 'Handshake suggestion', @Description = 'Verify operational conditions and re-execute handshake through L2 Trigger dialog', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'HsTimeoutSuggestion', @Name = 'Handshake timeout suggestion', @Description = 'Verify operational conditions and re-execute handshake through L2 Trigger dialog. If error persists, report failure to automation technical support', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'HsTimingSuggestion', @Name = 'Handshake timing suggestion', @Description = 'Report failure to automation technical support', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'HsTransactionSuggestion', @Name = 'Handshake transaction suggestion', @Description = 'Verify operational conditions and re-execute handshake through L2 Trigger dialog. If error persists, report failure to automation technical support', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'TrkDestinationZoneFull', @Name = 'TrkDestinationZoneFull', @Description = 'TrkDestinationZoneFull', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'TrkInvalidIdTracking', @Name = 'TrkInvalidIdTracking', @Description = 'TrkInvalidIdTracking', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'TrkInvalidIdTrackingPass', @Name = 'TrkInvalidIdTrackingPass', @Description = 'TrkInvalidIdTrackingPass', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'TrkNoActiveProductionFound', @Name = 'TrkNoActiveProductionFound', @Description = 'TrkNoActiveProductionFound', @ValueUri = '', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineIssueSuggestion] @Code = 'TrkSourceZoneEmpty', @Name = 'TrkSourceZoneEmpty', @Description = 'TrkSourceZoneEmpty', @ValueUri = '', @Active = True;
    -- End dump for table Diagnostic.IssueSuggestion

    -- Begin dump for table Diagnostic.Severity
    UPDATE [Diagnostic].[Severity] SET [Active] = 'False';
    EXEC [Diagnostic].[DoConfigDefineSeverity] @Code = 'Critical', @Name = 'Critical', @Description = 'Critical', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineSeverity] @Code = 'High', @Name = 'High', @Description = 'High', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineSeverity] @Code = 'Low', @Name = 'Low', @Description = 'Low', @Active = True;
    EXEC [Diagnostic].[DoConfigDefineSeverity] @Code = 'Medium', @Name = 'Medium', @Description = 'Medium', @Active = True;
    -- End dump for table Diagnostic.Severity

    -- Begin dump for table Diagnostic.HandshakeComposition
    -- End dump for table Diagnostic.HandshakeComposition

    -- Begin dump for table Diagnostic.Alarm
    -- End dump for table Diagnostic.Alarm

    -- Begin dump for table Diagnostic.HandshakeAlarm
    -- End dump for table Diagnostic.HandshakeAlarm

    -- Begin dump for table Diagnostic.PresenceSensor
    -- End dump for table Diagnostic.PresenceSensor

    -- Begin dump for table Diagnostic.PresenceSensorHandshake
    -- End dump for table Diagnostic.PresenceSensorHandshake

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
