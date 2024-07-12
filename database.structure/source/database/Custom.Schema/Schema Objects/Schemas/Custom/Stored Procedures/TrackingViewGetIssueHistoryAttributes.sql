CREATE PROCEDURE [Custom].[TrackingViewGetIssueHistoryAttributes]
(
	@idIssueHistory INT
)
AS
BEGIN
    SET NOCOUNT ON;

	DECLARE @AttributeValues TABLE
	(
		Code NVARCHAR(50),
		Value SQL_VARIANT
	)

	DECLARE @mainIssueCauseHistoryId INT
	DECLARE @beginDateTime NVARCHAR(50) = ''
	DECLARE @mainIssueCauseName NVARCHAR(1000) = ''

	DECLARE @attributeCauseMessageId INT
	DECLARE @mainIssueCauseMessage NVARCHAR(1000) = ''

	DECLARE @attributeEnumValueErrorId INT
	DECLARE @mainIssueCauseEnumValueId INT = 0

	DECLARE @failedHandshakeId INT = 0
	DECLARE @idFailedHandshakeAttribute INT

	DECLARE @applicationDescription NVARCHAR(1000) = ''
	DECLARE @machineDescription NVARCHAR(1000) = ''

	DECLARE @mainIssueCauseMotive NVARCHAR(1000) = ''
	DECLARE @mainIssueCauseDescription NVARCHAR(1000) = ''

	BEGIN -- Get main issueCause id, name and beginDateTime
		SELECT 
			@mainIssueCauseHistoryId = ICH.idIssueCauseHistory,
			@beginDateTime = FORMAT(IH.BeginDateTime, 'MM/dd/yyyy HH:mm:ss', 'en-US'),
			@mainIssueCauseName = IC.[Name]
		FROM Diagnostic.IssueHistory IH
		JOIN Diagnostic.IssueCauseHistory ICH ON IH.idIssueHistory = ICH.idIssueHistory
		JOIN Diagnostic.IssueCause IC ON ICH.idIssueCause = IC.idIssueCause
		WHERE IH.idIssueHistory = @idIssueHistory AND ICH.IsMain = 1
	END

	BEGIN -- Get main issueCause message
		SELECT @attributeCauseMessageId = idAttribute 
		FROM Diagnostic.Attribute 
		WHERE Code = 'IssueCauseMessage'

		SELECT @mainIssueCauseMessage = RTRIM(LTRIM(ISNULL(Value, '')))
		FROM Diagnostic.IssueCauseAttributeHistory
		WHERE idIssueCauseHistory = @mainIssueCauseHistoryId AND idAttribute = @attributeCauseMessageId
	END

	BEGIN -- Get main issue failedHandshakeId
		SELECT @idFailedHandshakeAttribute = idAttribute
		FROM Diagnostic.Attribute
		WHERE Code = 'IdFailedHandshake'

		SELECT @failedHandshakeId = ISNULL(Value, 0)
		FROM Diagnostic.IssueCauseAttributeHistory
		WHERE idIssueCauseHistory = @mainIssueCauseHistoryId AND idAttribute = @idFailedHandshakeAttribute
	END

	BEGIN -- Get machine and application
		SELECT 
			@machineDescription = CM.Description,
			@applicationDescription = CA.Description
		FROM Handshake.Handshake HH
		JOIN Handshake.CompositionDefinition HCD ON HH.idCompositionDefinition = HCD.idCompositionDefinition
		JOIN Handshake.[Definition] HD ON HCD.idDefinition = HD.idDefinition
		JOIN Common.Machine CM ON HH.idMachine = CM.idMachine
		JOIN Common.[Application] CA ON HD.idApplication = CA.idApplication
		WHERE HH.idHandshake = @failedHandshakeId
	END

	BEGIN -- Get main issueCause enumValueId
		SELECT @attributeEnumValueErrorId = idAttribute 
		FROM Diagnostic.Attribute 
		WHERE Code = 'IdEnumValueError'

		SELECT @mainIssueCauseEnumValueId = ISNULL(Value, 0)
		FROM Diagnostic.IssueCauseAttributeHistory
		WHERE idIssueCauseHistory = @mainIssueCauseHistoryId AND idAttribute = @attributeEnumValueErrorId
	END

	SET @mainIssueCauseMotive = 'Unknown error, please contact L2 support'
	SET @mainIssueCauseDescription = 'Unknown error, please contact L2 support'
	IF @mainIssueCauseEnumValueId > 0
	BEGIN
		SELECT 
			@mainIssueCauseMotive = [Name],
			@mainIssueCauseDescription = [Description]
		FROM Alarm.EnumValue
		WHERE idEnumValue = @mainIssueCauseEnumValueId
	END

	--Specification Attributes
	INSERT INTO @AttributeValues (Code, Value) VALUES ('Application', @applicationDescription)
	INSERT INTO @AttributeValues (Code, Value) VALUES ('Machine', @machineDescription)
	INSERT INTO @AttributeValues (Code, Value) VALUES ('MainCauseName', @mainIssueCauseName)
	INSERT INTO @AttributeValues (Code, Value) VALUES ('MainCauseMotive', @mainIssueCauseMotive)
	INSERT INTO @AttributeValues (Code, Value) VALUES ('MainCauseDescription', @mainIssueCauseDescription)
	INSERT INTO @AttributeValues (Code, Value) VALUES ('MainCauseMessage', @mainIssueCauseMessage)
	INSERT INTO @AttributeValues (Code, Value) VALUES ('BeginDateTime', @beginDateTime)
	INSERT INTO @AttributeValues (Code, Value) VALUES ('IdIssueHistory', @idIssueHistory)
	
	SELECT Code, Value FROM @AttributeValues

END