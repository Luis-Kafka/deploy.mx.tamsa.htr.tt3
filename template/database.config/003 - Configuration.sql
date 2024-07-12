--- Config dump file for schema Configuration
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Configuration.TableConfiguration
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Alarm', @TableName = 'Alarm', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Alarm', @TableName = 'AlarmBehaviour', @IsConfigurationTable = True, @UKColumns = 'idAlarm, idBehaviour';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Alarm', @TableName = 'AlarmCommentHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Alarm', @TableName = 'AlarmGroup', @IsConfigurationTable = True, @UKColumns = 'idAlarm, idGroup';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Alarm', @TableName = 'Behaviour', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Alarm', @TableName = 'Category', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Alarm', @TableName = 'DisableHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Alarm', @TableName = 'Enum', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Alarm', @TableName = 'EnumValue', @IsConfigurationTable = True, @UKColumns = 'idEnum, Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Alarm', @TableName = 'Group', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Alarm', @TableName = 'History', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Alarm', @TableName = 'Severity', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Alarm', @TableName = 'Tag', @IsConfigurationTable = True, @UKColumns = 'idPlcTagRead';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Alarm', @TableName = 'Type', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'AUSStudio', @TableName = 'TrackingDiagram', @IsConfigurationTable = True, @UKColumns = 'idArea';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'AUSStudio', @TableName = 'WedjetClassTemplate', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'AUSStudio', @TableName = 'WedjetSourceParameter', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'AUSStudio', @TableName = 'WedjetSourceTemplate', @IsConfigurationTable = True, @UKColumns = 'idWedjetTypeName,Parameter';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'AUSStudio', @TableName = 'WedjetSourceType', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'AUSStudio', @TableName = 'WedjetTypeName', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Command', @TableName = 'Command', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Command', @TableName = 'CommandHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Command', @TableName = 'Definition', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Command', @TableName = 'DefinitionStatus', @IsConfigurationTable = True, @UKColumns = 'idDefinition, ReadValue, WriteValue';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Command', @TableName = 'Parameter', @IsConfigurationTable = True, @UKColumns = 'idDefinition, Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Command', @TableName = 'ParameterHistory', @IsConfigurationTable = False, @UKColumns = 'idParameter, idCommandHistory';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'Application', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'Area', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'BatchChangeHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'BatchHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'Center', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'ChemicalElement', @IsConfigurationTable = True, @UKColumns = 'ChemicalElementCode';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'ChemicalElementType', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'DataType', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'Egu', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'Enum', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'EnumValue', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'ItemSide', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'Machine', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'MachineBatchHistory', @IsConfigurationTable = False, @UKColumns = 'idBatchHistory, idMachine';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'MachineProductWorkflow', @IsConfigurationTable = True, @UKColumns = 'idMachineWorkflow, idProductWorkflow';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'MachineWorkflow', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'MachineWorkflowSequence', @IsConfigurationTable = True, @UKColumns = 'idMachineWorkflow, idMachine, idMachinePrevious';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'Magnitude', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'Plc', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'PlcTag', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'Process', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'ProductWorkflow', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'ProductWorkflowMachine', @IsConfigurationTable = True, @UKColumns = 'idProductWorkflow, idMachine';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'Status', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'Twin', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'TwinMachine', @IsConfigurationTable = True, @UKColumns = 'idTwin, idMachine';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'Zone', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Common', @TableName = 'ZoneDetail', @IsConfigurationTable = True, @UKColumns = 'idZone, idMachine';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Configuration', @TableName = 'Configuration', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Configuration', @TableName = 'TableConfiguration', @IsConfigurationTable = True, @UKColumns = 'SchemaName, TableName';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Custom', @TableName = 'TrackingItemStatus', @IsConfigurationTable = True, @UKColumns = 'idItemStatus';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Custom', @TableName = 'TrackingPassAttribute', @IsConfigurationTable = True, @UKColumns = 'Code, InspectionCode';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Custom', @TableName = 'TrackingPassAttributeHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Custom', @TableName = 'TrackingSpecificationAttribute', @IsConfigurationTable = True, @UKColumns = 'idTrackingAttribute, idSpecificationComponentSubType, idSpecificationAttribute';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Custom', @TableName = 'TrackingZone', @IsConfigurationTable = True, @UKColumns = 'idZone';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Diagnostic', @TableName = 'Alarm', @IsConfigurationTable = True, @UKColumns = 'idAlarm';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Diagnostic', @TableName = 'Attribute', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Diagnostic', @TableName = 'HandshakeAlarm', @IsConfigurationTable = True, @UKColumns = 'idAlarm';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Diagnostic', @TableName = 'HandshakeComposition', @IsConfigurationTable = True, @UKColumns = 'idHandshakeComposition';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Diagnostic', @TableName = 'IssueCause', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Diagnostic', @TableName = 'IssueCauseAttributeHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Diagnostic', @TableName = 'IssueCauseHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Diagnostic', @TableName = 'IssueHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Diagnostic', @TableName = 'IssueSuggestion', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Diagnostic', @TableName = 'IssueSuggestionAttributeHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Diagnostic', @TableName = 'IssueSuggestionHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Diagnostic', @TableName = 'PresenceSensor', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Diagnostic', @TableName = 'PresenceSensorHandshake', @IsConfigurationTable = True, @UKColumns = 'idPresenceSensor, idHandshake';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Diagnostic', @TableName = 'PresenceSensorHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Diagnostic', @TableName = 'Severity', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Distribution', @TableName = 'Machine', @IsConfigurationTable = True, @UKColumns = 'IdMachine';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Distribution', @TableName = 'MachineCode', @IsConfigurationTable = True, @UKColumns = 'idMachineWorkflowSequence';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Distribution', @TableName = 'MachineWorkflow', @IsConfigurationTable = True, @UKColumns = 'IdMachineWorkflow,IdStation';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Distribution', @TableName = 'Replication', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Handshake', @TableName = 'Composition', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Handshake', @TableName = 'CompositionDefinition', @IsConfigurationTable = True, @UKColumns = 'idComposition, Sequence';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Handshake', @TableName = 'CompositionParameter', @IsConfigurationTable = True, @UKColumns = 'idCompositionDefinition, idParameter, Offset';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Handshake', @TableName = 'CompositionParameterSetter', @IsConfigurationTable = True, @UKColumns = 'idCompositionDefinition, idParameter';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Handshake', @TableName = 'Definition', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Handshake', @TableName = 'EnablePredicate', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Handshake', @TableName = 'Handshake', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Handshake', @TableName = 'HandshakeComposition', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Handshake', @TableName = 'HandshakeCompositionHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Handshake', @TableName = 'HandshakeHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Handshake', @TableName = 'Parameter', @IsConfigurationTable = True, @UKColumns = 'idDefinition, Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Handshake', @TableName = 'ParameterHistory', @IsConfigurationTable = False, @UKColumns = 'idHandshakeHistory, idParameter';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Handshake', @TableName = 'ParameterMapping', @IsConfigurationTable = True, @UKColumns = 'idSourceCompositionDefinition, idSourceParameter, idDestinationCompositionDefinition, idDestinationParameter';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Handshake', @TableName = 'ParameterSetter', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Interruption', @TableName = 'Category', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Interruption', @TableName = 'CategoryMachine', @IsConfigurationTable = True, @UKColumns = 'idCategory, idMachine';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Interruption', @TableName = 'Code', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Interruption', @TableName = 'CodeCategory', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Interruption', @TableName = 'CodeComponent', @IsConfigurationTable = True, @UKColumns = 'idCode, idComponent';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Interruption', @TableName = 'CodeIndu', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Interruption', @TableName = 'CodeMachine', @IsConfigurationTable = True, @UKColumns = 'idCode, idMachine';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Interruption', @TableName = 'Component', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Interruption', @TableName = 'ComponentMachine', @IsConfigurationTable = True, @UKColumns = 'idComponent, idMachine';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Interruption', @TableName = 'Group', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Interruption', @TableName = 'History', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Interruption', @TableName = 'Machine', @IsConfigurationTable = True, @UKColumns = 'idMachine';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Interruption', @TableName = 'Stage', @IsConfigurationTable = True, @UKColumns = 'idStage';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Message', @TableName = 'AcknowledgeScope', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Message', @TableName = 'Category', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Message', @TableName = 'MessageTemplate', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Message', @TableName = 'NotificationList', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Message', @TableName = 'Severity', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Message', @TableName = 'ZoneNotificationList', @IsConfigurationTable = True, @UKColumns = 'IdZone,IdNotificationList';
	EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'Catalog', @IsConfigurationTable = True, @UKColumns = 'idPreset, MaskedCatalogCriteriaRangeHigh, MaskedCatalogCriteriaRangeLow';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'CatalogCriteria', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'CatalogCriteriaRange', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'CatalogHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'Class', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'Container', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'Definition', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'EnumValue', @IsConfigurationTable = True, @UKColumns = 'idEnumValue';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'ExtendedCatalog', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'History', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'Machine', @IsConfigurationTable = True, @UKColumns = 'idMachine';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'MachineComponent', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'Policy', @IsConfigurationTable = True, @UKColumns = 'idDefinition, idGroup, idApplicationCommand';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'Preset', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'PresetContainer', @IsConfigurationTable = True, @UKColumns = 'idPreset, idContainer';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'Property', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'Status', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'Tag', @IsConfigurationTable = True, @UKColumns = 'idPlcTagWrite, idPlcTagReadAccepted, idPlcTagReadActual, idPlcTagReadStatus, TagReadActualOffset, TagReadStatusOffset';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Preset', @TableName = 'TagCommand', @IsConfigurationTable = True, @UKColumns = 'idTag, idCommand';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'PresetCatalog', @TableName = 'CatalogValue', @IsConfigurationTable = True, @UKColumns = 'idFamilyRevision, idFamilyTypePreset';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'PresetCatalog', @TableName = 'Criterion', @IsConfigurationTable = True, @UKColumns = 'idAttribute, idFamilyType';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'PresetCatalog', @TableName = 'Family', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'PresetCatalog', @TableName = 'FamilyRevision', @IsConfigurationTable = True, @UKColumns = 'idFamily, RevisionNumber';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'PresetCatalog', @TableName = 'FamilyRevisionCriterion', @IsConfigurationTable = True, @UKColumns = 'idFamilyRevision, idCriterion';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'PresetCatalog', @TableName = 'FamilyRevisionLog', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'PresetCatalog', @TableName = 'FamilyType', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'PresetCatalog', @TableName = 'FamilyTypePreset', @IsConfigurationTable = True, @UKColumns = 'idPreset';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'PresetCatalog', @TableName = 'SpecificationAttribute', @IsConfigurationTable = True, @UKColumns = 'idComponentSubType, idAttribute';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'PresetCatalog', @TableName = 'SpecificationValidValue', @IsConfigurationTable = True, @UKColumns = 'idSpecificationAttribute, Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Production', @TableName = 'BalanceMode', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Production', @TableName = 'CounterHistory', @IsConfigurationTable = False, @UKColumns = 'idKeyHistory';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Production', @TableName = 'CustomCounterHistory', @IsConfigurationTable = False, @UKColumns = 'idCounterHistory, idItemStatus';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Production', @TableName = 'KeyHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Production', @TableName = 'Machine', @IsConfigurationTable = True, @UKColumns = 'idMachine';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Production', @TableName = 'Stage', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Production', @TableName = 'StageHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Production', @TableName = 'TimeHistory', @IsConfigurationTable = False, @UKColumns = 'idKeyHistory';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Production', @TableName = 'TrackingPassHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Quality', @TableName = 'Code', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Quality', @TableName = 'CodeDestination', @IsConfigurationTable = True, @UKColumns = 'idCode, idDestination';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Quality', @TableName = 'CodeMachine', @IsConfigurationTable = True, @UKColumns = 'idCode, idMachine';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Quality', @TableName = 'Destination', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Quality', @TableName = 'History', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Schedule', @TableName = 'Definition', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Security', @TableName = 'ApplicationCommand', @IsConfigurationTable = True, @UKColumns = 'idApplication, Command';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Security', @TableName = 'Group', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Security', @TableName = 'GroupPolicy', @IsConfigurationTable = True, @UKColumns = 'idGroup, idApplicationCommand';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Security', @TableName = 'GroupZone', @IsConfigurationTable = True, @UKColumns = 'idGroup,idZone';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Security', @TableName = 'History', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Security', @TableName = 'User', @IsConfigurationTable = True, @UKColumns = 'Identification';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Security', @TableName = 'UserGroup', @IsConfigurationTable = True, @UKColumns = 'idUser, idGroup';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Shift', @TableName = 'Crew', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Shift', @TableName = 'CrewProfile', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Shift', @TableName = 'CrewProfileCrew', @IsConfigurationTable = True, @UKColumns = 'idCrewProfile, idCrew';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Shift', @TableName = 'ErrorHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Shift', @TableName = 'Shift', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Shift', @TableName = 'ShiftCrewProfile', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Shift', @TableName = 'ShiftCrewProfileSchedule', @IsConfigurationTable = True, @UKColumns = 'idShiftCrewProfileLocation, idDefinition';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Shift', @TableName = 'ShiftHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Shift', @TableName = 'ShiftProfile', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Shift', @TableName = 'ShiftProfileCrewProfile', @IsConfigurationTable = True, @UKColumns = 'idShiftProfile, idCrewProfile';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'Attribute', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'AttributeGroup', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'Component', @IsConfigurationTable = False, @UKColumns = 'idComponentType, Code, Version';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'ComponentAttributeValue', @IsConfigurationTable = False, @UKColumns = 'idComponent, idAttribute';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'ComponentAttributeValueArea', @IsConfigurationTable = False, @UKColumns = 'idComponentAttributeValue, idArea';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'ComponentAttributeValueMachine', @IsConfigurationTable = False, @UKColumns = 'idComponentAttributeValue, idMachine';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'ComponentAttributeValueMachineWorkflow', @IsConfigurationTable = False, @UKColumns = 'idComponentAttributeValue, idMachineWorkflow';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'ComponentAttributeValueMachineWorkflowSequence', @IsConfigurationTable = False, @UKColumns = 'idComponentAttributeValue, idMachineWorkflowSequence';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'ComponentSubType', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'ComponentType', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'ComponentTypeAttribute', @IsConfigurationTable = True, @UKColumns = 'idComponentType, idAttribute';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'ComponentTypeAttributeArea', @IsConfigurationTable = True, @UKColumns = 'idComponentTypeAttribute, idArea';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'ComponentTypeAttributeMachine', @IsConfigurationTable = True, @UKColumns = 'idComponentTypeAttribute, idMachine';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'ComponentTypeAttributeMachineWorkflow', @IsConfigurationTable = True, @UKColumns = 'idComponentTypeAttribute, idMachineWorkflow';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'ComponentTypeAttributeMachineWorkflowSequence', @IsConfigurationTable = True, @UKColumns = 'idComponentTypeAttribute, idMachineWorkflowSequence';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'ComponentTypeDefaultEntity', @IsConfigurationTable = True, @UKColumns = 'idComponentType';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'Specification', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'SpecificationComponent', @IsConfigurationTable = False, @UKColumns = 'idSpecification, idComponentSubType, idComponent';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Specification', @TableName = 'SpecificationType', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'AttributeTag', @IsConfigurationTable = True, @UKColumns = 'idAttribute, idTag';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'Chunk', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'ChunkData', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'CompressionMethod', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'Derived', @IsConfigurationTable = True, @UKColumns = 'idTag';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'Egu', @IsConfigurationTable = True, @UKColumns = 'idEgu';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'ErrorHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'ErrorType', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'Event', @IsConfigurationTable = True, @UKColumns = 'idTag';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'GroupType', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'Handshake', @IsConfigurationTable = True, @UKColumns = 'idTag';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'HandshakeX', @IsConfigurationTable = True, @UKColumns = 'idParameter, idDataType, idEgu';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'History', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'PlcTagPoint', @IsConfigurationTable = True, @UKColumns = 'idPlcTagRead, idPlcTagWrite';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'PlcTagTrend', @IsConfigurationTable = True, @UKColumns = 'idPlcTagRead, idPlcTagWrite';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'Point', @IsConfigurationTable = True, @UKColumns = 'idTag';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'PointX', @IsConfigurationTable = True, @UKColumns = 'Offset, Size, Precision, Bias, idDataType, idEgu';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'Preset', @IsConfigurationTable = True, @UKColumns = 'idTag';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'ReadArea', @IsConfigurationTable = True, @UKColumns = 'idTag';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'SaveFormat', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'Tag', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'TagType', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'Trend', @IsConfigurationTable = True, @UKColumns = 'idTag';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tda', @TableName = 'TrendX', @IsConfigurationTable = True, @UKColumns = 'Offset, Size, Precision, Bias, idDataType, idEgu';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tracking', @TableName = 'Attribute', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tracking', @TableName = 'AttributeHistory', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tracking', @TableName = 'AttributeParameter', @IsConfigurationTable = True, @UKColumns = 'idAttribute';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tracking', @TableName = 'CreationType', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tracking', @TableName = 'Handshake', @IsConfigurationTable = True, @UKColumns = 'idHandshake';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tracking', @TableName = 'History', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tracking', @TableName = 'ItemStatus', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tracking', @TableName = 'Tracking', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tracking', @TableName = 'TrackingLocation', @IsConfigurationTable = False, @UKColumns = 'idZone, SortOrder';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tracking', @TableName = 'TrackingType', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Tracking', @TableName = 'Zone', @IsConfigurationTable = True, @UKColumns = 'Code';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'TrackingView', @TableName = 'Edition', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'TrackingView', @TableName = 'EditionDetail', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'TrackingView', @TableName = 'HandshakeCompositionFlag', @IsConfigurationTable = False, @UKColumns = null;
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'TrackingView', @TableName = 'HandshakeCompositionParameter', @IsConfigurationTable = True, @UKColumns = 'idHandshakeComposition, idCompositionDefinition, idParameter';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Wedjet', @TableName = 'Class', @IsConfigurationTable = True, @UKColumns = 'Name';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Wedjet', @TableName = 'Parameter', @IsConfigurationTable = True, @UKColumns = 'Name';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Wedjet', @TableName = 'Source', @IsConfigurationTable = True, @UKColumns = 'SourceName, ParamName';
    EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Wedjet', @TableName = 'Tag', @IsConfigurationTable = True, @UKColumns = 'Name';
	EXEC [Configuration].[DoConfigDefineTableConfiguration] @SchemaName = 'Custom',	 @TableName = 'TrackingHslColor', @IsConfigurationTable = True, @UKColumns = 'H,S,L,SortOrder';
    -- End dump for table Configuration.TableConfiguration

    -- Begin dump for table Configuration.Configuration
    UPDATE [Configuration].[Configuration] SET [Active] = 'False';
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'Acquisition', @Name = 'Acquisition', @Description = 'Acquisition used by Command Manager', @Data = '<AcquisitionConfiguration factoryType="Tenaris.Library.IAcquisition.Wedjet.AcquisitionFactory, Tenaris.Library.IAcquisition.Wedjet">
		<WedjetConfiguration wedjetNetSource="tcp://$FORUMHOST_IP:$PORT_WEDJET"/>
	</AcquisitionConfiguration>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'AlarmMgr', @Name = 'Tenaris.Manager.Alarm.AlarmManager', @Description = 'Alarm Manager Factory Configuration', @Data = '<Tenaris.Manager.Alarm.AlarmManager factoryType="Tenaris.Manager.Alarm.AlarmManagerFactory, Tenaris.Manager.Alarm" isSingleton="True">
