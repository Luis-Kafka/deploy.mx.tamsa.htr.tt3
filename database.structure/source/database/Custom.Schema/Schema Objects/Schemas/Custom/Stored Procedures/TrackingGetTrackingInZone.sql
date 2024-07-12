CREATE PROCEDURE [Custom].[TrackingGetTrackingInZone]
	@ZoneCode Common.TCode,
	@SortOrder INT ,
	@IdTrackingOut INT OUT,
	@IdItemStatusOut INT OUT
AS
BEGIN

	IF (@SortOrder = -2)
	BEGIN
		SELECT TOP 1 @IdTrackingOut = TT.idTracking, @IdItemStatusOut =  TT.idItemStatus
		FROM 
			Tracking.TrackingLocation TL 
		INNER JOIN
			Tracking.Tracking TT ON TL.idTracking = TT.idTracking
		INNER JOIN
			Tracking.Zone TZ ON TL.idZone = TZ.idZone		
		WHERE 
			TZ.Code = @ZoneCode
		ORDER BY SortOrder ASC
	END
	ELSE IF (@SortOrder = -1)
	BEGIN
		SELECT TOP 1 @IdTrackingOut = TT.idTracking, @IdItemStatusOut =  TT.idItemStatus
		FROM 
			Tracking.TrackingLocation TL 
		INNER JOIN
			Tracking.Tracking TT ON TL.idTracking = TT.idTracking
		INNER JOIN
			Tracking.Zone TZ ON TL.idZone = TZ.idZone		
		WHERE 
			TZ.Code = @ZoneCode
		ORDER BY SortOrder DESC
	END
	ELSE
	BEGIN
		SELECT TOP 1 @IdTrackingOut = TT.idTracking, @IdItemStatusOut =  TT.idItemStatus
		FROM 
			Tracking.TrackingLocation TL 
		INNER JOIN
			Tracking.Tracking TT ON TL.idTracking = TT.idTracking
		INNER JOIN
			Tracking.Zone TZ ON TL.idZone = TZ.idZone		
		WHERE 
			TZ.Code = @ZoneCode
		AND 	
			TL.SortOrder = @SortOrder
		ORDER BY SortOrder ASC
	END

	IF (@IdTrackingOut IS NULL)
	BEGIN
		SET @IdTrackingOut=0
	END

	IF (@IdItemStatusOut IS NULL)
	BEGIN
		SET @IdItemStatusOut=0 
	END
	
END