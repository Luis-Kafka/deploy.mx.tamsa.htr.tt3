CREATE PROCEDURE [Custom].[TrackingViewGetOfflineTracking]
	@orderNumber NVARCHAR(30) = NULL,
	@heatNumber NVARCHAR(30) = NULL,
	@pipeNumber NVARCHAR(30) = NULL
AS
BEGIN

	DECLARE @orderNumberAttributeId INT = (SELECT idAttribute FROM Tracking.Attribute WHERE Code = 'OrderNumber' AND Active = 1)
	DECLARE @heatNumberAttributeId INT = (SELECT idAttribute FROM Tracking.Attribute WHERE Code = 'HeatNumber' AND Active = 1)

	SELECT 
		   T.IdTracking,
		   AHO.[Value] OrderNumber,
		   AHH.[Value] HeatNumber,
		   T.TraceabilityCode PipeNumber,
		   T.IdTrackingType,
		   TT.[Name] TrackingType,
		   T.IdProductionHistory,
		   T.IdItemStatus,
		   TS.[Name] ItemStatus,
		   T.IsInverted,
		   CASE 
				  WHEN TL.idTracking IS NULL THEN CONVERT(BIT, 1)
				  WHEN TZO.idZone IS NOT NULL THEN CONVERT(BIT, 0)
		   END IsOutOfLine,
		   TZO.IdZone,
		   TZO.[Name] Zone,
		   TZO.IdArea,
		   CA.[Code] AreaCode,
		   CA.[Name] AreaName
	FROM Tracking.Tracking T
	JOIN Tracking.TrackingType TT ON TT.idTrackingType = T.idTrackingType
	JOIN Tracking.ItemStatus TS ON TS.idItemStatus = T.idItemStatus
	LEFT OUTER JOIN Tracking.TrackingLocation TL ON TL.idTracking = T.idTracking
	LEFT OUTER JOIN Tracking.[Zone] TZO ON TL.idZone = TZO.idZone AND TZO.IsOutOfLine = 1 AND TZO.Active = 1
	LEFT OUTER JOIN Common.Area CA ON CA.idArea = TZO.idArea AND CA.Active = 1
	--LEFT OUTER JOIN [Exit].Item EI ON EI.idTracking = T.idTracking
	JOIN Tracking.AttributeHistory AHO ON AHO.idTracking = T.idTracking AND AHO.idAttribute = @orderNumberAttributeId AND AHO.Active = 1
	JOIN Tracking.AttributeHistory AHH ON AHH.idTracking = T.idTracking AND AHH.idAttribute = @heatNumberAttributeId AND AHH.Active = 1
	WHERE 
		   -- Matches order number (if any)
		   (@orderNumber IS NULL OR CAST(AHO.[Value] AS NVARCHAR) LIKE '%' + @orderNumber + '%') AND 
		   -- Matches heat number (if any)
		   (@heatNumber IS NULL OR CAST(AHH.[Value] AS NVARCHAR) LIKE '%' + @heatNumber + '%') AND 
		   -- Matches pipe number (if any)
		   (@pipeNumber IS NULL OR T.TraceabilityCode LIKE '%' + @pipeNumber + '%') AND
		   -- Pipes have not exited the line in an exit bundle
		   --EI.idTracking IS NULL AND
		   -- Pipes are not in tracking location OR they are in an OUT OF LINE zone (i.e. deadZone, crane)
		   (TL.idTracking IS NULL OR TZO.idZone IS NOT NULL)
	ORDER BY OrderNumber DESC, HeatNumber DESC, PipeNumber DESC

END