<AlarmConfiguration pollingEnabled="False" pollingTime="0" TestMode="False" AcquisitionFactoryName="Acquisition"/>
</Tenaris.Manager.Alarm.AlarmManager>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'AlarmMgr.Local', @Name = 'Tenaris.Manager.Alarm.AlarmManager.Local', @Description = 'Alarm Manager Local Proxy', @Data = '<Tenaris.Manager.Alarm.AlarmManager.Proxy url="tcp://localhost:$PORT_ALARMMANAGER/Tenaris.Manager.Alarm.AlarmManager.soap"
		instanceType="Tenaris.Manager.Alarm.Shared.IAlarmManager, Tenaris.Manager.Alarm.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
</Tenaris.Manager.Alarm.AlarmManager.Proxy>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'AlarmMgr.Proxy', @Name = 'Tenaris.Manager.Alarm.AlarmManager.Proxy', @Description = 'Alarm Manager Proxy', @Data = '<Tenaris.Manager.Alarm.AlarmManager.Proxy url="tcp://$FORUMHOST_IP:$PORT_ALARMMANAGER/Tenaris.Manager.Alarm.AlarmManager.soap"
		instanceType="Tenaris.Manager.Alarm.Shared.IAlarmManager, Tenaris.Manager.Alarm.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
  		<Redundancy>
   			<Address url="tcp://$FORUMHOST_IP:$PORT_ALARMMANAGER/Tenaris.Manager.Alarm.AlarmManager.soap" forumPresent="false" isTargetManager="true"/>
  		</Redundancy>
