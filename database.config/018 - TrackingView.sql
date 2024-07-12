--- Config dump file for schema TrackingView
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table TrackingView.HandshakeCompositionParameter
    -- End dump for table TrackingView.HandshakeCompositionParameter

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
