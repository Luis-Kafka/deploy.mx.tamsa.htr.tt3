/*
declare @TdaTagValue sql_variant
exec [Custom].[TrackingGetTdaValue]
	15633,
	'=150+A30-SPN003.PipeLength',
	@TdaTagValue  OUT

select @TdaTagValue

*/

CREATE PROCEDURE [Custom].[TrackingGetTdaValue]
	@Id INT,
	@TdaTagCode Common.TCode,
	@TdaTagValue sql_variant OUT
AS
BEGIN
	
	DECLARE @idTdaTag INT
	DECLARE @idGrpType INT

	SELECT @idTdaTag = idTag, @idGrpType = idGroupType FROM Tda.Tag WHERE Code = @TdaTagCode

	
	IF (@idGrpType = Tda.FSGetIdGroupType('ByKey') OR @idGrpType = Tda.FSGetIdGroupType('ByProductId') )
	BEGIN
		SELECT 
			TOP 1 @TdaTagValue = ValueYPoint 
		FROM 
			Tda.History 
		WHERE 
			idKeyHistory = @Id 
		AND
			idTag = @idTdaTag		
		ORDER BY AcquisitionEndDateTime desc
	END
	ELSE IF (@idGrpType = Tda.FSGetIdGroupType('ByTrackingPass'))
	BEGIN
		SELECT 
			TOP 1 @TdaTagValue = ValueYPoint 
		FROM 
			Tda.History 
		WHERE 
			idTrackingPassHistory = @Id 
		AND
			idTag = @idTdaTag		
		ORDER BY AcquisitionEndDateTime desc
	END
	ELSE IF (@idGrpType = Tda.FSGetIdGroupType('ByTracking'))
	BEGIN
		SELECT 
			TOP 1 @TdaTagValue = ValueYPoint 
		FROM 
			Tda.History 
		WHERE 
			idTracking = @Id 
		AND
			idTag = @idTdaTag		
		ORDER BY AcquisitionEndDateTime desc
	END
	ELSE
	BEGIN
		SELECT @TdaTagValue = 0
	END
	
	RETURN 1
END