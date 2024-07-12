--- Config dump file for schema Quality
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Quality.Code
    -- End dump for table Quality.Code

    -- Begin dump for table Quality.Destination
    -- End dump for table Quality.Destination

    -- Begin dump for table Quality.CodeDestination
    -- End dump for table Quality.CodeDestination

    -- Begin dump for table Quality.CodeMachine
    -- End dump for table Quality.CodeMachine

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