</Tenaris.Manager.Alarm.AlarmManager.Proxy>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = 'AlarmView', @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'AlarmView', @Name = 'CustomViewConfiguration', @Description = 'Alarm Manager View', @Data = '  <CustomViewConfiguration IsEnableAck="true"
  						   LocalGroupCode="PROD"
                           StartCollapsed ="false"
                           Rating5MinWarning="10"
                           Rating5MinCritical="40"
                           RatingShiftWarning="50"
                           RatingShiftCritical="200"
                           FilterAlarmTimer="0"
                           EditCommand="EDITCOMMENT"
                           AckCommand="ACKALARMS"
                           AlarmManagerFactoryName="Tenaris.Manager.Alarm.AlarmManager.Proxy"
                           GridViewConfigurationName="AlarmViewGridConfiguration"
                           ExternalConfigurationCommand="EEDITCONFIGURATION">
    <Mail server="10.41.183.5" port="25" from="Tenaris.View.Alarm@tenaris.com" user="" password="" domain=""/>
    <ExternalConfiguration type="Tenaris.View.Alarm.Extension.BuzzerConfigurator.ConfigurationActivator, Tenaris.View.Alarm.Extension.BuzzerConfigurator" />
  </CustomViewConfiguration>', @TypeName = 'Tenaris.View.Alarm.Model.Configuration.AlarmViewConfigurationSection, Tenaris.View.Alarm.Model', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = 'AlarmView', @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'AlarmView.Plg1', @Name = 'AlarmViewGridConfiguration', @Description = 'Grid Configuration', @Data = '  <GridViewConfiguration>
    <State IsVisible="True" MinWidth="0" MaxWidth="200" />
    <Comments IsVisible="False" MinWidth="0" MaxWidth="0" />
    <Plc IsVisible="True" MinWidth="80" MaxWidth="300" />
    <WorkingRef IsVisible="false" MinWidth="120" MaxWidth="650" />
    <Equipment IsVisible="False" MinWidth="100" MaxWidth="200" />
    <Code IsVisible="False" MinWidth="80" MaxWidth="400" />
    <Name IsVisible="False" MinWidth="80" MaxWidth="400" />
    <Description IsVisible="True" MinWidth="200" MaxWidth="750" />
    <Occurrences IsVisible="True" MinWidth="0" MaxWidth="40" />
    <TimeOn IsVisible="True" MinWidth="120" MaxWidth="250" />
    <TimeOff IsVisible="True" MinWidth="120" MaxWidth="250" />
    <TimeAck IsVisible="True" MinWidth="180" MaxWidth="250" />
    <Machine IsVisible="False" MinWidth="80" MaxWidth="250" />
    <Group IsVisible="True" MinWidth="80" MaxWidth="200" />
    <Category IsVisible="True" MinWidth="80" MaxWidth="200" />
    <Type IsVisible="True" MinWidth="80" MaxWidth="200" />
    <Priority IsVisible="False" MinWidth="80" MaxWidth="120" />
  </GridViewConfiguration>', @TypeName = 'Tenaris.View.Alarm.ViewModel.Configuration.GridViewConfiguration, Tenaris.View.Alarm.ViewModel', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'CommandHistory', @Name = 'Tenaris.Manager.Command.CommandHistory', @Description = 'Command History Factory Configuration', @Data = '<Tenaris.Manager.Command.CommandHistory factoryType="Tenaris.Manager.Command.CommandHistoryFactory, Tenaris.Manager.Command" isSingleton="True">
    <CommandHistoryConfiguration DatabaseConnectionStringName = "dbLevel2" CommandTimeout="3"/>
  </Tenaris.Manager.Command.CommandHistory>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'CommandMgr', @Name = 'Tenaris.Manager.Command.CommandManager', @Description = 'Command Manager Factory Configuration', @Data = '<Tenaris.Manager.Command.CommandManager factoryType="Tenaris.Manager.Command.CommandManagerFactory, Tenaris.Manager.Command" isSingleton="True">
    <CommandManagerConfiguration DatabaseConnectionStringName="dbLevel2"
                                 CommandHistoryEnabled="true"
                                 CommandHistoryFactoryName="Tenaris.Manager.Command.CommandHistory"
                                 AcquisitionFactoryName="Acquisition"/>
  </Tenaris.Manager.Command.CommandManager>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'CommandMgr.Local', @Name = 'Tenaris.Manager.Command.CommandManager.Local', @Description = 'Command Manager Local Proxy', @Data = '<Tenaris.Manager.Command.CommandManager.Proxy url="tcp://localhost:$PORT_COMMANDMANAGER/Tenaris.Manager.Command.CommandManager.soap"
		instanceType="Tenaris.Manager.Command.Shared.ICommandManager, Tenaris.Manager.Command.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
</Tenaris.Manager.Command.CommandManager.Proxy >', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'CommandMgr.Proxy', @Name = 'Tenaris.Manager.Command.CommandManager.Proxy', @Description = 'Command Manager Proxy', @Data = '<Tenaris.Manager.Command.CommandManager.Proxy url="tcp://$FORUMHOST_IP:$PORT_COMMANDMANAGER/Tenaris.Manager.Command.CommandManager.soap"
		instanceType="Tenaris.Manager.Command.Shared.ICommandManager, Tenaris.Manager.Command.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
    	<Redundancy>
     		 <Address url="tcp://$FORUMHOST_IP:$PORT_COMMANDMANAGER/Tenaris.Manager.Command.CommandManager.soap" forumPresent="false" isTargetManager="true"/>
    	</Redundancy>
</Tenaris.Manager.Command.CommandManager.Proxy >', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = 'TrackingView', @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'ConfigSource', @Name = 'ConfigSource', @Description = 'Tracking View ConfigSource', @Data = '<ConfigSource ConfigInDB="True"
                Layout="TrackingLayout"
                Sources=""
                Status=""
                OutOfLine=""
                Crane=""
                />', @TypeName = 'Tenaris.View.Tracking.Config.ViewConfigSource, Tenaris.View.Tracking.Config', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'DiagnosticManager', @Name = 'Tenaris.Manager.Diagnostic.DiagnosticManager', @Description = 'Diagnostic Manager Factory', @Data = '<Tenaris.Manager.Diagnostic.DiagnosticManager factoryType="Tenaris.Manager.Diagnostic.DiagnosticManagerFactory, Tenaris.Manager.Diagnostic" isSingleton="True">
    <Configuration appName="DiagnosticManager"
    			   managerConnections="TrackingManager=Tenaris.Manager.Tracking.TrackingManager.Local,HandshakeManager=Tenaris.Manager.Handshake.HandshakeManager.Local,ProductionManager=Tenaris.Manager.Production.ProductionManager.Local,AlarmManager=Tenaris.Manager.Alarm.AlarmManager.Local">
        <Providers>
        	
        	<provider name="HandshakeMonitorHandler" type="Tenaris.Library.DiagnosticPlugin.Handshake.HandshakeMonitorHandlerProvider, Tenaris.Library.DiagnosticPlugin.Handshake">
                <Configuration dbConnectionStringName="dbLevel2" handshakeManagerName="HandshakeManager" />
            </provider>
            
           <!--   
            <provider name="AlarmMonitorHandler" type="Tenaris.Library.DiagnosticPlugin.Alarm.AlarmMonitorHandlerProvider, Tenaris.Library.DiagnosticPlugin.Alarm">
                <Configuration dbConnectionStringName="dbLevel2" alarmManagerName="AlarmManager" />
            </provider>
          
            
            <provider name="TrackingMonitorHandler" type="Tenaris.Library.DiagnosticPlugin.Tracking.TrackingMonitorHandlerProvider, Tenaris.Library.DiagnosticPlugin.Tracking">
                <Configuration dbConnectionStringName="dbLevel2" handshakeManagerName="HandshakeManager" trackingManagerName="TrackingManager" productionManagerName="ProductionManager" applicationCode="TrackingManager" />
            </provider>
            
            <provider name="DummyHandler" type="DummyHandler.DummyRandomHandlerProvider, DummyHandler">
                <Configuration dbConnectionStringName="dbLevel2" handshakeCompositionCode="=120+A1-DAL01" trackingZoneCode="=120+A1-RTB01" />
            </provider>
            -->
        </Providers>
    </Configuration>    
</Tenaris.Manager.Diagnostic.DiagnosticManager>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'DiagnosticManager.Local', @Name = 'Tenaris.Manager.Diagnostic.DiagnosticManager.Local', @Description = 'Diagnostic Manager Local Proxy', @Data = '<Tenaris.Manager.Diagnostic url="tcp://localhost:$PORT_DIAGNOSTICMANAGER/Tenaris.Manager.Diagnostic.DiagnosticManager.soap"
		instanceType="Tenaris.Manager.Diagnostic.Shared.IDiagnosticManager, Tenaris.Manager.Diagnostic.Shared" 
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
</Tenaris.Manager.Diagnostic>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'DiagnosticManager.Proxy', @Name = 'Tenaris.Manager.Diagnostic.DiagnosticManager.Proxy', @Description = 'Diagnostic Manager Proxy', @Data = '<Tenaris.Manager.Diagnostic url="tcp://$FORUMHOST_IP:$PORT_DIAGNOSTICMANAGER/Tenaris.Manager.Diagnostic.DiagnosticManager.soap"
		instanceType="Tenaris.Manager.Diagnostic.Shared.IDiagnosticManager, Tenaris.Manager.Diagnostic.Shared" 
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
    	<Redundancy>
      		<Address url="tcp://$FORUMHOST_IP:$PORT_DIAGNOSTICMANAGER/Tenaris.Manager.Diagnostic.DiagnosticManager.soap" forumPresent="false" isTargetManager="true"/>
    	</Redundancy>
