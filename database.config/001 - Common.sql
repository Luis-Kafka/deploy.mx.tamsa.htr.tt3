--- Config dump file for schema Common
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Common.Application
    UPDATE [Common].[Application] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineApplication] @Code = 'AlarmManager', @Name = 'AlarmManager', @Description = 'AlarmManager', @IsManager = True, @FileName = 'AlarmManager.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'AlarmPanel', @Name = 'AlarmPanel', @Description = 'AlarmPanel', @IsManager = False, @FileName = 'AlarmPanel.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'AlarmView', @Name = 'Tenaris.View.Alarm', @Description = 'AlarmView', @IsManager = False, @FileName = 'Tenaris.View.Alarm.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'CommandManager', @Name = 'CommandManager', @Description = 'CommandManager', @IsManager = True, @FileName = 'CommandManager.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'DiagnosticManager', @Name = 'DiagnosticManager', @Description = 'DiagnosticManager', @IsManager = True, @FileName = 'DiagnosticManager', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'HandshakeManager', @Name = 'HandshakeManager', @Description = 'HandshakeManager', @IsManager = True, @FileName = 'HandshakeManager.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'InterruptionManager', @Name = 'InterruptionManager', @Description = 'InterruptionManager', @IsManager = True, @FileName = 'InterruptionManager.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'InterruptionView', @Name = 'InterruptionView', @Description = 'InterruptionView', @IsManager = False, @FileName = 'InterruptionView.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'PLCManager', @Name = 'PLC Manager', @Description = 'PLC Manager Application', @IsManager = True, @FileName = 'PLCManager.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'PresetManager', @Name = 'PresetManager', @Description = 'PresetManager', @IsManager = True, @FileName = 'PresetManager.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'PresetView', @Name = 'Tenaris.View.Preset', @Description = 'PresetView', @IsManager = False, @FileName = 'Tenaris.View.Preset.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'ProductionManager', @Name = 'ProductionManager', @Description = 'ProductionManager', @IsManager = True, @FileName = 'ProductionManager.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'ProductionView', @Name = 'Tenaris.View.Production', @Description = 'Tenaris.View.Production', @IsManager = False, @FileName = 'Tenaris.View.Production.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'SpecificationView', @Name = 'SpecificationView', @Description = 'SpecificationView', @IsManager = False, @FileName = 'SpecificationView.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'TdaManager', @Name = 'TdaManager', @Description = 'TdaManager', @IsManager = True, @FileName = 'TdaManager.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'TdaView', @Name = 'TdaView', @Description = 'TdaView', @IsManager = False, @FileName = 'TdaView1.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'TechAlarm', @Name = 'TechAlarm', @Description = 'TechAlarm', @IsManager = True, @FileName = 'TechAlarm.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'TechAlarmView', @Name = 'TechAlarmView', @Description = 'TechAlarmView', @IsManager = False, @FileName = 'Tenaris.View.TechAlarm.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'TrackingManager', @Name = 'TrackingManager', @Description = 'TrackingManager', @IsManager = True, @FileName = 'TrackingManager.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'TrackingMimicView', @Name = 'TrackingMimicView', @Description = 'Tracking Mimic View', @IsManager = False, @FileName = 'Tenaris.View.TrackingMimic.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'TrackingView', @Name = 'Tenaris.View.Tracking', @Description = 'TrackingView', @IsManager = False, @FileName = 'Tenaris.View.Tracking.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'EntranceManager', @Name = 'EntranceManager', @Description = 'EntranceManager', @IsManager = True, @FileName = 'EntranceManager.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'EntranceView', @Name = 'EntranceView', @Description = 'EntranceView', @IsManager = False, @FileName = 'EntranceView.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'ExitManager', @Name = 'ExitManager', @Description = 'ExitManager', @IsManager = True, @FileName = 'ExitManager.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'ExitView', @Name = 'ExitView', @Description = 'ExitView', @IsManager = False, @FileName = 'ExitView.exe', @Active = True;
    EXEC [Common].[DoConfigDefineApplication] @Code = 'VdiManager', @Name = 'VdiManager', @Description = 'VdiManager', @IsManager = True, @FileName = 'VdiManager.exe', @Active = True;
	EXEC [Common].[DoConfigDefineApplication] @Code = 'VdiView', @Name = 'VdiView', @Description = 'VdiView', @IsManager = False, @FileName = 'VdiView.exe', @Active = True;
	EXEC [Common].[DoConfigDefineApplication] @Code = 'VdiAdmin', @Name = 'VdiAdmin', @Description = 'VdiAdmin', @IsManager = False, @FileName = 'VdiAdmin.exe', @Active = True;
	EXEC [Common].[DoConfigDefineApplication] @Code = 'DesktopManager', @Name = 'DesktopManager', @Description = 'DesktopManager', @IsManager = False, @FileName = 'Tenaris.View.Desktop.exe', @Active = True;
	EXEC [Common].[DoConfigDefineApplication] @Code = 'ScriptingManager', @Name = 'ScriptingManager', @Description = 'ScriptingManager', @IsManager = False, @FileName = 'ScriptingManager.exe', @Active = True;
	EXEC [Common].[DoConfigDefineApplication] @Code = 'MessageManager', @Name = 'MessageManager', @Description = 'MessageManager', @IsManager = True, @FileName = 'MessageManager.exe', @Active = True;
    -- End dump for table Common.Application

    -- Begin dump for table Common.Center
    UPDATE [Common].[Center] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineCenter] @Code = 'HTR', @Name = 'HTR', @Description = 'HTR', @Active = True;
    -- End dump for table Common.Center

    -- Begin dump for table Common.ChemicalElementType
    -- End dump for table Common.ChemicalElementType

    -- Begin dump for table Common.DataType
    UPDATE [Common].[DataType] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineDataType] @Code = 'BIT', @Name = 'System.Boolean', @Description = 'System.Boolean', @CSTypeName = 'System.Boolean', @Active = True;
    EXEC [Common].[DoConfigDefineDataType] @Code = 'BYTE', @Name = 'System.Byte', @Description = 'System.Byte', @CSTypeName = 'System.Byte', @Active = True;
    EXEC [Common].[DoConfigDefineDataType] @Code = 'DATETIME', @Name = 'System.DateTime', @Description = 'System.DateTime', @CSTypeName = 'System.DateTime', @Active = True;
    EXEC [Common].[DoConfigDefineDataType] @Code = 'DATETIMEOFFSET', @Name = 'System.DateTimeOffset', @Description = 'System.DateTimeOffset', @CSTypeName = 'System.DateTimeOffset', @Active = True;
    EXEC [Common].[DoConfigDefineDataType] @Code = 'DOUBLE', @Name = 'System.Double', @Description = 'System.Double', @CSTypeName = 'System.Double', @Active = True;
    EXEC [Common].[DoConfigDefineDataType] @Code = 'INT16', @Name = 'System.Int16', @Description = 'System.Int16', @CSTypeName = 'System.Int16', @Active = True;
    EXEC [Common].[DoConfigDefineDataType] @Code = 'INT32', @Name = 'System.Int32', @Description = 'System.Int32', @CSTypeName = 'System.Int32', @Active = True;
    EXEC [Common].[DoConfigDefineDataType] @Code = 'INT64', @Name = 'System.Int64', @Description = 'System.Int64', @CSTypeName = 'System.Int64', @Active = True;
    EXEC [Common].[DoConfigDefineDataType] @Code = 'SINGLE', @Name = 'System.Single', @Description = 'System.Single', @CSTypeName = 'System.Single', @Active = True;
    EXEC [Common].[DoConfigDefineDataType] @Code = 'STRING', @Name = 'System.String', @Description = 'System.String', @CSTypeName = 'System.String', @Active = True;
    EXEC [Common].[DoConfigDefineDataType] @Code = 'TIMESPAN', @Name = 'System.TimeSpan', @Description = 'System.TimeSpan', @CSTypeName = 'System.TimeSpan', @Active = True;
    EXEC [Common].[DoConfigDefineDataType] @Code = 'UINT16', @Name = 'System.UInt16', @Description = 'System.UInt16', @CSTypeName = 'System.UInt16', @Active = True;
    -- End dump for table Common.DataType

    -- Begin dump for table Common.Enum
    UPDATE [Common].[Enum] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineEnum] @Code = 'CONTROL_MODE', @Name = 'Control Mode', @Description = 'Control Mode', @Active = True;
    EXEC [Common].[DoConfigDefineEnum] @Code = 'ENABLE_STATUS', @Name = 'Enable Status', @Description = 'Enable Status', @Active = True;
    EXEC [Common].[DoConfigDefineEnum] @Code = 'FamilyRevisionStatus', @Name = 'Family Revision Status', @Description = 'Family Revision Status', @Active = True;
    EXEC [Common].[DoConfigDefineEnum] @Code = 'ITEMSTATUS', @Name = 'Item Status', @Description = 'Item Status', @Active = True;
    EXEC [Common].[DoConfigDefineEnum] @Code = 'ON_OFF_STATUS', @Name = 'On/Off Status ', @Description = 'On/Off Status', @Active = True;
    EXEC [Common].[DoConfigDefineEnum] @Code = 'OPERATION_MODE', @Name = 'Operation mode', @Description = 'Operation mode', @Active = True;
    EXEC [Common].[DoConfigDefineEnum] @Code = 'ZONE_STATUS', @Name = 'Zone Status', @Description = 'Zone Status', @Active = True;
	EXEC [Common].[DoConfigDefineEnum] @Code = 'ProdChangeBatchMode', @Name = 'ProdChangeBatchMode', @Description = 'ProdChangeBatchMode', @Active = True;
    -- End dump for table Common.Enum

	
    -- Begin dump for table Common.ItemSide
    UPDATE [Common].[ItemSide] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineItemSide] @Code = 'BOX', @Name = 'BOX', @Description = 'BOX', @PlcCode=1, @InvertedItemSideCode = 'PIN', @Active = True;
    EXEC [Common].[DoConfigDefineItemSide] @Code = 'PIN', @Name = 'PIN', @Description = 'PIN', @PlcCode=2, @InvertedItemSideCode = 'BOX', @Active = True;
	EXEC [Common].[DoConfigDefineItemSide] @Code = 'BOX', @Name = 'BOX', @Description = 'BOX', @PlcCode=1, @InvertedItemSideCode = 'PIN', @Active = True;
	EXEC [Common].[DoConfigDefineItemSide] @Code = 'A', @Name = 'A', @Description = 'A', @PlcCode=3, @InvertedItemSideCode = 'B', @Active = False;
    EXEC [Common].[DoConfigDefineItemSide] @Code = 'B', @Name = 'B', @Description = 'B', @PlcCode=4, @InvertedItemSideCode = 'A', @Active = False;
	EXEC [Common].[DoConfigDefineItemSide] @Code = 'A', @Name = 'A', @Description = 'A', @PlcCode=3, @InvertedItemSideCode = 'B', @Active = False;
    -- End dump for table Common.ItemSide

    -- Begin dump for table Common.MachineWorkflow
    UPDATE [Common].[MachineWorkflow] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineMachineWorkflow] @Code = 'ALL', @Name = 'ALL', @Description = 'All machines', @Active = True;
    -- End dump for table Common.MachineWorkflow

    -- Begin dump for table Common.Magnitude
    UPDATE [Common].[Magnitude] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'ACCELERATION', @Name = 'Acceleration', @Description = 'Acceleration', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'ANGPOS', @Name = 'AngPos', @Description = 'AngPos', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'CURRENT', @Name = 'Current', @Description = 'Current', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'LENGTH', @Name = 'Distance', @Description = 'Distance', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'FLOWRATE', @Name = 'Flowrate', @Description = 'Flowrate', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'FORCE', @Name = 'Force', @Description = 'Force', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'FREQUENCY', @Name = 'Frequency', @Description = 'Frequency', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'MODE', @Name = 'Mode', @Description = 'Mode', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'PERCENTAGE', @Name = 'Percentage', @Description = 'Percentage', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'POWER', @Name = 'Power', @Description = 'Power', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'PRESSURE', @Name = 'Pressure', @Description = 'Pressure', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'QUANTITY', @Name = 'Quantity', @Description = 'Quantity', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'RATIO', @Name = 'Ratio', @Description = 'Ratio', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'SPEED', @Name = 'Speed', @Description = 'Speed', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'TEMPERATURE', @Name = 'Temperature', @Description = 'Temperature', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'TIME', @Name = 'Time', @Description = 'Time', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'TORQUE', @Name = 'Torque', @Description = 'Torque', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'TYPE', @Name = 'Type', @Description = 'Type', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'VOLTAGE', @Name = 'Voltage', @Description = 'Voltage', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'VOLUME', @Name = 'Volume', @Description = 'Volume', @Active = True;
    EXEC [Common].[DoConfigDefineMagnitude] @Code = 'WEIGHT', @Name = 'Weight', @Description = 'Weight', @Active = True;
    -- End dump for table Common.Magnitude

    -- Begin dump for table Common.Plc
    UPDATE [Common].[Plc] SET [Active] = 'False';
    IF OBJECT_ID('Configuration.DoReseedTableToMax') IS NOT NULL BEGIN EXEC Configuration.DoReseedTableToMax 'Common', 'Plc' END;
    EXEC [Common].[DoConfigDefinePlc] @Code = 'mem', @Name = 'mem', @Description = 'mem', @Active = True;
    -- End dump for table Common.Plc

    -- Begin dump for table Common.Process
    UPDATE [Common].[Process] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineProcess] @Code = 'Entry', @Name = 'Entry', @Description = 'Entry', @BySide = False,  @Active = True;
    -- End dump for table Common.Process

    -- Begin dump for table Common.ProductWorkflow
    UPDATE [Common].[ProductWorkflow] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineProductWorkflow] @Code = 'ALL', @Name = 'ALL', @Description = 'ALL', @Active = True;
    -- End dump for table Common.ProductWorkflow

    -- Begin dump for table Common.Status
    UPDATE [Common].[Status] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineStatus] @id = 4, @PlcCode = 4, @Code = 'Active', @Name = 'Active', @Description = 'Active', @Active = True;
    EXEC [Common].[DoConfigDefineStatus] @id = 7, @PlcCode = 7, @Code = 'Canceled', @Name = 'Canceled', @Description = 'Canceled', @Active = True;
    EXEC [Common].[DoConfigDefineStatus] @id = 6, @PlcCode = 6, @Code = 'Ended', @Name = 'Ended', @Description = 'Ended', @Active = True;
    EXEC [Common].[DoConfigDefineStatus] @id = 2, @PlcCode = 2, @Code = 'Future', @Name = 'Future', @Description = 'Future', @Active = True;
    EXEC [Common].[DoConfigDefineStatus] @id = 5, @PlcCode = 5, @Code = 'Hold', @Name = 'Hold', @Description = 'Hold', @Active = True;
    EXEC [Common].[DoConfigDefineStatus] @id = 3, @PlcCode = 3, @Code = 'NextFuture', @Name = 'NextFuture', @Description = 'NextFuture', @Active = True;
    EXEC [Common].[DoConfigDefineStatus] @id = 10, @PlcCode = 9, @Code = 'Processing', @Name = 'Processing', @Description = 'Processing', @Active = True;
    EXEC [Common].[DoConfigDefineStatus] @id = 9, @PlcCode = 8, @Code = 'Released', @Name = 'Released', @Description = 'Released', @Active = True;
    EXEC [Common].[DoConfigDefineStatus] @id = 1, @PlcCode = 1, @Code = 'Scheduled', @Name = 'Scheduled', @Description = 'Scheduled', @Active = True;
    -- End dump for table Common.Status

    -- Begin dump for table Common.Twin
    -- End dump for table Common.Twin

    -- Begin dump for table Common.Zone
    UPDATE [Common].[Zone] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineZone] @Code = 'ALL', @Name = 'ALL', @Description = 'ALL', @Active = True;
    -- End dump for table Common.Zone

    -- Begin dump for table Common.Area
    UPDATE [Common].[Area] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineArea] @CenterCode = 'HTR', @Code = 'TT3', @Name = 'TT3', @Description = 'TT3', @Active = True;
    -- End dump for table Common.Area

    -- Begin dump for table Common.ChemicalElement
    -- End dump for table Common.ChemicalElement

    -- Begin dump for table Common.EnumValue
    UPDATE [Common].[EnumValue] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'CONTROL_MODE', @Code = 'CM_FLOW_BASIC_SPEED', @Name = 'Flow Basic Speed', @Description = 'Flow Basic Speed', @Value = 0, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'CONTROL_MODE', @Code = 'CM_PRESSURE_BASIC_SPEED', @Name = 'Pressure Basic Speed', @Description = 'Pressure Basic Speed', @Value = 1, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'CONTROL_MODE', @Code = 'CM_PRESSURE_DAMPER_POSITION', @Name = 'Pressure Damper Position', @Description = 'Pressure Damper Position', @Value = 2, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'FamilyRevisionStatus', @Code = 'DISABLED', @Name = 'DISABLED', @Description = 'DISABLED', @Value = 4, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'ENABLE_STATUS', @Code = 'EN_DISABLE', @Name = 'Deshabilitado', @Description = 'Deshabilitado', @Value = 0, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'ENABLE_STATUS', @Code = 'EN_ENABLE', @Name = 'Habilitado', @Description = 'Habilitado', @Value = 1, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'ENABLE_STATUS', @Code = 'EN_MANUAL', @Name = 'Manual', @Description = 'Manual', @Value = 2, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'ITEMSTATUS', @Code = 'FINISHED', @Name = 'FINISHED', @Description = 'FINISHED', @Value = 2, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'ITEMSTATUS', @Code = 'INPROCESS', @Name = 'INPROCESS', @Description = 'INPROCESS', @Value = 1, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'ITEMSTATUS', @Code = 'LOADED', @Name = 'LOADED', @Description = 'LOADED', @Value = 0, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'ON_OFF_STATUS', @Code = 'OF_OFF', @Name = 'Off', @Description = 'Off', @Value = 0, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'ON_OFF_STATUS', @Code = 'OF_ON', @Name = 'On', @Description = 'On', @Value = 1, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'OPERATION_MODE', @Code = 'OM_AUTOMATIC', @Name = 'Auto', @Description = 'Auto', @Value = 1, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'OPERATION_MODE', @Code = 'OM_MANUAL', @Name = 'Man', @Description = 'Man', @Value = 0, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'FamilyRevisionStatus', @Code = 'PENDING', @Name = 'PENDING', @Description = 'PENDING', @Value = 0, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'FamilyRevisionStatus', @Code = 'REJECTED', @Name = 'REJECTED', @Description = 'REJECTED', @Value = 2, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'FamilyRevisionStatus', @Code = 'RELEASED', @Name = 'RELEASED', @Description = 'RELEASED', @Value = 3, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'ZONE_STATUS', @Code = 'ZN_OFF', @Name = 'Off', @Description = 'Off', @Value = 0, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'ZONE_STATUS', @Code = 'ZN_ON', @Name = 'On', @Description = 'On', @Value = 1, @Active = True;
    EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'ZONE_STATUS', @Code = 'ZN_PURGING', @Name = 'Purging', @Description = 'Purging', @Value = 2, @Active = True;
	EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'ProdChangeBatchMode', @Code = 'Tracking', @Name = 'Tracking', @Description = 'Tracking', @Value = 2, @Active = True;
	EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'ProdChangeBatchMode', @Code = 'Counting', @Name = 'Counting', @Description = 'Counting', @Value = 1, @Active = True;
	EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'ProdChangeBatchMode', @Code = 'Tracking&Counting', @Name = 'Tracking&Counting', @Description = 'Tracking&Counting', @Value = 3, @Active = True;
	EXEC [Common].[DoConfigDefineEnumValue] @EnumCode = 'ProdChangeBatchMode', @Code = 'Manual', @Name = 'Manual', @Description = 'Manual', @Value = 4, @Active = True;
    -- End dump for table Common.EnumValue

	
    -- Begin dump for table Common.Egu
    UPDATE [Common].[Egu] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'TYPE', @DataTypeCode = 'STRING', @Code = '', @Name = '', @Description = '', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'TYPE', @DataTypeCode = 'STRING', @Code = '-', @Name = '-', @Description = '-', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'TYPE', @DataTypeCode = 'STRING', @Code = 'TEXT', @Name = 'Text', @Description = 'Text', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'TYPE', @DataTypeCode = 'BIT', @Code = 'CHECK', @Name = 'Check', @Description = 'Check', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'PERCENTAGE', @DataTypeCode = 'DOUBLE', @Code = '%', @Name = '%', @Description = 'Percentage', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'PERCENTAGE', @DataTypeCode = 'DOUBLE', @Code = '%1', @Name = '%', @Description = '%', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'PERCENTAGE', @DataTypeCode = 'DOUBLE', @Code = '%V', @Name = '%V', @Description = '%V', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'TEMPERATURE', @DataTypeCode = 'DOUBLE', @Code = '°C/H', @Name = '°C/h', @Description = '°C/h', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'TEMPERATURE', @DataTypeCode = 'DOUBLE', @Code = '°F/H', @Name = '°F/h', @Description = '°F/h', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'TEMPERATURE', @DataTypeCode = 'DOUBLE', @Code = 'F', @Name = '°F', @Description = '°F', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'TEMPERATURE', @DataTypeCode = 'DOUBLE', @Code = 'C', @Name = '°C', @Description = '°C', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'CURRENT', @DataTypeCode = 'DOUBLE', @Code = 'A', @Name = 'A', @Description = 'Ampere', @Active = True;
    --EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'RATIO', @DataTypeCode = 'DOUBLE', @Code = 'A/G', @Name = 'A/G', @Description = 'A/G', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'ANGPOS', @DataTypeCode = 'DOUBLE', @Code = 'DEG', @Name = '°', @Description = '°', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'LENGTH', @DataTypeCode = 'DOUBLE', @Code = 'FT', @Name = 'ft', @Description = 'Feet', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'LENGTH', @DataTypeCode = 'DOUBLE', @Code = 'IN', @Name = 'in', @Description = 'Inches', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'LENGTH', @DataTypeCode = 'DOUBLE', @Code = 'MM', @Name = 'mm', @Description = 'Millimeters', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'LENGTH', @DataTypeCode = 'DOUBLE', @Code = 'M', @Name = 'm', @Description = 'Meters', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'SPEED', @DataTypeCode = 'DOUBLE', @Code = 'RPM', @Name = 'RPM', @Description = 'RPM', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'SPEED', @DataTypeCode = 'DOUBLE', @Code = 'MM/S', @Name = 'mm/s', @Description = 'mm/s', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'SPEED', @DataTypeCode = 'DOUBLE', @Code = 'M/S', @Name = 'm/s', @Description = 'm/s', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'SPEED', @DataTypeCode = 'DOUBLE', @Code = 'M/MIN', @Name = 'm/min', @Description = 'm/min', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'SPEED', @DataTypeCode = 'DOUBLE', @Code = 'FT/MIN', @Name = 'ft/min', @Description = 'ft/min', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'WEIGHT', @DataTypeCode = 'DOUBLE', @Code = 'G', @Name = 'g', @Description = 'g', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'WEIGHT', @DataTypeCode = 'DOUBLE', @Code = 'TON', @Name = 'T', @Description = 'ton', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'WEIGHT', @DataTypeCode = 'DOUBLE', @Code = 'TON/H', @Name = 'T/h', @Description = 'ton/h', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'WEIGHT', @DataTypeCode = 'DOUBLE', @Code = 'IN', @Name = 'In', @Description = 'In', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'WEIGHT', @DataTypeCode = 'DOUBLE', @Code = 'LBS', @Name = 'Pounds', @Description = 'Pounds', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'WEIGHT', @DataTypeCode = 'DOUBLE', @Code = 'KG', @Name = 'kg', @Description = 'kg', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'FREQUENCY', @DataTypeCode = 'DOUBLE', @Code = 'HZ', @Name = 'Hz', @Description = 'Hz', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'VOLUME', @DataTypeCode = 'DOUBLE', @Code = 'KG/Hr', @Name = 'KG/Hr', @Description = 'KG/Hr', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'VOLUME', @DataTypeCode = 'DOUBLE', @Code = 'LB/H', @Name = 'lb/h', @Description = 'lb/h', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'VOLUME', @DataTypeCode = 'DOUBLE', @Code = 'PPM', @Name = 'ppm', @Description = 'ppm', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'VOLUME', @DataTypeCode = 'DOUBLE', @Code = 'SCF/H', @Name = 'scf/h', @Description = 'scf/h', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'VOLUME', @DataTypeCode = 'DOUBLE', @Code = 'NM3', @Name = 'Nm3', @Description = 'Nm3', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'ACCELERATION', @DataTypeCode = 'DOUBLE', @Code = 'M/S2', @Name = 'm/s2', @Description = 'm/s2', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'FORCE', @DataTypeCode = 'DOUBLE', @Code = 'LBS/FT', @Name = 'Lbs/ft', @Description = 'Lbs/ft', @Active = True;
	EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'FORCE', @DataTypeCode = 'DOUBLE', @Code = 'KG/M', @Name = 'Kg/m', @Description = 'Kg/m', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'FORCE', @DataTypeCode = 'DOUBLE', @Code = 'KN', @Name = 'kN', @Description = 'kN', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'POWER', @DataTypeCode = 'DOUBLE', @Code = 'KW', @Name = 'kW', @Description = 'kW', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'FLOWRATE', @DataTypeCode = 'DOUBLE', @Code = 'L/MIN', @Name = 'l/min', @Description = 'l/min', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'FLOWRATE', @DataTypeCode = 'DOUBLE', @Code = 'M3/H', @Name = 'm3/h', @Description = 'm3/h', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'FLOWRATE', @DataTypeCode = 'DOUBLE', @Code = 'M3/MIN', @Name = 'm3/min', @Description = 'm3/min', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'FLOWRATE', @DataTypeCode = 'DOUBLE', @Code = 'NM3/H', @Name = 'Nm3/h', @Description = 'Nm3/h', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'PRESSURE', @DataTypeCode = 'DOUBLE', @Code = 'BAR', @Name = 'Bar', @Description = 'Bar', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'PRESSURE', @DataTypeCode = 'DOUBLE', @Code = 'MBAR', @Name = 'mbar', @Description = 'mbar', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'PRESSURE', @DataTypeCode = 'DOUBLE', @Code = 'MM_WC', @Name = 'mm w.c.', @Description = 'mm w.c.', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'MODE', @DataTypeCode = 'STRING', @Code = 'MODE', @Name = 'Mode', @Description = 'Mode', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'TIME', @DataTypeCode = 'DOUBLE', @Code = 'MIN', @Name = 'Min', @Description = 'Minutes', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'TIME', @DataTypeCode = 'DOUBLE', @Code = 'MS', @Name = 'ms', @Description = 'Milliseconds', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'TIME', @DataTypeCode = 'DOUBLE', @Code = 'SEC', @Name = 's', @Description = 'Seconds', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'TORQUE', @DataTypeCode = 'DOUBLE', @Code = 'NM', @Name = 'Nm', @Description = 'Nm', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'QUANTITY', @DataTypeCode = 'DOUBLE', @Code = 'TURNS', @Name = 'Turns', @Description = 'Turns', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'QUANTITY', @DataTypeCode = 'INT32', @Code = 'U', @Name = 'u', @Description = 'u', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'QUANTITY', @DataTypeCode = 'DOUBLE', @Code = 'PZ', @Name = 'pz', @Description = 'pz', @Active = True;
    EXEC [Common].[DoConfigDefineEgu] @MagnitudeCode = 'VOLTAGE', @DataTypeCode = 'DOUBLE', @Code = 'V', @Name = 'V', @Description = 'Voltage', @Active = True;
    -- End dump for table Common.Egu

    -- Begin dump for table Common.PlcTag
    -- End dump for table Common.PlcTag

    -- Begin dump for table Common.MachineProductWorkflow
    UPDATE [Common].[MachineProductWorkflow] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineMachineProductWorkflow] @MachineWorkflowCode = 'ALL', @ProductWorkflowCode = 'ALL', @Active = True;
    -- End dump for table Common.MachineProductWorkflow

    -- Begin dump for table Common.Machine
    UPDATE [Common].[Machine] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineMachine] @AreaCode = 'TT3', @ProcessCode = 'Entry', @MachineParentCode = null, @PlcCode = 1, @Code = 'Entry', @Name = 'Entry', @Description = 'Entry', @SortOrder = 1, @Active = True;
    -- End dump for table Common.Machine

    -- Begin dump for table Common.MachineWorkflowSequence
    UPDATE [Common].[MachineWorkflowSequence] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineMachineWorkflowSequence] @MachineWorkflowCode = 'ALL', @MachineCode = 'Entry', @MachinePreviousCode = null, @Active = True;
    -- End dump for table Common.MachineWorkflowSequence

    -- Begin dump for table Common.ProductWorkflowProcess
    UPDATE [Common].[ProductWorkflowProcess] SET [Active] = 'False';
	EXEC [Common].[DoConfigDefineProductWorkflowProcess] @ProductWorkflowCode = 'ALL', @ProcessCode = 'Entry', @ItemSideCode = null, @IsOptional = False, @Active = True;
    -- End dump for table Common.ProductWorkflowProcess

    -- Begin dump for table Common.TwinMachine
    -- End dump for table Common.TwinMachine

    -- Begin dump for table Common.ZoneDetail
    UPDATE [Common].[ZoneDetail] SET [Active] = 'False';
    EXEC [Common].[DoConfigDefineZoneDetail] @ZoneCode = 'ALL', @MachineCode = 'Entry', @Active = True;
    -- End dump for table Common.ZoneDetail

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
