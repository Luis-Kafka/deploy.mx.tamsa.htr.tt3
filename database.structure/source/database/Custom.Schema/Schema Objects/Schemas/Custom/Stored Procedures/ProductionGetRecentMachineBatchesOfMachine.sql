
CREATE PROCEDURE [Custom].[ProductionGetRecentMachineBatchesOfMachine]
	@IdMachine INT
AS
BEGIN
    SET NOCOUNT ON;
   
	-- Locate machineBatches of given machine with status active, future and then, machineBatches dated some days before them
	-- Return those machineBatches

    -- Get Ids for common.status
	DECLARE @idStatusActive INT = Common.FSGetIdStatus('Active');
    DECLARE @idStatusFuture INT = Common.FSGetIdStatus('Future');

	-- Get initial date to start searching for machineBatches of machine
	DECLARE @beginDateForSearch Common.TDatetime
	
	DECLARE @beginDateActiveStatus Common.TDatetime	
	SELECT @beginDateActiveStatus = DATEADD(DAY, -20, MB.InsDateTime)
	FROM Production.MachineBatchHistory MB
	INNER JOIN Production.KeyHistory KH 
	ON MB.idMachine = KH.idMachine AND MB.idBatchHistory = KH.idProductionHistory
	WHERE KH.idStatus = @idStatusActive AND KH.idMachine = @IdMachine
	
	DECLARE @beginDateFutureStatus Common.TDatetime
	SELECT @beginDateFutureStatus = DATEADD(DAY, -20, MB.InsDateTime)
	FROM Production.MachineBatchHistory MB
	INNER JOIN Production.KeyHistory KH 
	ON MB.idMachine = KH.idMachine AND MB.idBatchHistory = KH.idProductionHistory
	WHERE KH.idStatus = @idStatusFuture AND KH.idMachine = @IdMachine
		
	-- Set @beginDateForSearch as the minimum of @beginDateFutureStatus and @beginDateActiveStatus
	IF @beginDateFutureStatus IS NOT NULL AND @beginDateActiveStatus IS NOT NULL
		IF @beginDateFutureStatus < @beginDateActiveStatus
			SET @beginDateForSearch = @beginDateFutureStatus
		ELSE
			SET @beginDateForSearch = @beginDateActiveStatus
	ELSE IF @beginDateActiveStatus IS NOT NULL
		SET @beginDateForSearch = @beginDateActiveStatus
	ELSE IF @beginDateFutureStatus IS NOT NULL
		SET @beginDateForSearch = @beginDateFutureStatus

	IF @beginDateForSearch IS NULL
	BEGIN
		SELECT TOP 1 @beginDateForSearch = DATEADD(DAY, -20, InsDateTime)
		FROM Production.MachineBatchHistory
		WHERE idMachine = @IdMachine
		ORDER BY idMachineBatchHistory DESC
	END

	SELECT 
	   MB.[EnteredCount]
	  ,(B.LoadedCount - MB.EnteredCount) AS [RemainingCount]
      ,MB.[IdBatchHistory] AS [IdBatch]
      ,[IdMachine]
	  ,MB.[IdMachineBatchHistory] AS [IdMachineBatch]
	  ,[IdItemSide]
	  ,[StandardCycleTime]
	  ,[StandardWorkTime]
	  ,[ScheduledBeginDateTime]
      ,[ScheduledEndDateTime]
      ,MBT.MachineBatchBeginDateTime AS [BeginDateTime]
      ,MBT.MachineBatchEndDateTime AS [EndDateTime]
      ,MB.[IdStatus]
	FROM [Production].[MachineBatchHistory] MB
	INNER JOIN [Production].[BatchHistory] B ON MB.idBatchHistory = B.idBatchHistory
	LEFT OUTER JOIN
	(
		SELECT idMachineBatchHistory, MIN(BeginDateTime) AS MachineBatchBeginDateTime, MAX(EndDateTime) AS MachineBatchEndDateTime
		FROM [Production].[KeyHistory] KH
		INNER JOIN [Production].[MachineBatchHistory] MB 
		ON KH.idProductionHistory = MB.idBatchHistory AND KH.idMachine = MB.idMachine
		WHERE MB.idMachine = @IdMachine AND ((@beginDateForSearch IS NULL) OR (MB.InsDateTime >= @beginDateForSearch))
		GROUP BY idMachineBatchHistory 
	) MBT ON MBT.idMachineBatchHistory = MB.idMachineBatchHistory
	WHERE idMachine = @IdMachine AND ((@beginDateForSearch IS NULL) OR (MB.InsDateTime >= @beginDateForSearch))  

END