</Tenaris.Manager.Diagnostic>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = 'TrackingView', @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'DynamicHeaderConfiguration', @Name = 'DynamicHeaderConfiguration', @Description = 'DynamicHeaderConfiguration', @Data = '<DynamicHeaderConfiguration SpecificationServiceSectionName="SpecificationServiceClient.Proxy" />', @TypeName = 'Tenaris.View.Tracking.DynamicHeader.Configuration.DynamicHeaderConfiguration, Tenaris.View.Tracking.DynamicHeader', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = 'TechAlarmView', @AreaCode = null, @ZoneCode = 'ALL', @MachineCode = null, @Code = 'GridViewConfiguration', @Name = 'CustomViewConfiguration', @Description = 'GridViewConfiguration', @Data = '<TechAlarmViewGridConfiguration>
    <State IsVisible="False" MinWidth="40" MaxWidth="40" />
	<Occurrence IsVisible="False" MinWidth="40" MaxWidth="40" />
	<Code IsVisible="False" MinWidth="120" MaxWidth="180" />
	<Equipment IsVisible="False" MinWidth="90" MaxWidth="150" />
	<Description IsVisible="True" MinWidth="400" MaxWidth="750" />
	<TraceabilityNumber IsVisible="True" MinWidth="120" MaxWidth="160" />
	<Product IsVisible="False" MinWidth="120" MaxWidth="160" />
	<Occurrences IsVisible="False" MinWidth="40" MaxWidth="40" />
	<TimeOn IsVisible="True" MinWidth="200" MaxWidth="250" />
	<TimeOff IsVisible="True" MinWidth="200" MaxWidth="250" />
	<TimeAck IsVisible="False" MinWidth="200" MaxWidth="250" />
	<Machine IsVisible="True" MinWidth="190" MaxWidth="300" />
	<Plc IsVisible="False" MinWidth="190" MaxWidth="300" />
	<Group IsVisible="False" MinWidth="60" MaxWidth="150" />
	<WorkingRef IsVisible="False" MinWidth="200" MaxWidth="650" />
	<Priority IsVisible="False" MinWidth="80" MaxWidth="80" />
	<Comments IsVisible="True" MinWidth="90" MaxWidth="90" />
	<Observation IsVisible="True" MinWidth="50" MaxWidth="150" />
	<RejectCode IsVisible="True" MinWidth="90" MaxWidth="90" />
	<RejectDescription IsVisible="True" MinWidth="50" MaxWidth="120" />
	<Destination IsVisible="True" MinWidth="50" MaxWidth="90" />
	<JustificationCode IsVisible="True" MinWidth="50" MaxWidth="120" />
	<OrderNumber IsVisible="True" MinWidth="120" MaxWidth="240"/>
	<HeatNumber IsVisible="True" MinWidth="120" MaxWidth="240"/>
  </TechAlarmViewGridConfiguration>', @TypeName = 'Tenaris.View.TechAlarm.ViewModel.Configuration.GridViewConfiguration, Tenaris.View.TechAlarm.ViewModel', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'HandshakeMgr', @Name = 'Tenaris.Manager.Handshake.HandshakeManager', @Description = 'Handshake Manager Factory Configuration', @Data = '<Tenaris.Manager.Handshake.HandshakeManager factoryType="Tenaris.Manager.Handshake.HandshakeFactory, Tenaris.Manager.Handshake" isSingleton="True">
<HandshakeManagerConfiguration HeaderLayout="FiveWordHeaders" 
							   HandshakeReturnsResultAndTriggerCopy="true" 
							   HandledApplicationCodeList="" 
							   ProcessingRetryCount="0"
							   AcquisitionFactoryName="Acquisition"
							   TransactionTimeout="10000"
							   >
</HandshakeManagerConfiguration>
<!-- HeaderLayout - Indicates the memory layout to be used for headers of handshakes. Can be: 
					WordHeaderFields: Layout with 1 word headers and word header fields (Trigger, Resul) 
					ByteHeaderFields: Layout with 1 word headers and byte header fields (Retry, Trigger, Result, TriggerCopy)
					FiveWordHeaders: Layout with 5 words headers and word header fields (Trigger, Retry, Timeout, Flags, Result, TriggerCopy)
	 -->
<!-- HandshakeReturnsResultAndTriggerCopy - Flag indicating whether handshake manager will work responding the Command indicated by client and a copy of the Counter
	 so that PLC can validate that the answer recibed from Level2 matches the request it is waiting for. If configured as False,
	 handshake manager operates as defined for first version, that is, responding only the Command (Result) indicated by the client. -->
<!-- HandledApplicationCodeList - Comma separated list with all application codes whose handshakes are to be handled
	 by this instance of handshake manager. If empty, the default is to handle ALL handshakes of configured area -->
<!-- ProcessingRetryCount - If greater than 0, configures how many retries are allowed before restaring the worker thread that processes a handshake.
							If less or equal to 0, never restarts the worker thread that processes a handshake.-->
</Tenaris.Manager.Handshake.HandshakeManager>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'HandshakeMgr.Local', @Name = 'Tenaris.Manager.Handshake.HandshakeManager.Local', @Description = 'Handshake Manager Local Proxy', @Data = '<Tenaris.Manager.Handshake.HandshakeManager url="tcp://localhost:$PORT_HANDSHAKEMANAGER/Tenaris.Manager.Handshake.HandshakeManager.soap"
		instanceType="Tenaris.Manager.Handshake.Shared.IHandshakeManager, Tenaris.Manager.Handshake.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
</Tenaris.Manager.Handshake.HandshakeManager>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'HandshakeMgr.Proxy', @Name = 'Tenaris.Manager.Handshake.HandshakeManager.Proxy', @Description = 'Handshake Manager Proxy', @Data = '<Tenaris.Manager.Handshake.HandshakeManager url="tcp://$FORUMHOST_IP:$PORT_HANDSHAKEMANAGER/Tenaris.Manager.Handshake.HandshakeManager.soap"
		instanceType="Tenaris.Manager.Handshake.Shared.IHandshakeManager, Tenaris.Manager.Handshake.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
		<Redundancy>		
			<Address url="tcp://$FORUMHOST_IP:$PORT_HANDSHAKEMANAGER/Tenaris.Manager.Handshake.HandshakeManager.soap" forumPresent="false" isTargetManager="true"/>
		</Redundancy>
</Tenaris.Manager.Handshake.HandshakeManager>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'InterruptionManager', @Name = 'Tenaris.Manager.Interruption.InterruptionManager', @Description = 'Interruption Manager Factory Configuration', @Data = '<Tenaris.Manager.Interruption.InterruptionManager factoryType="Tenaris.Manager.Interruption.InterruptionManagerFactory, Tenaris.Manager.Interruption" isSingleton="True">
  <InterruptionManagerConfiguration keyManagerSectionName="Tenaris.Manager.Key.KeyManager.Local">
    <ActivePlugins>
      <Plugin machineCode="$MACHINE_CODE" sectionName="InterruptionMgr.Plugin.$MACHINE_CODE" type="Tenaris.Manager.Interruption.Plugin.Pipes.StatelessPipesPlugin, Tenaris.Manager.Interruption.Plugin.Pipes" />
    </ActivePlugins>
  </InterruptionManagerConfiguration>
</Tenaris.Manager.Interruption.InterruptionManager>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'InterruptionManager.Local', @Name = 'Tenaris.Manager.Interruption.Local', @Description = 'Interruption Manager Local Proxy', @Data = '<Tenaris.Manager.Interruption.InterruptionManager.Proxy url="tcp://localhost:$PORT_INTERRUPTIONMANAGER/Tenaris.Manager.Interruption.InterruptionManager.soap"
		instanceType="Tenaris.Manager.Interruption.Shared.IInterruptionManager, Tenaris.Manager.Interruption.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
</Tenaris.Manager.Interruption.InterruptionManager.Proxy>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'InterruptionManager.Proxy', @Name = 'Tenaris.Manager.Interruption.Proxy', @Description = 'Interruption Manager Proxy', @Data = '<Tenaris.Manager.Interruption.InterruptionManager.Proxy url="tcp://$FORUMHOST_IP:$PORT_INTERRUPTIONMANAGER/Tenaris.Manager.Interruption.InterruptionManager.soap"
		instanceType="Tenaris.Manager.Interruption.Shared.IInterruptionManager, Tenaris.Manager.Interruption.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
		<Redundancy>
			<Address url="tcp://$FORUMHOST_IP:$PORT_INTERRUPTIONMANAGER/Tenaris.Manager.Interruption.InterruptionManager.soap" forumPresent="false" isTargetManager="true"/>
		</Redundancy>
</Tenaris.Manager.Interruption.InterruptionManager.Proxy>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'InterruptionMgr.Plugin.$MACHINE_CODE', @Name = 'InterruptionMgr.Plugin.$MACHINE_CODE', @Description = 'Interruption Manager - Plugin Pipes Configuration', @Data = '<Interruption.Plugin.Pipes
    ConnectionStringName="dbLevel2"
    HandlingMode="Production"
    ProductionManagerSectionName="Tenaris.Manager.Production.ProductionManager.Local"
    HandshakeManagerSectionName="Tenaris.Manager.Handshake.HandshakeManager.Local"
    IntItemLoadHandshakeCode="IntItemLoad"
    SpecificationServiceSectionName="SpecificationServiceClient.Local"
    SpecificationMachineBatchComponentName="MACHINEBATCH"
    SpecificationCadenceFieldName="CYCLETIME"
    CheckMissingInterruptionsAtStart="true"/>', @TypeName = 'Tenaris.Manager.Interruption.Plugin.Pipes.PipesPluginConfiguration, Tenaris.Manager.Interruption.Plugin.Pipes', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'InterruptionPluginPipes', @Name = 'Interruption.Plugin.Pipes', @Description = 'Interruption Manager - Plugin Pipes Configuration', @Data = '<Interruption.Plugin.Pipes
    ConnectionStringName="dbLevel2"
    HandlingMode="Production"
    ProductionManagerSectionName="Tenaris.Manager.Production.ProductionManager.Local"
    HandshakeManagerSectionName="Tenaris.Manager.Handshake.HandshakeManager.Local"
    IntItemLoadHandshakeCode="IntItemLoad"
    SpecificationServiceSectionName="SpecificationServiceClient.Local"
    SpecificationMachineBatchComponentName="MACHINEBATCH"
    SpecificationCadenceFieldName="CYCLETIME"
    CheckMissingInterruptionsAtStart="true"/>', @TypeName = 'Tenaris.Manager.Interruption.Plugin.Pipes.PipesPluginConfiguration, Tenaris.Manager.Interruption.Plugin.Pipes', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = 'InterruptionView', @AreaCode = '$AREA_CODE', @ZoneCode = 'ALL', @MachineCode = null, @Code = 'InterruptionView', @Name = 'CustomViewConfiguration', @Description = 'Interruption Manager View', @Data = '<CustomViewConfiguration 
                               PathExcelFiles="./Xls/"
                               MaxShiftDisplay="1"
                               JustifyCommand="JUSTIFY"
                               MaintenanceGroupCode=""
                               NotEditableIntCategories="Micro"
							   NotEditableIntHistoricView="true"
                               MachineDefault=""
                               IsProductionMaintenanceIntegrated="true"
                               ResourcesFolder=".\Resources\Interruption\"
                               InterruptionManagerSectionName="Tenaris.Manager.Interruption.Proxy"
                               KeyManagerSectionName="Tenaris.Manager.Key.KeyManager.Proxy"
                               SpecificationServiceSectionName="SpecificationServiceClient.Proxy">
     <Components>
        <Component name="PdfReportComponent" type="Tenaris.View.Interruption.Report.ReportComponent, Tenaris.View.Interruption.Report" isSingleton="true">
            <Configuration>
                <ReportConfiguration showDialogWindow="true">
                    <PdfReportConfiguration
                        fileName="InterruptionHistoryReport"
                        showSaveDialog="true"
                        saveDialogText="Crear archivo PDF"
                        saveToSharedFolder="false"
                        sharedFolderPath="\\$FORUMHOST_IP\TenarisLog"
                        print="false"
                        openDestinationFolder="false"
                        sendMail="false"
                        headerLeftText="Reporte histórico de interrupciones"
                        headerRightText="Tenaris Siderca"
                        footerCreationDateText="Día de creación"
                        footerPageText="Página {0}"
                        isPortrait="true"
                    />
                    <CsvReportConfiguration
                        fileName="InterruptionHistoryExport"
                        showSaveDialog="true"
                        saveDialogText="Exportar a archivo .CVS"
                        saveToSharedFolder="true"
                        sharedFolderPath="\\$FORUMHOST_IP\TenarisLog"
                        print="false"
                        openDestinationFolder="false"
                        sendMail="false"
                        headerText = "Reporte histórico de interruption - Tenaris Siderca"
                        headeCreationDateText = "Día de creación"
                    />
                    <MailConfiguration
                        hostName="mail.siderca.techint.net"
                        senderAddress="Tenaris.View.Interruption@tenaris.com@tenaris.com"
                        recipientsAddresses="recipientname1@tenaris.com,recipientname2@tenaris.com"
                        defaultSubjectText="reporte de interrupciones"
                        defaultBodyText="Reporte generado y enviado desde la aplicación de operación."
                    />
                </ReportConfiguration>
            </Configuration>
        </Component>
    </Components>
