
CREATE PROCEDURE [Custom].[ProductionUpdBatchStatus]
	@IdBatch INT,
	@IdMachineUpdated INT,
	@UpdatedMachineBatchIdStatus INT,
	@ResultBatchIdStatus INT = NULL OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY

		-- RULES THAT ARE THE BASIS FOR THIS PROCEDURE
		--
		-- * Valid statuses for MachineBatches are: Scheduled, Future, Active, Hold, Ended, Canceled. 
		--   Below is explained under which conditions each status is applied
		--
		-- * Valid statuses for Batches are: Scheduled, Future, Active, Ended
		--	 Below is explained under which conditions each status is applied
		--
		-- * MachineBatches and Batches are created with status Scheduled
		-- 
		-- * When a change of batch occurs (either manual, by tracking or by count), the status 
		--	 of the MachineBatch that was Active is changed to Ended (without regarding whether the batch has available pieces or not) 
		-- 
		-- * When the number of available pieces of the Active MachineBatch becomes zero, 
		--   the status of such MachineBatch is set as Hold
		-- 
		-- * If any machine Activates its MachineBatch, the status of the Batch is changed to Active
		-- 
		-- * If a machine that is an exit of the line sets as Ended its MachineBatch and no machine has Active/Hold such Batch, 
		--   then the status of the Batch is changed to Ended
		-- 
		-- * If any machine sets as Ended its MachineBatch, no machine has Active/Hold such Batch 
		--   and some machine that is exit of the line has already Ended that Batch, then the status of the Batch is changed to Ended
		-- 
		-- * When the Batch is set as Ended for the line, all the MachineBatches that have an status different from 
		--	 Active, Hold or Ended are set with status Canceled


		-- REGLAS EN LAS QUE SE BASA ESTE METODO
		--
		-- * Los status válidos para un MachineBatch son: Scheduled, Future, Active, Hold, Ended, Canceled. 
		--   Abajo se explica en que condiciones se aplica cada status
		--
		-- * Los status válidos para un Batch son: Scheduled, Future, Active, Ended
		--	 Abajo se explica en que condiciones se aplica cada status
		--
		-- * Los MachineBatch y los Batch se crean con status Scheduled
		-- 
		-- * Cuando ocurre un cambio de batch (manual, por tracking o por conteo), el status 
		--	 del MachineBatch que estaba Activo se cambia a Ended (sin importar si tiene o no piezas disponibles) 
		-- 
		-- * Cuando el número de piezas disponibles del MachineBatch activo se hace cero, 
		--   el status de dicho MachineBatch se setea como Hold
		-- 
		-- * Si cualquier máquina activa su MachineBatch, el status del Batch cambia a Active
		-- 
		-- * Si una máquina de salida cierra su MachineBatch y ninguna máquina tiene Activo/Hold ese Batch, 
		--   entonces el Batch se cierra
		-- 
		-- * Si cualquier máquina cierra su MachineBatch y ninguna máquina tiene activo/hold ese Batch 
		--   y alguna máquina de salida ya tiene Ended ese Batch, entonces el Batch se cierra
		-- 
		-- * Cuando se cierra el Batch para la línea, todos los MachineBatch que tienen un status distinto 
		--	 de Active, Hold o Ended se ponen en status Canceled
		
		DECLARE @idBatchResultStatus INT = NULL;
		DECLARE @idBatchCurrentStatus INT;
		
		SELECT @idBatchCurrentStatus = idStatus
		FROM Production.BatchHistory
		WHERE idBatchHistory = @IdBatch
		
		DECLARE @idStatusScheduled INT	= [Common].[FSGetIdStatus](N'Scheduled');
		DECLARE @idStatusFuture INT		= [Common].[FSGetIdStatus](N'Future');
		DECLARE @idStatusActive INT		= [Common].[FSGetIdStatus](N'Active');
		DECLARE @idStatusHold INT		= [Common].[FSGetIdStatus](N'Hold');
		DECLARE @idStatusEnded INT		= [Common].[FSGetIdStatus](N'Ended');
		DECLARE @idStatusCanceled INT	= [Common].[FSGetIdStatus](N'Canceled');
		
		DECLARE @thereAreMachinesWithStatusActiveOrHold BIT = 0;
		DECLARE @thereIsAnExitMachineWithStatusEnded BIT = 0;
		DECLARE @thereAreMachinesWithStatusNotScheduled BIT = 0;

		-- Chech if there are machines in status Active or Hold for the batch
		IF EXISTS
		(
			SELECT idMachineBatchHistory
			FROM Production.MachineBatchHistory
			WHERE idBatchHistory = @IdBatch 
			AND  (idStatus = @idStatusActive OR idStatus = @idStatusHold)
		)
		BEGIN
			SET @thereAreMachinesWithStatusActiveOrHold = 1
		END
		
		-- Chech if there is an exit machine in status ended for the batch
		IF EXISTS
		(
			SELECT idMachineBatchHistory
			FROM Production.MachineBatchHistory MB
			INNER JOIN Production.Machine PM ON MB.idMachine = PM.idMachine
			WHERE idBatchHistory = @IdBatch AND idStatus = @idStatusEnded AND PM.IsExit = 1
		)
		BEGIN
			SET @thereIsAnExitMachineWithStatusEnded = 1
		END

		-- Chech if there are machines in status not Scheduled for the batch
		IF EXISTS
		(
			SELECT idMachineBatchHistory
			FROM Production.MachineBatchHistory
			WHERE idBatchHistory = @IdBatch 
			AND  (idStatus <> @idStatusScheduled)
		)
		BEGIN
			SET @thereAreMachinesWithStatusNotScheduled = 1
		END	

		-- If there are machines in status Active or Hold for the batch, then the batch must have status Active
		IF (@thereAreMachinesWithStatusActiveOrHold = 1)
		BEGIN
			SET @idBatchResultStatus = @idStatusActive
		END
		-- If conditions for the batch to be Active are not met
		-- and there is an exit machine in status Ended for the batch (or the machine being updated is an exit machine) 
		-- and the machine updated is Ending its machineBatch, then the batch must have status Ended
		ELSE IF (@thereIsAnExitMachineWithStatusEnded = 1 AND @UpdatedMachineBatchIdStatus = @idStatusEnded)
		BEGIN
			SET @idBatchResultStatus = @idStatusEnded
		END
		---- If conditions for the batch to be Active are not met
		---- and conditions for the batch to be Ended are not met
		---- and the machine updated is seting as Future its machineBatch, then the batch must have status Future
		--ELSE IF (@UpdatedMachineBatchIdStatus = @idStatusFuture)
		--BEGIN
		--	SET @idBatchResultStatus = @idStatusFuture
		--END
		-- if no other conditions are met, 
		-- if we set the machinebatch to Scheduled, and there are no machineBatches in status not scheduled, 
		-- then set the batch to scheduled
		ELSE
		BEGIN
			IF (@thereAreMachinesWithStatusNotScheduled = 0 AND @UpdatedMachineBatchIdStatus = @idStatusScheduled)
			BEGIN
				SET @idBatchResultStatus = @idStatusScheduled
			END
		END

		IF (@idBatchResultStatus IS NOT NULL AND (@idBatchCurrentStatus <> @idBatchResultStatus))
		BEGIN
		
			-- Update status of batch
			UPDATE Production.BatchHistory
			SET 
				idStatus = @idBatchResultStatus
			WHERE idBatchHistory = @IdBatch
			
			IF @@ROWCOUNT <= 0
			BEGIN
				RAISERROR(N'Batch ''%d'' NOT FOUND in database. Its status was NOT updated', 11, 1, @IdBatch)
			END
			
			-- Return the new status
			SET @ResultBatchIdStatus = @idBatchResultStatus

		END
		ELSE
		BEGIN
		
			-- Return the same status (there was no change of status)
			SET @ResultBatchIdStatus = @idBatchCurrentStatus
		
		END
	
	END TRY
	BEGIN CATCH
	
		DECLARE @ErrorMessage NVARCHAR(MAX);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT 
			@ErrorMessage = ERROR_MESSAGE(),
			@ErrorSeverity = ERROR_SEVERITY(),
			@ErrorState = ERROR_STATE();

		-- Use RAISERROR inside the CATCH block to return error
		-- information about the original error that caused
		-- execution to jump to the CATCH block.
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	
	END CATCH

END