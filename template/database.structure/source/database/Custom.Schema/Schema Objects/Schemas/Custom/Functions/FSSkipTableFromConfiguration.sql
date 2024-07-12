CREATE FUNCTION [Custom].[FSSkipTableFromConfiguration](@TABLE_SCHEMA SysName, @TABLE_NAME SysName)
RETURNS Bit AS
BEGIN
	
	IF (@TABLE_SCHEMA LIKE '%PresetCatalog%') RETURN 1;
	IF (@TABLE_SCHEMA LIKE '%Configuration%') RETURN 1;

	RETURN 0;
END