</CustomViewConfiguration>
', @TypeName = 'Tenaris.View.Interruption.Shared.Configuration.InterruptionViewConfigurationSection, Tenaris.View.Interruption.Shared', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'KeyMgr.Local', @Name = 'Tenaris.Manager.Key.KeyManager.Local', @Description = 'Key Manager Local Proxy', @Data = '<KeyManagerConfiguration.Proxy url="tcp://localhost:$PORT_PRODUCTIONMANAGER/Tenaris.Manager.Production.ProductionManager.soap"
	instanceType="Tenaris.Library.IKeyManager.Shared.IKeyManager, Tenaris.Library.IKeyManager.Shared"
    aliveInterval="1000"
    singleInstance="true"
	isSingleton="true" 
	isTargetManager="true"     
    validateConnection="false">
</KeyManagerConfiguration.Proxy >', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'KeyMgr.Proxy', @Name = 'Tenaris.Manager.Key.KeyManager.Proxy', @Description = 'Key Manager Proxy', @Data = '<KeyManagerConfiguration.Proxy url="tcp://$FORUMHOST_IP:$PORT_PRODUCTIONMANAGER/Tenaris.Manager.Production.ProductionManager.soap"
	instanceType="Tenaris.Library.IKeyManager.Shared.IKeyManager, Tenaris.Library.IKeyManager.Shared"
    aliveInterval="1000"
    singleInstance="true"
	isSingleton="true" 
	isTargetManager="true"     
    validateConnection="false">
    <Redundancy>	  
      <Address url="tcp://$FORUMHOST_IP:$PORT_PRODUCTIONMANAGER/Tenaris.Manager.Production.ProductionManager.soap" forumPresent="false" isTargetManager="true"/>
    </Redundancy>
</KeyManagerConfiguration.Proxy >', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'MgrBaseConfig', @Name = 'ManagerBaseConfiguration', @Description = 'ManagerBaseConfiguration', @Data = '<ManagerBaseConfiguration areaCode="$AREA_CODE"  defaultConnectionStringName="dbLevel2" defaultCommandTimeout="10"/>', @TypeName = 'Tenaris.Manager.Forum.Shared.Configuration.ManagerBaseConfiguration, Tenaris.Manager.Forum.Shared', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'PlcMgr', @Name = 'Tenaris.Manager.PLC.PLCManager', @Description = 'Plc Manager Factory Configuration', @Data = '<Tenaris.Manager.PLC.PLCManager factoryType="Tenaris.Manager.PLC.PLCManagerFactory, Tenaris.Manager.PLC" isSingleton="True">
	<PLCManagerConfiguration wedjetConnectionStringName="dbLevel2" area="$AREA_CODE"  />
</Tenaris.Manager.PLC.PLCManager>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = null, @ZoneCode = null, @MachineCode = null, @Code = 'PresetHistoricFilters', @Name = 'PresetHistoricFilters', @Description = 'PresetHistoricFilters', @Data = '<?xml version="1.0" encoding="utf-8" ?>
<history>
  <fields>
    <field name="TargetWorkorder"     description="Expediente"      datatype="System.String"     hidden="false"  width="185" />
    <field name="DiameterFrom"        description="Diametro:"       datatype="System.Double"     hidden="false"  width="185" />
    <field name="WallThicknessFrom"   description="Espesor:" 		datatype="System.Double"     hidden="false"  width="185" />
    <field name="TargetProduct"       description="Ciclo"     		datatype="System.String"     hidden="false"  width="185" />    
    <field name="DiameterTo"          description="-"               datatype="System.Double"     hidden="false"  width="185" />
    <field name="WallThicknessTo"     description="-"               datatype="System.Double"     hidden="false"  width="185" />
    <field name="Heat"                description="Colada"          datatype="System.String"     hidden="false"  width="185" />
    <field name="MachineName"         description="Maquina"         datatype="System.String"     hidden="false"  width="185"  iscombo="true"  stored="[Preset].[GetHistoricFilterMachines]"   displaymemberpath="Name" />
    <field name="PropertyName"        description="Propiedad"       datatype="System.String"     hidden="false"  width="185"  iscombo="true"  stored="[Preset].[GetHistoricFilterProperties]" displaymemberpath="Name" />
    <field name="PresetName"          description="Preset"          datatype="System.String"     hidden="false"  width="250" />
  </fields>
</history> 
', @TypeName = null, @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'PresetMgr', @Name = 'Tenaris.Manager.Preset.PresetManager', @Description = 'Preset Manager Factory Configuration', @Data = '<Tenaris.Manager.Preset.PresetManager factoryType="Tenaris.Manager.Preset.PresetManagerFactory, Tenaris.Manager.Preset" isSingleton="True">
    <PresetManagerConfiguration PresetValidatorConfiguration="Tenaris.Manager.Preset.PresetValidator"
                                CommandManagerSectionName="Tenaris.Manager.Command.CommandManager.Local"
                                KeyManagerSectionName="Tenaris.Manager.Key.KeyManager.Local"
                                AcquisitionConfiguration="Acquisition"
                                SpecificationSectionName="SpecificationServiceClient.Local"
                                UsingMathCorrections="false" />
</Tenaris.Manager.Preset.PresetManager>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'PresetMgr.Local', @Name = 'Tenaris.Manager.Preset.PresetManager.Local', @Description = 'Preset Manager Local Proxy', @Data = '<Tenaris.Manager.Preset.PresetManager url="tcp://localhost:$PORT_PRESETMANAGER/Tenaris.Manager.Preset.PresetManager.soap"
		instanceType="Tenaris.Manager.Preset.Shared.IPresetManager, Tenaris.Manager.Preset.Shared" 
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
</Tenaris.Manager.Preset.PresetManager>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = 'FORGE', @ZoneCode = null, @MachineCode = null, @Code = 'PresetMgr.Proxy', @Name = 'Tenaris.Manager.Preset.PresetManager.Proxy', @Description = 'Preset Manager Proxy', @Data = '<Tenaris.Manager.Preset.PresetManager url="tcp://10.200.120.191:49110/Tenaris.Manager.Preset.PresetManager.soap"
		instanceType="Tenaris.Manager.Preset.Shared.IPresetManager, Tenaris.Manager.Preset.Shared" 
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
		<Redundancy>
  			<Address url="tcp://$FORUMHOST_IP:$PORT_PRESETMANAGER/Tenaris.Manager.Preset.PresetManager.soap" forumPresent="false" isTargetManager="true"/>
		</Redundancy>
</Tenaris.Manager.Preset.PresetManager>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = null, @ZoneCode = null, @MachineCode = null, @Code = 'PresetValidator', @Name = 'Tenaris.Manager.Preset.PresetValidator', @Description = 'Preset Manager Validator Configuration', @Data = '<Tenaris.Manager.Preset.PresetValidator>
    <Validators>
    </Validators>
  </Tenaris.Manager.Preset.PresetValidator>', @TypeName = 'Tenaris.Manager.Preset.Configuration.PresetValidatorConfiguration, Tenaris.Manager.Preset', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = 'PresetView', @AreaCode = null, @ZoneCode = null, @MachineCode = null, @Code = 'PresetView', @Name = 'CustomViewConfiguration', @Description = 'Preset Manager View', @Data = '  <CustomViewConfiguration modifySetCommand="MODIFYSET" modifyCatCommand="MODIFYCAT" applyAllSetCommand="APPLYALL" applyCommand="APPLY"
                           showChildMachines="true"
                           childMachinesSetting="ByTab"
                           reloadAvailabilityInterval="10"
                           productionManagerFactoryName="Tenaris.Manager.Production.ProductionManager.Proxy" 
                           specificationServiceClientConfig="SpecificationServiceClient.Proxy"
                           historicFiltersConfiguration="PresetHistoricFilters"
                           historicSearchDaysLimit="6000"
                           historicMaxRows="100000"
                           >
    <PresetManagerConfigurations UsingSecurity="false" LockInEditMode="true" Timeout="5000">
      <Managers>
        <add Description="Preset Manager" ManagerSection="Tenaris.Manager.Preset.PresetManager.Proxy"/>
      </Managers>
    </PresetManagerConfigurations>

  </CustomViewConfiguration>
  
  ', @TypeName = 'Tenaris.View.Preset.Model.Configuration.PresetViewConfigurationSection, Tenaris.View.Preset.Model', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'ProductionManager.DbStatusChangePlugin', @Name = 'ProductionManager.DbStatusChangePlugin', @Description = 'Production Manager - DB Status Change Plugin', @Data = '<ProductionManager.DbStatusChangePlugin factoryType="Tenaris.Manager.Production.Plugin.DbPlugin.DbStatusChangePluginFactory, Tenaris.Manager.Production.Plugin" isSingleton="True">
    <DbStatusChangePluginConfiguration DatabaseConnectionStringName="dbLevel2" />
</ProductionManager.DbStatusChangePlugin>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'ProductionMgr', @Name = 'Tenaris.Manager.Production.ProductionManager', @Description = 'Production Manager Factory Configuration', @Data = '<Tenaris.Manager.Production.ProductionManager factoryType="Tenaris.Manager.Production.ProductionManagerFactory, Tenaris.Manager.Production" isSingleton="True">
<ProductionManagerConfiguration ChangeShiftMaxRetry="10"
								MaximumDatabaseTransactionRetryCount="0"
								LoadBatchChangeByPiecesMode="AfterLoad"
								BalancePluginType=""
								UnsuscribeClientOnKeyChangingException="True"
								CommandManagerFactoryName="Tenaris.Manager.Command.CommandManager.Local"
								HandshakeManagerFactoryName="Tenaris.Manager.Handshake.HandshakeManager.Local"
								ShiftManagerFactoryName="Tenaris.Manager.Shift.ShiftManager.Local"
								TrackingManagerFactoryName="Tenaris.Manager.Tracking.TrackingManager.Local"
								SpecificationServiceFactoryName="SpecificationServiceClient.Local"
								StatusChangePluginFactoryName="ProductionManager.DbStatusChangePlugin"
								ApplicationCode="ProductionManager"
								UseChildMachinesOnlyForChangeProduct="True"
								/>
