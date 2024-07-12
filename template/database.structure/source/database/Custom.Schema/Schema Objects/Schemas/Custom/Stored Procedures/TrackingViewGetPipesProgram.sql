
--Returns data needed by custom dialog of TrackingView. The format of the result depends on how the custom dialog expects it.
CREATE PROCEDURE [Custom].[TrackingViewGetPipesProgram]
(
	@idZone [Common].[TCode] = NULL
)				
AS
BEGIN 

SET NOCOUNT ON;
 
	SELECT 0
		/*bh.idBatchHistory as idBatch , OH.OrderNumber, 0 as HeatNumber, 0 as TrackingNumber 
		FROM  Production.BatchHistory bh 
		inner join Production.OrderHistory oh on bh.idOrderHistory = oh.idOrderHistory*/

END