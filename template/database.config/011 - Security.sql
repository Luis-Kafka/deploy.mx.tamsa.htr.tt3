--- Config dump file for schema Security
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Security.Group
    UPDATE [Security].[Group] SET [Active] = 'False';
    EXEC [Security].[DoConfigDefineGroup] @Code = 'Operadores', @Name = 'Operadores', @Description = 'Operadores', @Active = True;
    EXEC [Security].[DoConfigDefineGroup] @Code = 'Administradores', @Name = 'Administradores', @Description = 'Administradores', @Active = True;
    EXEC [Security].[DoConfigDefineGroup] @Code = 'Mantenimiento', @Name = 'Mantenimiento', @Description = 'Mantenimiento', @Active = True;
    -- End dump for table Security.Group

    -- Begin dump for table Security.User
    UPDATE [Security].[User] SET [Active] = 'False';
    EXEC [Security].[DoConfigDefineUser] @Identification = 'Anonymous', @Password = '7079C72C21415131774625BA1D64F4B0', @LastName = 'Operador', @FirstName = 'Operador', @Picture = null, @Email = null, @Active = True;
    EXEC [Security].[DoConfigDefineUser] @Identification = 'Operator', @Password = '4B583376B2767B923C3E1DA60D10DE59', @LastName = 'Operador', @FirstName = 'Operador', @Picture = null, @Email = null, @Active = True;
	EXEC [Security].[DoConfigDefineUser] @Identification = 'PresetUser', @Password = NULL, @LastName = 'Manager', @FirstName = 'Preset', @Picture = null, @Email = null, @Active = True;
    -- End dump for table Security.User

    -- Begin dump for table Security.ApplicationCommand
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'AlarmView', @Command = 'ACKALARMS';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'AlarmView', @Command = 'EDITCOMMENT';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'InterruptionView', @Command = 'INTMAINTENANCE';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'InterruptionView', @Command = 'JUSTIFY';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'PresetView', @Command = 'APPLY';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'PresetView', @Command = 'APPLYALL';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'PresetView', @Command = 'MODIFYCAT';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'PresetView', @Command = 'MODIFYSET';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'ProductionView', @Command = 'CHANGEBATCH';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'ProductionView', @Command = 'EDITCOUNTERS';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'ProductionView', @Command = 'SELFUTBATCH';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'ProductionView', @Command = 'UNLOCKPROD';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TdaView', @Command = 'TDADELCHART';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TdaView', @Command = 'TDADELPAGE';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TdaView', @Command = 'TDAINSCHART';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TdaView', @Command = 'TDAINSPAGE';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TdaView', @Command = 'TDALOADCONFIG';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TdaView', @Command = 'TDASAVECONFIG';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TechAlarmView', @Command = 'ACKTECHALARMS';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TechAlarmView', @Command = 'EDITTECHCOMMENT';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TrackingView', @Command = 'TRKADVMOVE';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TrackingView', @Command = 'TRKBASICMOVE';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TrackingView', @Command = 'TRKDELITEM';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TrackingView', @Command = 'TRKEDITITEM';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TrackingView', @Command = 'TRKINSERTITEM';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TrackingView', @Command = 'TRKL2TRIGGER';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TrackingView', @Command = 'TRKMARKITEM';
	EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TechAlarmView', @Command = 'EDITTECHCOMMENT';
	EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'TechAlarmView', @Command = 'ACKTECHALARMS';
	EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'EntranceView', @Command = 'EDITBUNDLE';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'EntranceView', @Command = 'EDITPIPE';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'EntranceView', @Command = 'ENTEDIT';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'EntranceView', @Command = 'ENTINSERT';
	EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'EntranceView', @Command = 'ENTUNBUNDLE';
	EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'EntranceView', @Command = 'LOADBUNDLE';
	EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'ExitView', @Command = 'EXTOPERATE';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiAdmin', @Command = 'VdiApproval';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiAdmin', @Command = 'VdiEdit';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiAdmin', @Command = 'VdiRead';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNACCEPT';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNASSIGNMENT';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNCHECKINST';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNCONFIG';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNDELETE';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNDOCUMENTS';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNGRAPH';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNINSERT';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNINSERTINSPECTION';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNLOADORDER';
	EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNNEXTPAGE';
	EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNNOTOK';
	EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNOK';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNPENDING';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNPIPEEND';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNPREVIOUSPAGE';
	EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNREMOVE';
	EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNRESET';
	EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNSEARCH';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNSPECIFICATIONORDER';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNSTATUS';
    EXEC [Security].[DoConfigDefineApplicationCommand] @ApplicationCode = 'VdiView', @Command = 'BTNUNLOCK';

    -- End dump for table Security.ApplicationCommand

    -- Begin dump for table Security.GroupZone
    UPDATE [Security].[GroupZone] SET [Active] = 'False';
    EXEC [Security].[DoConfigDefineGroupZone] @GroupCode = 'Operadores', @ZoneCode = 'ALL', @Active = True;
    -- End dump for table Security.GroupZone

    -- Begin dump for table Security.UserGroup
    UPDATE [Security].[UserGroup] SET [Active] = 'False';
    EXEC [Security].[DoConfigDefineUserGroup] @UserIdentification = 'Anonymous', @GroupCode = 'Operadores', @Active = True, @ExpirationDateTime = null;
    EXEC [Security].[DoConfigDefineUserGroup] @UserIdentification = 'Operator', @GroupCode = 'Operadores', @Active = True, @ExpirationDateTime = null;
    -- End dump for table Security.UserGroup

    -- Begin dump for table Security.GroupPolicy
    UPDATE [Security].[GroupPolicy] SET [Active] = 'False';
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'AlarmView', @ApplicationCommandCommand = 'ACKALARMS', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'AlarmView', @ApplicationCommandCommand = 'EDITCOMMENT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'EntranceView', @ApplicationCommandCommand = 'EDITBUNDLE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'EntranceView', @ApplicationCommandCommand = 'EDITPIPE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'EntranceView', @ApplicationCommandCommand = 'ENTEDIT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'EntranceView', @ApplicationCommandCommand = 'ENTINSERT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'EntranceView', @ApplicationCommandCommand = 'ENTUNBUNDLE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'EntranceView', @ApplicationCommandCommand = 'LOADBUNDLE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'ExitView', @ApplicationCommandCommand = 'EXTOPERATE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'InterruptionView', @ApplicationCommandCommand = 'INTMAINTENANCE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'InterruptionView', @ApplicationCommandCommand = 'JUSTIFY', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'PresetView', @ApplicationCommandCommand = 'APPLY', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'PresetView', @ApplicationCommandCommand = 'APPLYALL', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'PresetView', @ApplicationCommandCommand = 'MODIFYCAT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'PresetView', @ApplicationCommandCommand = 'MODIFYSET', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'ProductionView', @ApplicationCommandCommand = 'CHANGEBATCH', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'ProductionView', @ApplicationCommandCommand = 'EDITCOUNTERS', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'ProductionView', @ApplicationCommandCommand = 'SELFUTBATCH', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'ProductionView', @ApplicationCommandCommand = 'UNLOCKPROD', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDADELCHART', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDADELPAGE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDAINSCHART', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDAINSPAGE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDALOADCONFIG', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDASAVECONFIG', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'TechAlarmView', @ApplicationCommandCommand = 'ACKTECHALARMS', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'TechAlarmView', @ApplicationCommandCommand = 'EDITTECHCOMMENT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKADVMOVE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKBASICMOVE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKDELITEM', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKEDITITEM', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKINSERTITEM', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKL2TRIGGER', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKMARKITEM', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiAdmin', @ApplicationCommandCommand = 'VdiApproval', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiAdmin', @ApplicationCommandCommand = 'VdiEdit', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiAdmin', @ApplicationCommandCommand = 'VdiRead', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNACCEPT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNASSIGNMENT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNCHECKINST', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNCONFIG', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNDELETE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNDOCUMENTS', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNGRAPH', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNINSERT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNINSERTINSPECTION', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNLOADORDER', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNNEXTPAGE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNNOTOK', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNOK', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNPENDING', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNPIPEEND', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNPREVIOUSPAGE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNREMOVE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNRESET', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNSEARCH', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNSPECIFICATIONORDER', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNSTATUS', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Administradores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNUNLOCK', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'AlarmView', @ApplicationCommandCommand = 'ACKALARMS', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'AlarmView', @ApplicationCommandCommand = 'EDITCOMMENT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'InterruptionView', @ApplicationCommandCommand = 'INTMAINTENANCE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'InterruptionView', @ApplicationCommandCommand = 'JUSTIFY', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'PresetView', @ApplicationCommandCommand = 'APPLY', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'PresetView', @ApplicationCommandCommand = 'APPLYALL', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'PresetView', @ApplicationCommandCommand = 'MODIFYCAT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'PresetView', @ApplicationCommandCommand = 'MODIFYSET', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'ProductionView', @ApplicationCommandCommand = 'CHANGEBATCH', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'ProductionView', @ApplicationCommandCommand = 'EDITCOUNTERS', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'ProductionView', @ApplicationCommandCommand = 'SELFUTBATCH', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'ProductionView', @ApplicationCommandCommand = 'UNLOCKPROD', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDADELCHART', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDADELPAGE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDAINSCHART', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDAINSPAGE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDALOADCONFIG', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDASAVECONFIG', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'TechAlarmView', @ApplicationCommandCommand = 'ACKTECHALARMS', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'TechAlarmView', @ApplicationCommandCommand = 'EDITTECHCOMMENT', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKADVMOVE', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKBASICMOVE', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKDELITEM', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKEDITITEM', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKINSERTITEM', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKL2TRIGGER', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKMARKITEM', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiAdmin', @ApplicationCommandCommand = 'VdiApproval', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiAdmin', @ApplicationCommandCommand = 'VdiEdit', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiAdmin', @ApplicationCommandCommand = 'VdiRead', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNACCEPT', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNASSIGNMENT', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNCHECKINST', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNCONFIG', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNDELETE', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNDOCUMENTS', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNGRAPH', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNINSERT', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNINSERTINSPECTION', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNLOADORDER', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNNEXTPAGE', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNNOTOK', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNOK', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNPENDING', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNPIPEEND', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNPREVIOUSPAGE', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNREMOVE', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNRESET', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNSEARCH', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNSPECIFICATIONORDER', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNSTATUS', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Mantenimiento', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNUNLOCK', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'AlarmView', @ApplicationCommandCommand = 'ACKALARMS', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'AlarmView', @ApplicationCommandCommand = 'EDITCOMMENT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'EntranceView', @ApplicationCommandCommand = 'EDITBUNDLE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'EntranceView', @ApplicationCommandCommand = 'EDITPIPE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'EntranceView', @ApplicationCommandCommand = 'ENTEDIT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'EntranceView', @ApplicationCommandCommand = 'ENTINSERT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'EntranceView', @ApplicationCommandCommand = 'ENTUNBUNDLE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'EntranceView', @ApplicationCommandCommand = 'LOADBUNDLE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'ExitView', @ApplicationCommandCommand = 'EXTOPERATE', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'InterruptionView', @ApplicationCommandCommand = 'INTMAINTENANCE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'InterruptionView', @ApplicationCommandCommand = 'JUSTIFY', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'PresetView', @ApplicationCommandCommand = 'APPLY', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'PresetView', @ApplicationCommandCommand = 'APPLYALL', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'PresetView', @ApplicationCommandCommand = 'MODIFYCAT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'PresetView', @ApplicationCommandCommand = 'MODIFYSET', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'ProductionView', @ApplicationCommandCommand = 'CHANGEBATCH', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'ProductionView', @ApplicationCommandCommand = 'EDITCOUNTERS', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'ProductionView', @ApplicationCommandCommand = 'SELFUTBATCH', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'ProductionView', @ApplicationCommandCommand = 'UNLOCKPROD', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDADELCHART', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDADELPAGE', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDAINSCHART', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDAINSPAGE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDALOADCONFIG', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'TdaView', @ApplicationCommandCommand = 'TDASAVECONFIG', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'TechAlarmView', @ApplicationCommandCommand = 'ACKTECHALARMS', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'TechAlarmView', @ApplicationCommandCommand = 'EDITTECHCOMMENT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKADVMOVE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKBASICMOVE', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKDELITEM', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKEDITITEM', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKINSERTITEM', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKL2TRIGGER', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'TrackingView', @ApplicationCommandCommand = 'TRKMARKITEM', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiAdmin', @ApplicationCommandCommand = 'VdiApproval', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiAdmin', @ApplicationCommandCommand = 'VdiEdit', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiAdmin', @ApplicationCommandCommand = 'VdiRead', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNACCEPT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNASSIGNMENT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNCHECKINST', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNCONFIG', @Active = True;
    --EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNDELETE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNDOCUMENTS', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNGRAPH', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNINSERT', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNINSERTINSPECTION', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNLOADORDER', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNNEXTPAGE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNNOTOK', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNOK', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNPENDING', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNPIPEEND', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNPREVIOUSPAGE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNREMOVE', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNRESET', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNSEARCH', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNSPECIFICATIONORDER', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNSTATUS', @Active = True;
    EXEC [Security].[DoConfigDefineGroupPolicy] @GroupCode = 'Operadores', @ApplicationCommandApplicationCode = 'VdiView', @ApplicationCommandCommand = 'BTNUNLOCK', @Active = True;
	-- End dump for table Security.GroupPolicy

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