<!-- ChangeShiftMaxRetry                        - Maximum number of retries to process change of shift (retries are performed only in case of failure
												  processing change of shift) -->
<!-- MaximumDatabaseTransactionRetryCount       - Number of retries performed for a failed transaction -->
<!-- LoadBatchChangeByPiecesMode                - Mode to change batch by count of pieces, either ''BeforeLoad'' or ''AfterLoad'' -->
<!-- BalancePluginType                          - Plugin to determine balance -->
</Tenaris.Manager.Production.ProductionManager>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'ProductionMgr.Local', @Name = 'Tenaris.Manager.Production.ProductionManager.Local', @Description = 'Production Manager Local Proxy', @Data = '<Tenaris.Manager.Production.ProductionManager url="tcp://localhost:$PORT_PRODUCTIONMANAGER/Tenaris.Manager.Production.ProductionManager.soap"
		instanceType="Tenaris.Manager.Production.Shared.IProductionManager, Tenaris.Manager.Production.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
</Tenaris.Manager.Production.ProductionManager>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'ProductionMgr.Proxy', @Name = 'Tenaris.Manager.Production.ProductionManager.Proxy', @Description = 'Production Manager Proxy', @Data = '<Tenaris.Manager.Production.ProductionManager url="tcp://$FORUMHOST_IP:$PORT_PRODUCTIONMANAGER/Tenaris.Manager.Production.ProductionManager.soap"
		instanceType="Tenaris.Manager.Production.Shared.IProductionManager, Tenaris.Manager.Production.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
    <Redundancy>      
      <Address url="tcp://$FORUMHOST_IP:$PORT_PRODUCTIONMANAGER/Tenaris.Manager.Production.ProductionManager.soap" forumPresent="false" isTargetManager="true"/>
    </Redundancy>
</Tenaris.Manager.Production.ProductionManager>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = 'ProductionView', @AreaCode = '$AREA_CODE', @ZoneCode = 'ALL', @MachineCode = null, @Code = 'ProductionView', @Name = 'CustomViewConfiguration', @Description = 'Production View', @Data = '<CustomViewConfiguration 
      ProductionFactoryName="Tenaris.Manager.Production.ProductionManager.Proxy" 
      SpecificationFactoryName="SpecificationServiceClient.Proxy" 
      ViewChildMachines="false"
      ReverseMachinesTabsOrder="false" 
      ReverseBalanceLayoutCodeList="" 
      SpecificationStandardCycleTime="MACHINEBATCH.StandardCycleTime" 
      SpecificationStandardWorkTime="MACHINEBATCH.StandardWorkTime" 
      YellowSemaphorePipesCount="3" 
      ShowChangeProductOnlyOnEndedBatch="false"
      ShowChangeProductOnMachineLock="false"
      ChangeBatchCommand="CHANGEBATCH" 
      SelectFutureBatchCommand="SELFUTBATCH" 
      UnlockCommand="UNLOCKPROD" 
      EditCountersCommand="EDITCOUNTERS"  >
  </CustomViewConfiguration>
', @TypeName = 'Tenaris.View.Production.Model.Common.ProductionViewConfiguration, Tenaris.View.Production.Model', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'ShiftMgr', @Name = 'Tenaris.Manager.Shift.ShiftManager', @Description = 'Shift Manager Factory Configuration', @Data = '<Tenaris.Manager.Shift.ShiftManager factoryType="Tenaris.Manager.Shift.Factory, Tenaris.Manager.Shift" isSingleton="True" />', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'ShiftMgr.Local', @Name = 'Tenaris.Manager.Shift.ShiftManager.Local', @Description = 'Shift Manager Local Proxy', @Data = '<Tenaris.Manager.Shift.ShiftManager url="tcp://localhost:$PORT_SHIFTMANAGER/Tenaris.Manager.Shift.ShiftManager.soap" 
		instanceType="Tenaris.Manager.Shift.Shared.IShiftManager, Tenaris.Manager.Shift.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
</Tenaris.Manager.Shift.ShiftManager>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'ShiftMgr.Proxy', @Name = 'Tenaris.Manager.Shift.ShiftManager.Proxy', @Description = 'Shift Manager Proxy', @Data = '<Tenaris.Manager.Shift.ShiftManager url="tcp://$FORUMHOST_IP:$PORT_SHIFTMANAGER/Tenaris.Manager.Shift.ShiftManager.soap" 
		instanceType="Tenaris.Manager.Shift.Shared.IShiftManager, Tenaris.Manager.Shift.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
    	<Redundancy>      
     	 	<Address url="tcp://$FORUMHOST_IP:$PORT_SHIFTMANAGER/Tenaris.Manager.Shift.ShiftManager.soap" forumPresent="false" isTargetManager="true"/>
    	</Redundancy>
  </Tenaris.Manager.Shift.ShiftManager>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'SpecService', @Name = 'Tenaris.Service.SpecificationManager', @Description = 'Specification Service Manager', @Data = '<Tenaris.Service.SpecificationManager factoryType="Tenaris.Service.Specification.SpecificationManagerFactory, Tenaris.Service.Specification.Manager" isSingleton="True">
	<SpecificationManagerConfiguration TransactionTimeout="10000"/>
</Tenaris.Service.SpecificationManager>
', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = null, @ZoneCode = null, @MachineCode = null, @Code = 'SpecService.Client.Local', @Name = 'SpecificationServiceClient.Local', @Description = 'Specification Client', @Data = '<SpecificationServiceClient factoryType="Tenaris.Service.Specification.Client.SpecificationServiceClientFactory, Tenaris.Service.Specification.Client" isSingleton="True">
	<SpecificationServiceClientConfiguration managerConfig="Tenaris.Manager.Specification.Local"/>
</SpecificationServiceClient>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'SpecService.Client.Proxy', @Name = 'SpecificationServiceClient.Proxy', @Description = 'Specification Client Proxy', @Data = '<SpecificationServiceClient factoryType="Tenaris.Service.Specification.Client.SpecificationServiceClientFactory, Tenaris.Service.Specification.Client" isSingleton="True">
	<SpecificationServiceClientConfiguration managerConfig="Tenaris.Manager.Specification.Proxy"/>
</SpecificationServiceClient>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'SpecServiceManager.Local', @Name = 'Tenaris.Manager.Specification.Local', @Description = 'Specification Service Manager Local Proxy', @Data = '<Tenaris.Manager.Specification.Local url="tcp://localhost:$PORT_SPECIFICATIONMANAGER/Tenaris.Service.Specification.SpecificationManager.soap"
        instanceType="Tenaris.Service.Specification.Shared.ISpecificationManager, Tenaris.Service.Specification.Shared"
    	aliveInterval="1000"
		singleInstance="true" 
		isSingleton="true"     
		isTargetManager="true" 
    	validateConnection="false">
</Tenaris.Manager.Specification.Local>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'SpecServiceManager.Proxy', @Name = 'Tenaris.Manager.Specification.Proxy', @Description = 'Specification Service Manager Proxy', @Data = '<Tenaris.Manager.Specification.Proxy url="tcp://$FORUMHOST_IP:$PORT_SPECIFICATIONMANAGER/Tenaris.Service.Specification.SpecificationManager.soap"
        instanceType="Tenaris.Service.Specification.Shared.ISpecificationManager, Tenaris.Service.Specification.Shared"
    	aliveInterval="1000"
		singleInstance="true" 
		isSingleton="true"     
		isTargetManager="true" 
    	validateConnection="false">
        <Redundancy>
        	<Address url="tcp://$FORUMHOST_IP:$PORT_SPECIFICATIONMANAGER/Tenaris.Service.Specification.SpecificationManager.soap" forumPresent="false" isTargetManager="true"/>
        </Redundancy>
</Tenaris.Manager.Specification.Proxy>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = 'ALL', @MachineCode = null, @Code = 'TdaChart', @Name = 'TdaChartConfiguration', @Description = 'Tda Chart', @Data = '<TdaChartConfiguration
    refreshTime="100"
    autoTruncateMaxCount="1500"
    historicTruncateMaxCount="2000"
    useTdaManager="true"
    useDummyTdaManager="false"
    headerVisibility="Collapsed"
    timeInterval="30"
    trendCode="Trend"
    isReadOnlySeries="false"
    connectionName="dbLevel2"
    tdaManagerSectionName="Tenaris.Manager.Tda.TdaManager.Proxy" />', @TypeName = 'Tenaris.View.Tda.Chart.ChartConfiguration, Tenaris.View.Tda.Chart', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = null, @ZoneCode = null, @MachineCode = null, @Code = 'TdaMgr', @Name = 'Tenaris.Manager.Tda.TdaManager', @Description = 'Tda Manager Factory Configuration', @Data = '<Tenaris.Manager.Tda.TdaManager factoryType="Tenaris.Manager.Tda.Factory, Tenaris.Manager.Tda" isSingleton="True">
    <Configuration address="" uri="Tenaris.Manager.Tda.TdaManager.soap"
                   checkPluginsInterval="1000"
                   keyManagerSectionName="Tenaris.Manager.Key.KeyManager.Local"
                   trackingManagerSectionName="Tenaris.Manager.Tracking.TrackingManager.Local"
                   mergeConfigurationName="Tda.MergeConfiguration"
                   acquisitionFactoryName="Acquisition"
                   useMergeService="true">
      <activePlugins>
        <add name="Offline" sectionName="Tda.Plugin.Offline" className="Tenaris.Manager.Tda.Plugin.Offline" assembly="Tenaris.Manager.Tda"/>
        <add name="Trend" sectionName="Tda.Plugin.Trend" className="Tenaris.Manager.Tda.Plugin.Trend" assembly="Tenaris.Manager.Tda"/>
        <add name="Point" sectionName="Tda.Plugin.Point" className="Tenaris.Manager.Tda.Plugin.Point" assembly="Tenaris.Manager.Tda"/>
		<!--<add name="ReadArea" sectionName="Tda.Plugin.ReadArea" className="Tenaris.Manager.Tda.Plugin.ReadArea" assembly="Tenaris.Manager.Tda"/>-->
        <add name="ReadAreaTrend" sectionName="Tda.Plugin.ReadAreaTrend" className="Tenaris.Manager.Tda.Plugin.ReadAreaTrend" assembly="Tenaris.Manager.Tda"/> 
        <add name="Handshake" sectionName="Tda.Plugin.TdaHandshake" className="Tenaris.Manager.Tda.Plugin.Handshake.Handshake" assembly="Tenaris.Manager.Tda.Plugin.Handshake"/>
        <add name="Preset" sectionName="Tda.Plugin.Preset" className="Tenaris.Manager.Tda.Plugin.Preset" assembly="Tenaris.Manager.Tda"/>
      </activePlugins>
    </Configuration>
  </Tenaris.Manager.Tda.TdaManager>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'TdaMgr.Local', @Name = 'Tenaris.Manager.Tda.TdaManager.Local', @Description = 'Tda Manager local Proxy', @Data = '<Tenaris.Manager.Tda.TdaManager url="tcp://localhost:49113/Tenaris.Manager.Tda.TdaManager.soap"
		instanceType="Tenaris.Manager.Tda.Shared.ITdaManager, Tenaris.Manager.Tda.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
