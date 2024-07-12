--- Config dump file for schema Shift
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Shift.Crew
    UPDATE [Shift].[Crew] SET [Active] = 'False';
    EXEC [Shift].[DoConfigDefineCrew] @Code = 'D', @Name = 'D', @Description = 'Letra D', @Data = 'D', @Active = True;
    EXEC [Shift].[DoConfigDefineCrew] @Code = 'E', @Name = 'E', @Description = 'Letra E', @Data = 'E', @Active = True;
    EXEC [Shift].[DoConfigDefineCrew] @Code = 'F', @Name = 'F', @Description = 'Letra F', @Data = 'F', @Active = True;
    EXEC [Shift].[DoConfigDefineCrew] @Code = 'G', @Name = 'G', @Description = 'Letra G', @Data = 'G', @Active = True;
    EXEC [Shift].[DoConfigDefineCrew] @Code = 'H', @Name = 'H', @Description = 'Letra H', @Data = 'H', @Active = True;
    EXEC [Shift].[DoConfigDefineCrew] @Code = 'J', @Name = 'J', @Description = 'Letra J', @Data = 'J', @Active = True;
    EXEC [Shift].[DoConfigDefineCrew] @Code = 'K', @Name = 'K', @Description = 'Letra K', @Data = 'K', @Active = True;
    -- End dump for table Shift.Crew

    -- Begin dump for table Shift.CrewProfile
    UPDATE [Shift].[CrewProfile] SET [Active] = 'False';
    EXEC [Shift].[DoConfigDefineCrewProfile] @Code = '6X1', @Name = '6X1', @Description = '6X1', @WorkDays = 6, @FreeDays = 1, @Rotation = -1, @Active = True;
    EXEC [Shift].[DoConfigDefineCrewProfile] @Code = '6X2', @Name = '6X2', @Description = '6X2', @WorkDays = 6, @FreeDays = 2, @Rotation = -1, @Active = True;
    EXEC [Shift].[DoConfigDefineCrewProfile] @Code = '7X0', @Name = '7X0', @Description = '7X0', @WorkDays = 7, @FreeDays = 0, @Rotation = -1, @Active = True;
    EXEC [Shift].[DoConfigDefineCrewProfile] @Code = 'CREW1', @Name = 'CREW1', @Description = 'CREW1', @WorkDays = 7, @FreeDays = 0, @Rotation = -1, @Active = True;
    -- End dump for table Shift.CrewProfile

    -- Begin dump for table Shift.ShiftProfile
    UPDATE [Shift].[ShiftProfile] SET [Active] = 'False';
    EXEC [Shift].[DoConfigDefineShiftProfile] @Code = 'STD8H', @Name = 'STD8H', @Description = 'STD8H', @Active = True;
    -- End dump for table Shift.ShiftProfile

    -- Begin dump for table Shift.CrewProfileCrew
    UPDATE [Shift].[CrewProfileCrew] SET [Active] = 'False';
    EXEC [Shift].[DoConfigDefineCrewProfileCrew] @CrewProfileCode = '6X1', @CrewCode = 'F', @StartShiftDate = '02/09/2015 00:00:00', @StartShiftNumber = 1, @Active = True;
    EXEC [Shift].[DoConfigDefineCrewProfileCrew] @CrewProfileCode = '6X1', @CrewCode = 'G', @StartShiftDate = '02/09/2015 00:00:00', @StartShiftNumber = 2, @Active = True;
    EXEC [Shift].[DoConfigDefineCrewProfileCrew] @CrewProfileCode = '6X1', @CrewCode = 'H', @StartShiftDate = '02/09/2015 00:00:00', @StartShiftNumber = 3, @Active = True;
    EXEC [Shift].[DoConfigDefineCrewProfileCrew] @CrewProfileCode = '6X2', @CrewCode = 'D', @StartShiftDate = '02/13/2018 00:00:00', @StartShiftNumber = 1, @Active = True;
    EXEC [Shift].[DoConfigDefineCrewProfileCrew] @CrewProfileCode = '6X2', @CrewCode = 'E', @StartShiftDate = '02/11/2018 00:00:00', @StartShiftNumber = 2, @Active = True;
    EXEC [Shift].[DoConfigDefineCrewProfileCrew] @CrewProfileCode = '6X2', @CrewCode = 'J', @StartShiftDate = '02/09/2018 00:00:00', @StartShiftNumber = 3, @Active = True;
    EXEC [Shift].[DoConfigDefineCrewProfileCrew] @CrewProfileCode = '6X2', @CrewCode = 'K', @StartShiftDate = '02/07/2018 00:00:00', @StartShiftNumber = 1, @Active = True;
    EXEC [Shift].[DoConfigDefineCrewProfileCrew] @CrewProfileCode = '7X0', @CrewCode = 'F', @StartShiftDate = '02/09/2015 00:00:00', @StartShiftNumber = 1, @Active = True;
    EXEC [Shift].[DoConfigDefineCrewProfileCrew] @CrewProfileCode = '7X0', @CrewCode = 'G', @StartShiftDate = '02/09/2015 00:00:00', @StartShiftNumber = 2, @Active = True;
    EXEC [Shift].[DoConfigDefineCrewProfileCrew] @CrewProfileCode = '7X0', @CrewCode = 'H', @StartShiftDate = '02/09/2015 00:00:00', @StartShiftNumber = 3, @Active = True;
    -- End dump for table Shift.CrewProfileCrew

    -- Begin dump for table Shift.Shift
    UPDATE [Shift].[Shift] SET [Active] = 'False';
    EXEC [Shift].[DoConfigDefineShift] @ShiftProfileCode = 'STD8H', @Code = 'Shift1', @Name = '1', @Description = 'Turno 1', @ShiftNumber = 1, @BeginTime = '05:00:00', @EndTime = '13:00:00', @Active = True;
    EXEC [Shift].[DoConfigDefineShift] @ShiftProfileCode = 'STD8H', @Code = 'Shift2', @Name = '2', @Description = 'Turno 2', @ShiftNumber = 2, @BeginTime = '13:00:00', @EndTime = '21:00:00', @Active = True;
    EXEC [Shift].[DoConfigDefineShift] @ShiftProfileCode = 'STD8H', @Code = 'Shift3', @Name = '3', @Description = 'Turno 3', @ShiftNumber = 3, @BeginTime = '21:00:00', @EndTime = '05:00:00', @Active = True;
    -- End dump for table Shift.Shift

    -- Begin dump for table Shift.ShiftProfileCrewProfile
    UPDATE [Shift].[ShiftProfileCrewProfile] SET [Active] = 'False';
    EXEC [Shift].[DoConfigDefineShiftProfileCrewProfile] @ShiftProfileCode = 'STD8H', @CrewProfileCode = '6X2', @Active = True;
    -- End dump for table Shift.ShiftProfileCrewProfile

    -- Begin dump for table Shift.ShiftCrewProfile
    UPDATE [Shift].[ShiftCrewProfile] SET [Active] = 'False';
    EXEC [Shift].[DoConfigDefineShiftCrewProfile] @ShiftProfileCrewProfileShiftProfileCode = 'STD8H', @ShiftProfileCrewProfileCrewProfileCode = '6X2', @AreaCode = '$AREA_CODE', @MachineWorkflowCode = 'ALL', @Code = '$AREA_CODE', @Name = '$AREA_CODE', @Description = '$AREA_CODE', @IsInUse = True, @Active = True;
    -- End dump for table Shift.ShiftCrewProfile

    -- Begin dump for table Shift.ShiftCrewProfileSchedule
    -- End dump for table Shift.ShiftCrewProfileSchedule

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
