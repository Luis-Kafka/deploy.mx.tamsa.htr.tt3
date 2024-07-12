--- Config dump file for schema Wedjet
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Wedjet.PlcParameter
    UPDATE [Wedjet].[PlcParameter] SET [Active] = 'False';
    IF OBJECT_ID('Configuration.DoReseedTableToMax') IS NOT NULL BEGIN EXEC Configuration.DoReseedTableToMax 'Wedjet', 'PlcParameter' END;
    EXEC [Wedjet].[DoConfigDefinePlcParameter] @Code = 'address', @Name = 'address', @Description = 'address', @Active = True;
    EXEC [Wedjet].[DoConfigDefinePlcParameter] @Code = 'connectionType', @Name = 'connectionType', @Description = 'connectionType', @Active = True;
    EXEC [Wedjet].[DoConfigDefinePlcParameter] @Code = 'mem', @Name = 'mem', @Description = 'mem', @Active = True;
    EXEC [Wedjet].[DoConfigDefinePlcParameter] @Code = 'pollingTagAlias', @Name = 'pollingTagAlias', @Description = 'pollingTagAlias', @Active = True;
    EXEC [Wedjet].[DoConfigDefinePlcParameter] @Code = 'queueSize', @Name = 'queueSize', @Description = 'queueSize', @Active = True;
    EXEC [Wedjet].[DoConfigDefinePlcParameter] @Code = 'readTimeout', @Name = 'readTimeout', @Description = 'readTimeout', @Active = True;
    EXEC [Wedjet].[DoConfigDefinePlcParameter] @Code = 'slot', @Name = 'slot', @Description = 'slot', @Active = True;
	EXEC [Wedjet].[DoConfigDefinePlcParameter] @Code = 'rack', @Name = 'rack', @Description = 'rack', @Active = True;
    -- End dump for table Wedjet.PlcParameter

    -- Begin dump for table Wedjet.PlcType
    UPDATE [Wedjet].[PlcType] SET [Active] = 'False';
    IF OBJECT_ID('Configuration.DoReseedTableToMax') IS NOT NULL BEGIN EXEC Configuration.DoReseedTableToMax 'Wedjet', 'PlcType' END;
    EXEC [Wedjet].[DoConfigDefinePlcType] @Code = 'memory', @Name = 'memory', @Description = 'memory', @Active = True;
    EXEC [Wedjet].[DoConfigDefinePlcType] @Code = 's7', @Name = 's7', @Description = 's7', @Active = True;
    -- End dump for table Wedjet.PlcType

    -- Begin dump for table Wedjet.PlcTypePlcParameter
    UPDATE [Wedjet].[PlcTypePlcParameter] SET [Active] = 'False';
    IF OBJECT_ID('Configuration.DoReseedTableToMax') IS NOT NULL BEGIN EXEC Configuration.DoReseedTableToMax 'Wedjet', 'PlcTypePlcParameter' END;
    EXEC [Wedjet].[DoConfigDefinePlcTypePlcParameter] @PlcTypeCode = 'memory', @PlcParameterCode = 'mem', @Comment = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefinePlcTypePlcParameter] @PlcTypeCode = 's7', @PlcParameterCode = 'address', @Comment = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefinePlcTypePlcParameter] @PlcTypeCode = 's7', @PlcParameterCode = 'connectionType', @Comment = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefinePlcTypePlcParameter] @PlcTypeCode = 's7', @PlcParameterCode = 'mem', @Comment = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefinePlcTypePlcParameter] @PlcTypeCode = 's7', @PlcParameterCode = 'pollingTagAlias', @Comment = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefinePlcTypePlcParameter] @PlcTypeCode = 's7', @PlcParameterCode = 'queueSize', @Comment = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefinePlcTypePlcParameter] @PlcTypeCode = 's7', @PlcParameterCode = 'readTimeout', @Comment = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefinePlcTypePlcParameter] @PlcTypeCode = 's7', @PlcParameterCode = 'slot', @Comment = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefinePlcTypePlcParameter] @PlcTypeCode = 's7', @PlcParameterCode = 'rack', @Comment = null, @Active = True;
	-- End dump for table Wedjet.PlcTypePlcParameter

    -- Begin dump for table Wedjet.Parameter
    UPDATE [Wedjet].[Parameter] SET [Active] = 'False';
    IF OBJECT_ID('Configuration.DoReseedTableToMax') IS NOT NULL BEGIN EXEC Configuration.DoReseedTableToMax 'Wedjet', 'Parameter' END;
    EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = '$defaultScan', @Name = '$defaultScan', @Description = '$defaultScan', @Value = '475', @Active = True;
    EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = '$fastScan', @Name = '$fastScan', @Description = '$fastScan', @Value = '100', @Active = True;
    EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = '$midScan', @Name = '$midScan', @Description = '$midScan', @Value = '255', @Active = True;
    EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = '$slowScan', @Name = '$slowScan', @Description = '$slowScan', @Value = '4975', @Active = True;
    EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = 'share', @Name = 'share', @Description = 'share', @Value = 'tcp://0:$PORT_WEDJET', @Active = True;
	EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = 'slowResponse', @Name = 'slowResponse', @Description = 'slowResponse', @Value = '2000', @Active = True;
	EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = 'tcpMaxConnections', @Name = 'tcpMaxConnections', @Description = 'tcpMaxConnections', @Value = '20', @Active = True;
	EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = 'notificationPoolSize', @Name = 'notificationPoolSize', @Description = 'notificationPoolSize', @Value = '10', @Active = True;
	EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = 'notificationSort', @Name = 'notificationSort', @Description = 'notificationSort', @Value = 'true', @Active = True;
	EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = 'notificationParallel', @Name = 'notificationParallel', @Description = 'notificationParallel', @Value = 'true', @Active = True;
	EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = 'connectionTimeout', @Name = 'connectionTimeout', @Description = 'connectionTimeout', @Value = '5000', @Active = True;
	EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = 'retryTimeout', @Name = 'retryTimeout', @Description = 'retryTimeout', @Value = '5000', @Active = True;
	EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = 'allowMultipleMemorySource', @Name = 'allowMultipleMemorySource', @Description = 'allowMultipleMemorySource', @Value = 'false', @Active = True;
	EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = 'partialStatus', @Name = 'partialStatus', @Description = 'partialStatus', @Value = 'true', @Active = True;
	EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = 'allow', @Name = 'allow', @Description = 'allow', @Value = '', @Active = True;
	EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = 'deny', @Name = 'deny', @Description = 'deny', @Value = '', @Active = True;
	EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = 'dynamicScan', @Name = 'dynamicScan', @Description = 'dynamicScan', @Value = '0', @Active = True;
	EXEC [Wedjet].[DoConfigDefineParameter] @AreaCode = null, @Code = 'priority', @Name = 'priority', @Description = 'priority', @Value = 'Normal', @Active = True;
    -- End dump for table Wedjet.Parameter

    -- Begin dump for table Wedjet.Plc
    UPDATE [Wedjet].[Plc] SET [Active] = 'False';
    IF OBJECT_ID('Configuration.DoReseedTableToMax') IS NOT NULL BEGIN EXEC Configuration.DoReseedTableToMax 'Wedjet', 'Plc' END;
    EXEC [Wedjet].[DoConfigDefinePlc] @PlcCode = 'mem', @AreaCode = null, @PlcTypeCode = 'memory', @Active = True;
    -- End dump for table Wedjet.Plc

    -- Begin dump for table Wedjet.Class
    UPDATE [Wedjet].[Class] SET [Active] = 'False';
    IF OBJECT_ID('Configuration.DoReseedTableToMax') IS NOT NULL BEGIN EXEC Configuration.DoReseedTableToMax 'Wedjet', 'Class' END;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'ALARM_100', @Name = 'ALARM_100', @Description = 'ALARM_100', @ParentClassCode = null, @DataType = 'short[100]', @Scan = '$defaultScan', @DefaultValue = null, @ConvertToType = null, @ConvertArgs = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'ALARM_200', @Name = 'ALARM_200', @Description = 'ALARM_200', @ParentClassCode = null, @DataType = 'short[200]', @Scan = '$defaultScan', @DefaultValue = null, @ConvertToType = null, @ConvertArgs = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'COMMAND_1', @Name = 'COMMAND_1', @Description = 'COMMAND_1', @ParentClassCode = null, @DataType = 'short[1]', @Scan = '$defaultScan', @DefaultValue = null, @ConvertToType = null, @ConvertArgs = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'COMMAND_10', @Name = 'COMMAND_10', @Description = 'COMMAND_10', @ParentClassCode = null, @DataType = 'short[10]', @Scan = '$defaultScan', @DefaultValue = null, @ConvertToType = null, @ConvertArgs = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'COMMAND_20', @Name = 'COMMAND_20', @Description = 'COMMAND_20', @ParentClassCode = null, @DataType = 'short[20]', @Scan = '$defaultScan', @DefaultValue = null, @ConvertToType = null, @ConvertArgs = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'COMMAND_5', @Name = 'COMMAND_5', @Description = 'COMMAND_5', @ParentClassCode = null, @DataType = 'short[5]', @Scan = '$defaultScan', @DefaultValue = null, @ConvertToType = null, @ConvertArgs = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'HANDSHAKE_10_REQUEST', @Name = 'HANDSHAKE_10_REQUEST', @Description = 'HANDSHAKE_10_REQUEST', @ParentClassCode = null, @DataType = 'short[10]', @Scan = '$defaultScan', @DefaultValue = null, @ConvertToType = null, @ConvertArgs = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'HANDSHAKE_10_RESPONSE', @Name = 'HANDSHAKE_10_RESPONSE', @Description = 'HANDSHAKE_10_RESPONSE', @ParentClassCode = null, @DataType = 'short[10]', @Scan = '0', @DefaultValue = null, @ConvertToType = null, @ConvertArgs = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'HANDSHAKE_100_REQUEST', @Name = 'HANDSHAKE_100_REQUEST', @Description = 'HANDSHAKE_100_REQUEST', @ParentClassCode = null, @DataType = 'short[100]', @Scan = '$fastScan', @DefaultValue = null, @ConvertToType = null, @ConvertArgs = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'HANDSHAKE_20_REQUEST', @Name = 'HANDSHAKE_20_REQUEST', @Description = 'HANDSHAKE_20_REQUEST', @ParentClassCode = null, @DataType = 'short[10]', @Scan = '$defaultScan', @DefaultValue = null, @ConvertToType = null, @ConvertArgs = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'HANDSHAKE_20_RESPONSE', @Name = 'HANDSHAKE_20_RESPONSE', @Description = 'HANDSHAKE_20_RESPONSE', @ParentClassCode = null, @DataType = 'short[10]', @Scan = '0', @DefaultValue = null, @ConvertToType = null, @ConvertArgs = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'LOG', @Name = 'LOG', @Description = 'LOG', @ParentClassCode = null, @DataType = 'int', @Scan = '$slowScan', @DefaultValue = '5', @ConvertToType = null, @ConvertArgs = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'PRESET_100', @Name = 'PRESET_100', @Description = 'PRESET_100', @ParentClassCode = null, @DataType = 'short[100]', @Scan = '$defaultScan', @DefaultValue = null, @ConvertToType = null, @ConvertArgs = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'TDA_100_FAST', @Name = 'TDA_100_FAST', @Description = 'TDA_100_FAST', @ParentClassCode = null, @DataType = 'short[100]', @Scan = '$fastScan', @DefaultValue = null, @ConvertToType = null, @ConvertArgs = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'TDA_200', @Name = 'TDA_200', @Description = 'TDA_200', @ParentClassCode = null, @DataType = 'short[200]', @Scan = '$fastScan', @DefaultValue = null, @ConvertToType = null, @ConvertArgs = null, @Active = True;
    EXEC [Wedjet].[DoConfigDefineClass] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @Code = 'TDA_RING_BUFFER', @Name = 'TDA_RING_BUFFER', @Description = 'TDA_RING_BUFFER', @ParentClassCode = null, @DataType = 'short[200]', @Scan = '$fastScan', @DefaultValue = null, @ConvertToType = null, @ConvertArgs = null, @Active = True;
    -- End dump for table Wedjet.Class

    -- Begin dump for table Wedjet.PlcParameterValue
    UPDATE [Wedjet].[PlcParameterValue] SET [Active] = 'False';
    IF OBJECT_ID('Configuration.DoReseedTableToMax') IS NOT NULL BEGIN EXEC Configuration.DoReseedTableToMax 'Wedjet', 'PlcParameterValue' END;
    EXEC [Wedjet].[DoConfigDefinePlcParameterValue] @PlcPlcCode = 'mem', @PlcAreaCode = null, @PlcPlcTypeCode = 'memory', @PlcTypePlcParameterPlcTypeCode = 'memory', @PlcTypePlcParameterPlcParameterCode = 'mem', @Value = 'memory', @Active = True;
    -- End dump for table Wedjet.PlcParameterValue

    -- Begin dump for table Wedjet.PlcTag
    -- End dump for table Wedjet.PlcTag

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