</Tenaris.Manager.Tda.TdaManager>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = null, @ZoneCode = null, @MachineCode = null, @Code = 'TdaMgr.Merge', @Name = 'Tda.MergeConfiguration', @Description = 'Tda Manager - Merge Configuration', @Data = '<Tda.MergeConfiguration mergeInterval="30" threads="1" deleteChunk="true" />', @TypeName = 'Tenaris.Manager.Tda.Merge.MergeConfiguration, Tenaris.Manager.Tda.Merge', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = null, @ZoneCode = null, @MachineCode = null, @Code = 'TdaMgr.Plg1', @Name = 'Tda.Plugin.Offline', @Description = 'Tda Manager - Plugin Offline Configuration', @Data = '<Tda.Plugin.Offline/>', @TypeName = 'Tenaris.Manager.Tda.Plugin.PluginConfiguration, Tenaris.Manager.Tda', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = null, @ZoneCode = null, @MachineCode = null, @Code = 'TdaMgr.Plg2', @Name = 'Tda.Plugin.Trend', @Description = 'Tda Manager - Plugin Trend Configuration', @Data = '<Tda.Plugin.Trend hasAcquisition="true" />', @TypeName = 'Tenaris.Manager.Tda.Plugin.TrendPluginConfiguration, Tenaris.Manager.Tda', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = null, @ZoneCode = null, @MachineCode = null, @Code = 'TdaMgr.Plg3', @Name = 'Tda.Plugin.Point', @Description = 'Tda Manager - Plugin Point Configuration', @Data = '<Tda.Plugin.Point hasAcquisition="false" />', @TypeName = 'Tenaris.Manager.Tda.Plugin.PluginConfiguration, Tenaris.Manager.Tda', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = null, @ZoneCode = null, @MachineCode = null, @Code = 'TdaMgr.Plg4', @Name = 'Tda.Plugin.ReadAreaTrend', @Description = 'Tda Manager - Plugin ReadAreaTrend', @Data = '<Plugin.ReadAreaTrend hasAcquisition="true" />', @TypeName = 'Tenaris.Manager.Tda.Plugin.PluginConfiguration, Tenaris.Manager.Tda', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = null, @ZoneCode = null, @MachineCode = null, @Code = 'TdaMgr.Plg5', @Name = 'Tda.Plugin.TdaHandshake', @Description = 'Tda Manager - Plugin Handshake Configuration', @Data = '<Tda.Plugin.TdaHandShake hasAcquisition="false" applicationCode="TdaManager" handshakeManagerSectionName="Tenaris.Manager.Handshake.HandshakeManager.Local" /> ', @TypeName = 'Tenaris.Manager.Tda.Plugin.HandshakePluginConfiguration, Tenaris.Manager.Tda', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = null, @ZoneCode = null, @MachineCode = null, @Code = 'TdaMgr.Plg6', @Name = 'Tda.Plugin.Preset', @Description = 'Tda Manager - Plugin Preset Configuration', @Data = '<Tda.Plugin.Preset presetManagerSectionName="Tenaris.Manager.Preset.PresetManager.Local" />', @TypeName = 'Tenaris.Manager.Tda.Plugin.PresetPluginConfiguration, Tenaris.Manager.Tda', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'TdaMgr.Proxy', @Name = 'Tenaris.Manager.Tda.TdaManager.Proxy', @Description = 'Tda Manager Proxy', @Data = '<Tenaris.Manager.Tda.TdaManager url="tcp://$FORUMHOST_IP:$PORT_TDAMANAGER/Tenaris.Manager.Tda.TdaManager.soap"
		instanceType="Tenaris.Manager.Tda.Shared.ITdaManager, Tenaris.Manager.Tda.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
    	<Redundancy>      
      		<Address url="tcp://$FORUMHOST_IP:$PORT_TDAMANAGER/Tenaris.Manager.Tda.TdaManager.soap" forumPresent="false" isTargetManager="true"/>
    	</Redundancy>
</Tenaris.Manager.Tda.TdaManager>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = 'TdaView', @AreaCode = '$AREA_CODE', @ZoneCode = 'ALL', @MachineCode = null, @Code = 'TdaView', @Name = 'CustomViewConfiguration', @Description = 'Tda Manager View', @Data = '<CustomViewConfiguration TdaManagerSectionName="Tenaris.Manager.Tda.TdaManager.Proxy"
                           TdaChartSectionName="TdaChartConfiguration" />', @TypeName = 'Tenaris.View.Tda.Configuration.TdaViewConfigurationSection, Tenaris.View.Tda', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = 'TrackingView', @AreaCode = null, @ZoneCode = null, @MachineCode = null, @Code = 'TrackingLayout', @Name = 'TrackingLayout', @Description = 'TrackingLayout', @Data = '<?xml version="1.0" encoding="utf-8" ?>
<tracking>

  <zoneTemplates>
  
   <zoneTemplate name="BasicTemplate" title="Name" reverseOrder="False" >
      <attributes>
        <attribute key="MandatoryComments" value="True"  />
      </attributes>
      <columns>
        <column title="ST"		tooltip="Status"		width="30"	valueDatasource="Status"    />
        <column title="ID"		tooltip="Id"		width="70"	valueDatasource="Id" /> 
        <column title="Ciclo"		tooltip="CICLO"      	width="75"	valueDatasource="Product"  />
        <column title="Expediente"	tooltip="EXPEDIENTE"	width="70"	valueDatasource="Workorder" />
        <column title="Colada"		tooltip="COLADA"    	width="75"	valueDatasource="Heat"  />
        <column title="Batch"		tooltip="CAMPAÑA"    	width="70"	valueDatasource="Batch"  />
      </columns>
    </zoneTemplate> 
    
     <zoneTemplate name="BasicTemplateGrouping" title="Name" reverseOrder="False" >
      <attributes>
        <attribute key="MandatoryComments" value="True"  />
      </attributes>
      <columns>
         <column title="ST"		tooltip="Status"		width="30"	valueDatasource="Status"    />
         <column title="ID"		tooltip="Id"		width="70"	valueDatasource="Id" /> 
         <column title="Ciclo"		tooltip="CICLO"      	width="75"	valueDatasource="Product"  />
         <column title="Expediente"	tooltip="EXPEDIENTE"	width="70"	valueDatasource="Workorder" />
         <column title="Colada"		tooltip="COLADA"    	width="75"	valueDatasource="Heat"  />
         <column title="Batch"		tooltip="CAMPAÑA"    	width="70"	valueDatasource="Batch"  />
      </columns>
      <groups initialGroupLevel="0">
        <group level="1" title="Conjunto" filter="Product,Workorder,Heat,Batch" FontSize="24">
          <columns>
            <column title="Ciclo"		tooltip="CICLO"      	width="75"	valueDatasource="Product"  />
        	<column title="Expediente"	tooltip="EXPEDIENTE"	width="70"	valueDatasource="Workorder" />
        	<column title="Colada"		tooltip="COLADA"    	width="75"	valueDatasource="Heat"  />
        	<column title="Batch"		tooltip="CAMPAÑA"    	width="70"	valueDatasource="Batch"  />
            <column title="Inicio"     	tooltip="INICIO"        width="50"  valueDatasource="Id"       function="Min" />
            <column title="Fin"       	tooltip="FIN"           width="50"  valueDatasource="Id"       function="Max" />
            <column title="Cantidad"    tooltip="CANTIDAD"      width="70"  valueDatasource=""         function="Count" />
          </columns>
        </group>    
      </groups>
    </zoneTemplate>
    
    
    
    
  </zoneTemplates>

  <zones>
    <colorProperty1>Heat</colorProperty1>
    <colorProperty2></colorProperty2>
    <cranes>Crane</cranes>
    <outOfLine>DeadZone</outOfLine>
    <lockBeforeAction>False</lockBeforeAction>
    <unlockAfterAction>False</unlockAfterAction>
    <actionsAllwaysVisible>False</actionsAllwaysVisible>   
    
    <zone code="Crane" title="Line Crane" reverseOrder="True"  template="BasicTemplateGrouping" >
      <attributes>
        <attribute key="StatusCode" value="Good,Warned,Rejected,Pending"  />
        <attribute key="MachineCode" value=""  />
      </attributes>
    </zone>

    <zone code="DeadZone" title="Out Of Line" reverseOrder="True"  template="BasicTemplateGrouping" >
      <attributes>
        <attribute key="StatusCode" value="Good,Warned,Rejected,Pending"  />
        <attribute key="MachineCode" value=""  />
      </attributes>
    </zone>

  </zones>

  <detailTemplates>

    <detailTemplate name="template1">
      <fields>
        <field title="Pos"        valueDatasource="SortOrder" />
        <field title="Status"     valueDatasource="Status"    />
        <field title="Expediente"      valueDatasource="Workorder" />
        <field title="Ciclo"       valueDatasource="Product"  />
        <field title="Colada"      valueDatasource="Heat" />
        <field title="Trac"       valueDatasource="TraceabilityNumber" />        
      </fields>
    </detailTemplate>

  </detailTemplates>

  <tooltipTemplates>
  
     <tooltipTemplate name="templateDetail01" width="200" height="200">
      <tooltipGroupTemplate groupLevel="0">
        <columns>
          <column title="Pos"         tooltip="Position"              valueDatasource="SortOrder" />
          <column title="St"          tooltip="Status Pipe"           valueDatasource="Status"    />
          <column title="Expediente"       tooltip="Expediente"          valueDatasource="Workorder" />
          <column title="Ciclo"       tooltip="Ciclo"          valueDatasource="Product" />
          <column title="Colada"        tooltip="Colada"           valueDatasource="Heat"  />
          <column title="IdTracking"  tooltip="ID Tracking"           valueDatasource="Id"  />
          <column title="Trac"        tooltip="Traceability number"   valueDatasource="TraceabilityNumber" />
        </columns>
      </tooltipGroupTemplate>
      <tooltipGroupTemplate groupLevel="1">
        <columns>
            <column title="Pos"         tooltip="Position"              valueDatasource="SortOrder" />
            <column title="St"          tooltip="Status Pipe"           valueDatasource="Status"            />
            <column title="Order"       tooltip="Order number"          valueDatasource="OrderNumber"       />
            <column title="Heat"        tooltip="Heat number"           valueDatasource="HeatNumber"        />
            <column title="Count"       tooltip="Count"                 valueDatasource=""                    function="Count" />
            <column title="Avg"         tooltip="Avg"                   valueDatasource="TraceabilityNumber"  function="Average" />
          <column title="IdTracking"    tooltip="ID Tracking"           valueDatasource="Id"  />
        </columns>
      </tooltipGroupTemplate>
      <tooltipGroupTemplate groupLevel="2">
        <columns>
            <column title="Pos"       tooltip="Position"            valueDatasource="SortOrder" />
            <column title="St"        tooltip="Status Pipe"         valueDatasource="Status"            />
            <column title="Order"     tooltip="Order number"        valueDatasource="OrderNumber"       />
            <column title="Max"       tooltip="Max"                 valueDatasource="TraceabilityNumber"    function="Max" />
            <column title="Min"       tooltip="Min"                 valueDatasource="TraceabilityNumber"    function="Min" />
            <column title="Sum"       tooltip="Sum"                 valueDatasource="TraceabilityNumber"    function="Sum" />
          <column title="IdTracking"  tooltip="ID Tracking"         valueDatasource="Id"  />
        </columns>
      </tooltipGroupTemplate>
    </tooltipTemplate>
  
  </tooltipTemplates>

