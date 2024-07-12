   
CREATE PROCEDURE [Custom].[ProductionGetMachineBatchCustomAttributes]
	  @IdMachineBatch INT
	, @IdKey INT = NULL
AS
BEGIN
		--------------------------------------------------------------------------------------
	--  This stored procedure MUST BE CUSTOMIZED for each implementation of production manager
	--
	--  Description:
	--	Gets the attributes of the batch specific of one machine as defined by the local implementation.
	--  The result should contain the values customized for Production.MachineBatch and its extensions
	--  These values are to be stored in a two-level structure based on categories
	--------------------------------------------------------------------------------------

    SET NOCOUNT ON;
    
    DECLARE @MachineBatchCustomAttributes TABLE
    (
		AttributeCategory NVARCHAR(100),
		AttributeName NVARCHAR(100),
		AttributeValue SQL_VARIANT
    );
    
    DECLARE @vIdMachineBatch SQL_VARIANT;
    DECLARE @vIdBatch SQL_VARIANT;
    DECLARE @vIdMachine SQL_VARIANT;
    DECLARE @vStandardCycleTime SQL_VARIANT;
    DECLARE @vStandardWorkTime SQL_VARIANT;
    DECLARE @vIdStatus SQL_VARIANT;
    DECLARE @vScheduledBeginDateTime SQL_VARIANT;
    DECLARE @vScheduledEndDateTime SQL_VARIANT;
    DECLARE @vBeginDateTime SQL_VARIANT;
    DECLARE @vEndDateTime SQL_VARIANT;
    
	SELECT 
		@vIdMachineBatch = [idMachineBatchHistory]
	  , @vIdBatch = [idBatchHistory]
	  , @vIdMachine = [idMachine]
	  , @vStandardCycleTime = [StandardCycleTime]
	  , @vStandardWorkTime = [StandardWorkTime]
	  , @vIdStatus = [idStatus]
	  , @vScheduledBeginDateTime = [ScheduledBeginDateTime]
	  , @vScheduledEndDateTime = [ScheduledEndDateTime]
	FROM Production.MachineBatchHistory
	WHERE [idMachineBatchHistory] = @IdMachineBatch

    INSERT @MachineBatchCustomAttributes(AttributeCategory, AttributeName, AttributeValue)
    SELECT 'MACHINEBATCH', 'idMachineBatch', @vIdMachineBatch UNION ALL
    SELECT 'MACHINEBATCH', 'idBatch', @vIdBatch UNION ALL
    SELECT 'MACHINEBATCH', 'idMachine', @vIdMachine UNION ALL
    SELECT 'MACHINEBATCH', 'StandardCycleTime', @vStandardCycleTime UNION ALL
    SELECT 'MACHINEBATCH', 'StandardWorkTime', @vStandardWorkTime UNION ALL
    SELECT 'MACHINEBATCH', 'idStatus', @vIdStatus UNION ALL
    SELECT 'MACHINEBATCH', 'ScheduledBeginDateTime', @vScheduledBeginDateTime UNION ALL
    SELECT 'MACHINEBATCH', 'ScheduledEndDateTime', @vScheduledEndDateTime;
   
   SELECT AttributeCategory, AttributeName, AttributeValue FROM @MachineBatchCustomAttributes 
   
END