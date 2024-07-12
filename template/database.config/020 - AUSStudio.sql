--- Config dump file for schema AUSStudio
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table AUSStudio.WedjetClassTemplate
    UPDATE [AUSStudio].[WedjetClassTemplate] SET [Active] = 'False';
    EXEC [AUSStudio].[DoConfigDefineWedjetClassTemplate] @Code = 'ALARM_100', @Name = 'ALARM_100', @Description = 'Tabla de alarmas', @ParentClass = null, @Type = 'short[100]', @Scan = '$defaultScan', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetClassTemplate] @Code = 'COMMAND_1', @Name = 'COMMAND_1', @Description = 'Comando básico', @ParentClass = null, @Type = 'short[1]', @Scan = '$defaultScan', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetClassTemplate] @Code = 'HANDSHAKE_10_REQ', @Name = 'HANDSHAKE_10_REQ', @Description = 'Handshake corto de lectura', @ParentClass = null, @Type = 'short[10]', @Scan = '$defaultScan', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetClassTemplate] @Code = 'HANDSHAKE_10_RESP', @Name = 'HANDSHAKE_10_RESP', @Description = 'Handshake corto de escritora', @ParentClass = null, @Type = 'short[10]', @Scan = '0', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetClassTemplate] @Code = 'HANDSHAKE_20_REQ', @Name = 'HANDSHAKE_20_REQ', @Description = 'Handshake largo de lectura', @ParentClass = null, @Type = 'short[10]', @Scan = '$defaultScan', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetClassTemplate] @Code = 'HANDSHAKE_20_RESP', @Name = 'HANDSHAKE_20_RESP', @Description = 'Handshake largo de escritura', @ParentClass = null, @Type = 'short[10]', @Scan = '0', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetClassTemplate] @Code = 'PRESET_100', @Name = 'PRESET_100', @Description = 'Tabla de presets', @ParentClass = null, @Type = 'short[100]', @Scan = '$defaultScan', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetClassTemplate] @Code = 'TDA_100_FAST', @Name = 'TDA_100_FAST', @Description = 'Tabla de TDA para ringbuffer rápidos', @ParentClass = null, @Type = 'short[100]', @Scan = '$fastScan', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetClassTemplate] @Code = 'TDA_200', @Name = 'TDA_200', @Description = 'Tabla de TDA para ringbuffer lento', @ParentClass = null, @Type = 'short[200]', @Scan = '$defaultScan', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetClassTemplate] @Code = 'WATCHDOG', @Name = 'WATCHDOG', @Description = 'Variable watchdog de Wedjet', @ParentClass = null, @Type = '1', @Scan = '$defaultScan', @Active = True;
    -- End dump for table AUSStudio.WedjetClassTemplate

    -- Begin dump for table AUSStudio.WedjetSourceParameter
    UPDATE [AUSStudio].[WedjetSourceParameter] SET [Active] = 'False';
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'paddingMaxSize', @Name = 'paddingMaxSize', @Description = 'Cantidad máxima de registros de separación entre pedidos que se usan para optimizar los accesos', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'address', @Name = 'address', @Description = 'Dirección IP o nombre de PC con puerto opcional', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'alternativeAddress', @Name = 'alternativeAddress', @Description = 'Dirección que se usa en caso de que la indicada en address no responda', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'alternativeRack', @Name = 'alternativeRack', @Description = 'Número de rack del plc si se usa alternativeAddress', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'alternativeSlot', @Name = 'alternativeSlot', @Description = 'Número de slot del plc si se usa alternativeAddress', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'arraymaxlen', @Name = 'arraymaxlen', @Description = 'Longitud máxima de array OPC', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'connectionType', @Name = 'connectionType', @Description = 'Tipo de conexión: 1=PG, 2=OP, 3=BASIC', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'enableLargeData', @Name = 'enableLargeData', @Description = 'Permite leer o escribir valores en segmentos cuando el tamaño es superior al que soporta el protocolo', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'getCpuInfo', @Name = 'getCpuInfo', @Description = 'Pide información de la cpu', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'lockLong', @Name = 'lockLong', @Description = 'Tiempo de espera largo en milisegundos para encolar un pedido', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'lockShort', @Name = 'lockShort', @Description = 'Tiempo de espera corto en milisegundos para encolar un pedido', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'pollingTag', @Name = 'pollingTag', @Description = 'Sinónimo de pollingTagAlias', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'pollingTagAlias', @Name = 'pollingTagAlias', @Description = 'Alias de tag que se polea para determinar el estado de le conexión', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'populate', @Name = 'populate', @Description = 'True recupera todos los tags al conectarse', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'queueSize', @Name = 'queueSize', @Description = 'Cantidad de conexiones concurrentes con el plc', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'rack', @Name = 'rack', @Description = 'Número de rack del plc', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'readonly', @Name = 'readonly', @Description = 'True para impedir escrituras. Usado para conectar ambientes de QA a PLC de produccción', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'readonlyresult', @Name = 'readonlyresult', @Description = 'Valor que devuelve el método de escritura cuando está en modo readonly', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'readTimeout', @Name = 'readTimeout', @Description = 'Tiempo en milisegundos que espera para abortar una operación de lectura o escritura', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'server', @Name = 'server', @Description = 'URL del servidor (Nombre, IP, etc)', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'slot', @Name = 'slot', @Description = 'Número de slot del plc', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'sourceId', @Name = 'sourceId', @Description = 'IP con la que se registra el cliente en el plc', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'sourcePort', @Name = 'sourcePort', @Description = 'Puerto con el que se registra el cliente en el plc', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'targetId', @Name = 'targetId', @Description = 'IP con la que se registra el cliente en el plc para recibir eventos', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'targetPort', @Name = 'targetPort', @Description = 'Puerto con el que se registra el cliente en el plc para recibir eventos', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'unitId', @Name = 'unitId', @Description = 'Número de UnitId o SlaveId del plc', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'zeroBasedRegister', @Name = 'zeroBasedRegister', @Description = 'False asume que el primer registro es 1, entonces la dirección 403305 apunta a 403304 en el plc', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceParameter] @Code = 'enableReadScanned', @Name = 'enableReadScanned', @Description = 'Si es falso, cuando se hace una lectura de un tag con tiempo de scan, devuelve el ultimo valor leído (sin ir al plc)', @Active = True;
    -- End dump for table AUSStudio.WedjetSourceParameter

    -- Begin dump for table AUSStudio.WedjetSourceType
    UPDATE [AUSStudio].[WedjetSourceType] SET [Active] = 'False';
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceType] @Code = 'abeip', @Name = 'Allan Bradley IP', @Description = 'Comuniación por protocolo Rockwell AB IP', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceType] @Code = 'mem', @Name = 'memory', @Description = 'Tags de memoria', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceType] @Code = 'modbustcp', @Name = 'Modbus TCP', @Description = 'Comuniación por protocolo Schneider Modbus TCP', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceType] @Code = 'net', @Name = 'Network', @Description = 'Comunicación entre Wedjets', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceType] @Code = 'opc', @Name = 'opc', @Description = 'Comuniación por estandar OPC', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceType] @Code = 's7', @Name = 'Siemens S7', @Description = 'Comuniación por protocolo Siemens S7', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceType] @Code = 'twincat', @Name = 'TwinCAT protocol', @Description = 'Comuniación por protocolo Beckhoff TwinCAT', @Active = True;
    -- End dump for table AUSStudio.WedjetSourceType

    -- Begin dump for table AUSStudio.WedjetSourceTemplate
    UPDATE [AUSStudio].[WedjetSourceTemplate] SET [Active] = 'False';
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'abeip', @WedjetSourceParameterCode = 'address', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'abeip', @WedjetSourceParameterCode = 'alternativeAddress', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'abeip', @WedjetSourceParameterCode = 'enableLargeData', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'abeip', @WedjetSourceParameterCode = 'lockLong', @DefaultValue = '250', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'abeip', @WedjetSourceParameterCode = 'lockShort', @DefaultValue = '25', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'abeip', @WedjetSourceParameterCode = 'pollingTag', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'abeip', @WedjetSourceParameterCode = 'pollingTagAlias', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'abeip', @WedjetSourceParameterCode = 'populate', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'abeip', @WedjetSourceParameterCode = 'queueSize', @DefaultValue = '5', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'abeip', @WedjetSourceParameterCode = 'readonly', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'abeip', @WedjetSourceParameterCode = 'readonlyresult', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'abeip', @WedjetSourceParameterCode = 'readTimeout', @DefaultValue = '5000', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'abeip', @WedjetSourceParameterCode = 'slot', @DefaultValue = '0', @Comment = null, @Active = True;
	EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'abeip', @WedjetSourceParameterCode = 'enableReadScanned', @DefaultValue = '1', @Comment = null, @Active = True;
	
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'paddingMaxSize', @DefaultValue = '10', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'address', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'alternativeAddress', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'enableLargeData', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'lockLong', @DefaultValue = '250', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'lockShort', @DefaultValue = '25', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'pollingTag', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'pollingTagAlias', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'populate', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'queueSize', @DefaultValue = '2', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'readonly', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'readonlyresult', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'readTimeout', @DefaultValue = '5000', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'unitId', @DefaultValue = '1', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'zeroBasedRegister', @DefaultValue = 'false', @Comment = null, @Active = True;
	EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'modbustcp', @WedjetSourceParameterCode = 'enableReadScanned', @DefaultValue = '1', @Comment = null, @Active = True;
	
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'net', @WedjetSourceParameterCode = 'address', @DefaultValue = '', @Comment = 'Formato = “tcp://address:port', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'net', @WedjetSourceParameterCode = 'alternativeAddress', @DefaultValue = '', @Comment = 'Formato = “tcp://address:port', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'net', @WedjetSourceParameterCode = 'lockLong', @DefaultValue = '250', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'net', @WedjetSourceParameterCode = 'lockShort', @DefaultValue = '25', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'net', @WedjetSourceParameterCode = 'pollingTag', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'net', @WedjetSourceParameterCode = 'pollingTagAlias', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'net', @WedjetSourceParameterCode = 'populate', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'net', @WedjetSourceParameterCode = 'readonly', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'net', @WedjetSourceParameterCode = 'readonlyresult', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'net', @WedjetSourceParameterCode = 'readTimeout', @DefaultValue = '5000', @Comment = null, @Active = True;
	EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'net', @WedjetSourceParameterCode = 'enableReadScanned', @DefaultValue = '1', @Comment = null, @Active = True;
	
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'opc', @WedjetSourceParameterCode = 'arraymaxlen', @DefaultValue = '240', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'opc', @WedjetSourceParameterCode = 'lockLong', @DefaultValue = '250', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'opc', @WedjetSourceParameterCode = 'lockShort', @DefaultValue = '25', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'opc', @WedjetSourceParameterCode = 'pollingTag', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'opc', @WedjetSourceParameterCode = 'pollingTagAlias', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'opc', @WedjetSourceParameterCode = 'populate', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'opc', @WedjetSourceParameterCode = 'readonly', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'opc', @WedjetSourceParameterCode = 'readonlyresult', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'opc', @WedjetSourceParameterCode = 'readTimeout', @DefaultValue = '5000', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'opc', @WedjetSourceParameterCode = 'server', @DefaultValue = 'OPC Server', @Comment = null, @Active = True;
	EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'opc', @WedjetSourceParameterCode = 'enableReadScanned', @DefaultValue = '1', @Comment = null, @Active = True;
	
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'address', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'alternativeAddress', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'alternativeRack', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'alternativeSlot', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'connectionType', @DefaultValue = '1', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'enableLargeData', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'getCpuInfo', @DefaultValue = 'true', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'lockLong', @DefaultValue = '250', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'lockShort', @DefaultValue = '25', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'pollingTag', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'pollingTagAlias', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'populate', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'queueSize', @DefaultValue = '8', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'rack', @DefaultValue = '-1', @Comment = 'Con -1 lo busca automáticamente', @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'readonly', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'readonlyresult', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'readTimeout', @DefaultValue = '5000', @Comment = null, @Active = True;
	EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 's7', @WedjetSourceParameterCode = 'enableReadScanned', @DefaultValue = '1', @Comment = null, @Active = True;
	
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'address', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'alternativeAddress', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'enableLargeData', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'lockLong', @DefaultValue = '250', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'lockShort', @DefaultValue = '25', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'pollingTag', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'pollingTagAlias', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'populate', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'queueSize', @DefaultValue = '4', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'readonly', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'readonlyresult', @DefaultValue = 'false', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'readTimeout', @DefaultValue = '5000', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'sourceId', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'sourcePort', @DefaultValue = '801', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'targetId', @DefaultValue = '', @Comment = null, @Active = True;
    EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'targetPort', @DefaultValue = '801', @Comment = null, @Active = True;
	EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'twincat', @WedjetSourceParameterCode = 'enableReadScanned', @DefaultValue = '1', @Comment = null, @Active = True;
	
	EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'mem', @WedjetSourceParameterCode = 'populate', @DefaultValue = 'false', @Comment = null, @Active = True;
	EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'mem', @WedjetSourceParameterCode = 'readonly', @DefaultValue = 'false', @Comment = null, @Active = True;
	EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'mem', @WedjetSourceParameterCode = 'readonlyresult', @DefaultValue = 'false', @Comment = null, @Active = True;
	EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'mem', @WedjetSourceParameterCode = 'readTimeout', @DefaultValue = '5000', @Comment = null, @Active = True;
	EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'mem', @WedjetSourceParameterCode = 'pollingTagAlias', @DefaultValue = '', @Comment = null, @Active = True;
	EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'mem', @WedjetSourceParameterCode = 'pollingTag', @DefaultValue = '', @Comment = null, @Active = True;
	EXEC [AUSStudio].[DoConfigDefineWedjetSourceTemplate] @WedjetSourceTypeCode = 'mem', @WedjetSourceParameterCode = 'enableReadScanned', @DefaultValue = '1', @Comment = null, @Active = True;
    -- End dump for table AUSStudio.WedjetSourceTemplate

    -- Begin dump for table AUSStudio.TrackingDiagram
    -- End dump for table AUSStudio.TrackingDiagram

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