</tracking>

', @TypeName = null, @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'TrackingManager.DBStatusChangePlugin', @Name = 'TrackingManager.DBStatusChangePlugin', @Description = 'Tracking Manager - DB Status Change Plugin', @Data = '<TrackingManager.DBStatusChangePlugin factoryType="Tenaris.Manager.Tracking.Plugin.Shared.DBStatusChangePluginFactory, Tenaris.Manager.Tracking.Plugin.Shared" isSingleton="True">
	<DBStatusChangePluginConfiguration DatabaseConnectionStringName="dbLevel2" />
</TrackingManager.DBStatusChangePlugin>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'TrackingManager.DefaultStatusChangePlugin', @Name = 'TrackingManager.DefaultStatusChangePlugin', @Description = 'Tracking Manager - Default Status Change Plugin', @Data = '<TrackingManager.DefaultStatusChangePlugin factoryType="Tenaris.Manager.Tracking.Plugin.Shared.DefaultStatusChangePluginFactory, Tenaris.Manager.Tracking.Plugin.Shared" isSingleton="True">
	<DefaultStatusChangePluginConfiguration DatabaseConnectionStringName="dbLevel2" />
</TrackingManager.DefaultStatusChangePlugin>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'TrackingMgr', @Name = 'Tenaris.Manager.Tracking.TrackingManager', @Description = 'Tracking Manager Factory Configuration', @Data = '<Tenaris.Manager.Tracking.TrackingManager factoryType="Tenaris.Manager.Tracking.TrackingManagerFactory, Tenaris.Manager.Tracking" isSingleton="True">
<TrackingManagerConfiguration handshakeExecutionTimeout="0" 
							  handshakeResultWriteTimeout="0" 
							  statusChangePluginSectionName="TrackingManager.DBStatusChangePlugin"
							  handshakeManagerFactoryName="Tenaris.Manager.Handshake.HandshakeManager.Local"
							  commandManagerFactoryName="Tenaris.Manager.Command.CommandManager.Local"
							  zoneLockTimeoutSec="1000"
							  zoneLockTimeoutPorc="60"
							  changeStatusOnDeleteOrLoad="false"
							  deadZoneCode="DeadZone"
							  />
</Tenaris.Manager.Tracking.TrackingManager>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'TrackingMgr.Local', @Name = 'Tenaris.Manager.Tracking.TrackingManager.Local', @Description = 'Tracking Manager Local Proxy', @Data = '<Tenaris.Manager.Tracking.TrackingManager url="tcp://localhost:$PORT_TRACKINGMANAGER/Tenaris.Manager.Tracking.TrackingManager.soap"
		instanceType="Tenaris.Manager.Tracking.Shared.ITrackingManager, Tenaris.Manager.Tracking.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
</Tenaris.Manager.Tracking.TrackingManager>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'TrackingMgr.Proxy', @Name = 'Tenaris.Manager.Tracking.TrackingManager.Proxy', @Description = 'Tracking Manager Proxy', @Data = '<Tenaris.Manager.Tracking.TrackingManager url="tcp://$FORUMHOST_IP:$PORT_TRACKINGMANAGER/Tenaris.Manager.Tracking.TrackingManager.soap"
		instanceType="Tenaris.Manager.Tracking.Shared.ITrackingManager, Tenaris.Manager.Tracking.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
		<Redundancy>	
			<Address url="tcp://$FORUMHOST_IP:$PORT_TRACKINGMANAGER/Tenaris.Manager.Tracking.TrackingManager.soap" forumPresent="false" isTargetManager="true"/>
		</Redundancy>
</Tenaris.Manager.Tracking.TrackingManager>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = 'TrackingView', @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'TrackingView', @Name = 'CustomViewConfiguration', @Description = 'Tracking Manager View', @Data = '<CustomViewConfiguration
                      ManagerConnections="TrackingManager=Tenaris.Manager.Tracking.TrackingManager.Proxy,ProductionManager=Tenaris.Manager.Production.ProductionManager.Proxy,SpecificationService=Tenaris.Manager.Specification.Proxy,DiagnosticManager=Tenaris.Manager.Diagnostic.DiagnosticManager.Proxy,HandshakeManager=Tenaris.Manager.Handshake.HandshakeManager.Proxy"
                      ShowInsertDialog="false"
                      ShowEditDialog="true"
                      ShowDeleteDialog="false"
                      ShowDetailDialog="false"
                      ShowMarkDialog="true"
                      ShowHistoryDialog="false"
                      ShowMimics="false"
                      
                      LockTimeout="5000"
             
                      CommandBasicMove="TRKBASICMOVE"
					  CommandAdvancedMove="TRKADVMOVE"

                      CommandMark="TRKMARKITEM"
                      CommandDel="TRKDELITEM"
                      CommandInsert="TRKINSERTITEM"
                      CommandEdit="TRKEDITITEM"

					  CommandL2Trigger="TRKL2TRIGGER"
                      
                      ResourcesFolder="./Resources/Tracking/"
					  MinWidthForSmallToolBarButtons="800">   
</CustomViewConfiguration>', @TypeName = 'Tenaris.View.Tracking.Model.Configuration.TrackingViewConfigurationSection, Tenaris.View.Tracking.Model', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = null, @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'ScriptingManager', @Name = 'Tenaris.Manager.Scripting.ScriptingManager', @Description = 'Scripting Manager Factory Configuration', @Data = '<Tenaris.Manager.Scripting.ScriptingManager factoryType="Tenaris.Manager.Scripting.ScriptingManagerFactory, Tenaris.Manager.Scripting" isSingleton="True">
	<Configuration 
		applicationCode="ScriptingManager" 
		connectionStringName="dbLevel2"  
		scriptsPath="..\Resources\Scripts\">
	
		<Connections>
			<Connection propertyName="Tracking" interfaceName="Tenaris.Manager.Tracking.Shared.ITrackingManager" assemblyName="Tenaris.Manager.Tracking.Shared" managerName="Tenaris.Manager.Tracking.TrackingManager.Local"></Connection>
			<Connection propertyName="Production" interfaceName="Tenaris.Manager.Production.Shared.IProductionManager" assemblyName="Tenaris.Manager.Production.Shared" managerName="Tenaris.Manager.Production.ProductionManager.Local"></Connection>
			<Connection propertyName="Message" interfaceName="Tenaris.Manager.Message.Shared.IMessageManager" assemblyName="Tenaris.Manager.Message.Shared" managerName="Tenaris.Manager.Message.MessageManager.Local"></Connection>
		</Connections> 
	</Configuration>
</Tenaris.Manager.Scripting.ScriptingManager>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = 'MessageView', @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'Message.Plugin', @Name = 'Message.Plugin', @Description = 'MessageManager - Desktop plugin configuration', @Data = '<MessagesDesktopPlugin 
        MessageManager="Tenaris.Manager.Message.MessageManager.Proxy"
        ZoneCode="ALL"
        />', @TypeName = 'Tenaris.View.Desktop.Plugin.Message.Configuration.PluginConfiguration, Tenaris.View.Desktop.Plugin.Message', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = 'MessageManager', @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'MessgaeMgr.Local', @Name = 'Tenaris.Manager.Message.MessageManager.Local', @Description = 'Message Manager Local Proxy', @Data = '<Tenaris.Manager.Message.MessageManager url="tcp://localhost:$PORT_MESSAGEMANAGER/Tenaris.Manager.Message.MessageManager.soap" 
		instanceType="Tenaris.Manager.Message.Shared.IMessageManager, Tenaris.Manager.Message.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
</Tenaris.Manager.Message.MessageManager>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
    EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = 'MessageManager', @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'MessgaeMgr.Proxy', @Name = 'Tenaris.Manager.Message.MessageManager.Proxy', @Description = 'Message Manager Remote Proxy', @Data = '<Tenaris.Manager.Message.MessageManager url="tcp://$FORUMHOST_IP:$PORT_MESSAGEMANAGER/Tenaris.Manager.Message.MessageManager.soap" 
		instanceType="Tenaris.Manager.Message.Shared.IMessageManager, Tenaris.Manager.Message.Shared"
        aliveInterval="1000" 
        singleInstance="true" 
        isSingleton="true" 
        isTargetManager="true" 
        validateConnection="false">
</Tenaris.Manager.Message.MessageManager>', @TypeName = 'Tenaris.Library.Proxy.Factories.GenericProxyFactoryConfigurationSection, Tenaris.Library.Proxy', @Active = True;
	EXEC [Configuration].[DoConfigDefineConfiguration] @UserIdentification = null, @ApplicationCode = 'MessageManager', @AreaCode = '$AREA_CODE', @ZoneCode = null, @MachineCode = null, @Code = 'MessageManager', @Name = 'Tenaris.Manager.Message.MessageManager', @Description = 'MessageManager Factory Configuration', @Data = '<Tenaris.Manager.Message factoryType="Tenaris.Manager.Message.MessageManagerFactory, Tenaris.Manager.Message" isSingleton="True">
   <Configuration timeMessagePeriodDays="5">
   </Configuration>
 </Tenaris.Manager.Message>', @TypeName = 'Tenaris.Library.Framework.Factory.FactoryConfiguration, Tenaris.Library.Framework', @Active = True;
    
    -- End dump for table Configuration.Configuration

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
