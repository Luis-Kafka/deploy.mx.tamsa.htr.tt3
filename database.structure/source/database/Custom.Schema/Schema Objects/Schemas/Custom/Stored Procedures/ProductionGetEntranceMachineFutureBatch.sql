CREATE PROCEDURE [Custom].[ProductionGetEntranceMachineFutureBatch]  
 @IdMachine INT,          -- Id of current machine  
 @IdActiveKey INT = NULL,       -- Id of active key of current machine  
 @IdActiveBatch INT = NULL,       -- Id of active batch of current machine  
 @ActiveKeyBeginDateTime Common.TDatetime = NULL, -- BeginDateTime of active key of current machine  
 @IdFutureBatch INT = NULL OUTPUT     -- Id of future batch for current machine  
AS  
BEGIN  
    SET NOCOUNT ON;  
    --------------------------------------------------------------------------------------  
 --  This stored procedure MUST BE CUSTOMIZED for each implementation of production manager  
 --  
 --  Description:  
 --  Gets the future batch for a machine that is an entrance of the line according to the sequence  
 --  of batches programmed to enter the line. The implementation of the sequence of batches to enter   
 --  the line is absolutely custom and, as a consecuence, so is this stored procedure  
 --------------------------------------------------------------------------------------  
  DECLARE @idStatusFuture INT = Common.FSGetIdStatus('Future');
  DECLARE @idStatusSheduled INT = Common.FSGetIdStatus('Sheduled');
    
  -- Return the future batch found  
  select top 1 @IdFutureBatch = idBatchHistory from Production.BatchHistory where idStatus in (@idStatusSheduled,@idStatusFuture) 
  and idBatchHistory <> @IdActiveBatch
  order by idBatchHistory desc
    
END