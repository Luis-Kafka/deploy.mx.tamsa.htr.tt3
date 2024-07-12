-- Get  Interruption Code (Custom) Default When it is different to defined in Interruption.Stage
CREATE PROCEDURE [Custom].[InterruptionPluginGetInterruptionCode]
	@IdStageHistory int,
	@IdCategory int,
	@IdCode int = NULL OUTPUT
AS
BEGIN

    -- Custom Implementation 
	SET @IdCode = NULL


END