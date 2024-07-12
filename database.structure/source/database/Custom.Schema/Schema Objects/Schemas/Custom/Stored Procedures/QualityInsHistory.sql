CREATE PROCEDURE [Custom].[QualityInsHistory]
	@IdHistory INT,
	@IdTrackingPass INT,
	@IdApplication INT,
	@IdCode INT,
	@IdDestination INT = NULL,
	@IdItemStatus INT = NULL,
	@IdUser INT = NULL,
	@Observation NVARCHAR(MAX) = NULL,
	@IsMain BIT
AS
BEGIN
	UPDATE Production.TrackingPassHistory
		SET UpdDateTime = SYSDATETIMEOFFSET()
	WHERE idTrackingPassHistory = @IdTrackingPass
END