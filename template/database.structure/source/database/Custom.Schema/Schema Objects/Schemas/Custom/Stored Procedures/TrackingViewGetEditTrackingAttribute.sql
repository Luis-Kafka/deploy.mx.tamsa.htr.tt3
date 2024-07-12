--Returns data needed by custom dialog of TrackingView. The format of the result depends on how the custom dialog expects it.
CREATE PROCEDURE [Custom].[TrackingViewGetEditTrackingAttribute] 
        @idTracking INT , 
        @UserCode Common.TCode = NULL 
AS 
BEGIN
	SET NOCOUNT ON;

	SELECT 'CustomWD01' AS paramTrackingAttribute, 55 AS value
END