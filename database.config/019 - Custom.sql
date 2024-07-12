--- Config dump file for schema Custom
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Custom.TrackingSpecificationAttribute
    -- End dump for table Custom.TrackingSpecificationAttribute

    -- Begin dump for table Custom.TrackingPassAttribute
    -- End dump for table Custom.TrackingPassAttribute

    -- Begin dump for table Custom.TrackingZone
    -- End dump for table Custom.TrackingZone

    -- Begin dump for table Custom.TrackingHslColor
    UPDATE [Custom].[TrackingHslColor] SET [Active] = 'False';
    EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 0  	, @S = 180, @L = 100, @SortOrder = 1, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 30	, @S = 180, @L = 180, @SortOrder = 2, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 60	, @S = 180, @L = 100, @SortOrder = 3, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 90	, @S = 180, @L = 180, @SortOrder = 4, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 120 , @S = 180, @L = 100, @SortOrder = 5, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 150 , @S = 180, @L = 180, @SortOrder = 6, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 180 , @S = 180, @L = 100, @SortOrder = 7, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 210 , @S = 180, @L = 180, @SortOrder = 8, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 15	, @S = 180, @L = 100, @SortOrder = 9, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 45	, @S = 180, @L = 180, @SortOrder = 10, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 75	, @S = 180, @L = 100, @SortOrder = 11, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 105 , @S = 180, @L = 180, @SortOrder = 12, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 135 , @S = 180, @L = 100, @SortOrder = 13, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 165 , @S = 180, @L = 180, @SortOrder = 14, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 195 , @S = 180, @L = 100, @SortOrder = 15, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 225 , @S = 180, @L = 180, @SortOrder = 16, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 0	, @S = 180, @L = 140, @SortOrder = 17, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 30	, @S = 180, @L = 60	, @SortOrder = 18, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 60	, @S = 180, @L = 140, @SortOrder = 19, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 90	, @S = 180, @L = 60	, @SortOrder = 20, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 120 , @S = 180, @L = 140, @SortOrder = 21, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 150 , @S = 180, @L = 60	, @SortOrder = 22, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 180 , @S = 180, @L = 140, @SortOrder = 23, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 210 , @S = 180, @L = 60	, @SortOrder = 24, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 15	, @S = 180, @L = 140, @SortOrder = 25, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 45	, @S = 180, @L = 60	, @SortOrder = 26, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 75	, @S = 180, @L = 140, @SortOrder = 27, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 105 , @S = 180, @L = 60	, @SortOrder = 28, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 135 , @S = 180, @L = 140, @SortOrder = 29, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 165 , @S = 180, @L = 60	, @SortOrder = 30, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 195 , @S = 180, @L = 140, @SortOrder = 31, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 225 , @S = 180, @L = 60	, @SortOrder = 32, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 0	, @S = 180, @L = 180, @SortOrder = 33, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 30	, @S = 180, @L = 100, @SortOrder = 34, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 60	, @S = 180, @L = 180, @SortOrder = 35, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 90	, @S = 180, @L = 100, @SortOrder = 36, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 120 , @S = 180, @L = 180, @SortOrder = 37, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 150 , @S = 180, @L = 100, @SortOrder = 38, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 180 , @S = 180, @L = 180, @SortOrder = 39, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 210 , @S = 180, @L = 100, @SortOrder = 40, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 15	, @S = 180, @L = 180, @SortOrder = 41, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 45	, @S = 180, @L = 100, @SortOrder = 42, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 75	, @S = 180, @L = 180, @SortOrder = 43, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 105 , @S = 180, @L = 100, @SortOrder = 44, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 135 , @S = 180, @L = 180, @SortOrder = 45, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 165 , @S = 180, @L = 100, @SortOrder = 46, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 195 , @S = 180, @L = 180, @SortOrder = 47, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 225 , @S = 180, @L = 100, @SortOrder = 48, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 0	, @S = 180, @L = 60	, @SortOrder = 49, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 30	, @S = 180, @L = 140, @SortOrder = 50, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 60	, @S = 180, @L = 60	, @SortOrder = 51, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 90	, @S = 180, @L = 140, @SortOrder = 52, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 120 , @S = 180, @L = 60	, @SortOrder = 53, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 150 , @S = 180, @L = 140, @SortOrder = 54, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 180 , @S = 180, @L = 60	, @SortOrder = 55, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 210 , @S = 180, @L = 140, @SortOrder = 56, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 15	, @S = 180, @L = 60	, @SortOrder = 57, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 45	, @S = 180, @L = 140, @SortOrder = 58, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 75	, @S = 180, @L = 60	, @SortOrder = 59, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 105 , @S = 180, @L = 140, @SortOrder = 60, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 135 , @S = 180, @L = 60	, @SortOrder = 61, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 165 , @S = 180, @L = 140, @SortOrder = 62, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 195 , @S = 180, @L = 60	, @SortOrder = 63, @Active = True;
	EXEC [Custom].[DoConfigDefineTrackingHslColor] @H = 225 , @S = 180, @L = 140, @SortOrder = 64, @Active = True;
    -- End dump for table Custom.TrackingHslColor
	
    -- Begin dump for table Custom.Machine
    -- EXEC [Custom].[DoConfigDefineMachine] @MachineMachineCode = 'CND', @ProductionSortOrder = 3;
    -- End dump for table Custom.Machine
	
	
	
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
