

CREATE PROCEDURE [Custom].[TrackingViewGetIdSpecification]
(
	@idProductionHistory INT
)
AS
BEGIN
    SET NOCOUNT ON;

	SELECT idSpecification
	FROM Production.BatchHistory
	WHERE idBatchHistory = @idProductionHistory

END