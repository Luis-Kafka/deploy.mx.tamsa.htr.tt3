
CREATE PROCEDURE [Custom].[ProductionGetRecentKeysOfMachine]
	@IdMachine INT
AS
BEGIN
    SET NOCOUNT ON;
	
	-- Locate keys of given machine with status active, future and then, keys dated some days before them
	-- Return those keys

    -- Get Ids from Common.Status
	DECLARE @idStatusActive INT = Common.FSGetIdStatus('Active');
    DECLARE @idStatusFuture INT = Common.FSGetIdStatus('Future');
    DECLARE @idStatusHold   INT = Common.FSGetIdStatus('Hold');
    
	-- Get initial date to start searching for keys of machine
	DECLARE @beginDateForSearch Common.TDatetime
	
	DECLARE @beginDateActiveStatus Common.TDatetime	
	SELECT @beginDateActiveStatus = DATEADD(DAY, -20, InsDateTime)
	FROM Production.KeyHistory
	WHERE idStatus = @idStatusActive AND idMachine = @IdMachine
	
	DECLARE @beginDateFutureStatus Common.TDatetime
	SELECT @beginDateFutureStatus = DATEADD(DAY, -20, InsDateTime)
	FROM Production.KeyHistory
	WHERE idStatus = @idStatusFuture AND idMachine = @IdMachine
	
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
		FROM Production.KeyHistory
		WHERE idMachine = @IdMachine
		ORDER BY InsDateTime DESC
	END

	SELECT 
	   [IdProductionHistory]
	  , CASE 
			WHEN MB.idStatus = @idStatusActive OR
			     MB.idStatus = @idStatusHold THEN 1
			ELSE 0
	    END AS IsMachineProductionActive
	  ,KH.[IdMachine]
	  ,[IdKeyHistory]
	  ,[ShiftNumber]
	  ,[ShiftDate]
      ,CR.Name AS [Crew]
      ,KH.[IdStatus]
      ,[BeginDateTime]
      ,[EndDateTime]
	FROM [Production].[KeyHistory] KH
	LEFT OUTER JOIN Shift.ShiftHistory shH ON KH.idShiftHistory = shH.idShiftHistory
	LEFT OUTER JOIN Shift.Shift sh ON shH.IdShift = sh.IdShift
	LEFT OUTER JOIN Shift.Crew CR ON KH.idCrew = CR.idCrew
	LEFT OUTER JOIN Production.MachineBatchHistory MB 
	ON KH.idMachine = MB.idMachine AND KH.idProductionHistory = MB.idBatchHistory
	WHERE KH.idMachine = @IdMachine AND 
		  ((@beginDateForSearch IS NULL) OR (KH.InsDateTime >= @beginDateForSearch))
    
END