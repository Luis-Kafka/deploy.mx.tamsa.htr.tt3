-- =============================================
-- Author:		MEDINA Leandro
-- Create date: 2020-03-20
-- Description:	Custom SP to get piece product
-- =============================================
CREATE PROCEDURE [Custom].[TdaGetProductId]
(
	@IdTda INT = NULL, 
	@IdGroupType INT = NULL,
	@IdMachine INT = NULL,
	@IdZone INT = NULL,
	@Position INT = NULL
)
AS
BEGIN
	SET NOCOUNT ON;

	--IF(@IdTda IS NULL)
	--BEGIN
	--	RAISERROR('A critical error has occured: @IdTag is NULL.', 16, 1)
	--END
	--IF(@IdGroupType IS NULL)
	--BEGIN
	--	RAISERROR('A critical error has occured: @IdGroupType is NULL.', 16, 1)
	--END
	--IF(@IdMachine IS NULL)
	--BEGIN
	--	RAISERROR('A critical error has occured: @IdMachine is NULL.', 16, 1)
	--END

	IF(@IdZone IS NULL OR @Position IS NULL)
	BEGIN
		RAISERROR('A critical error has occured: @IdZone or @Position is NULL.', 16, 1)
	END

	PRINT 'Getting product for @IdZone = ' + CONVERT(NVARCHAR(MAX), @IdZone) + ' AND @Position = ' + CONVERT(NVARCHAR(MAX), @Position)

	DECLARE @idTracking INT = NULL

	SELECT @idTracking = l.idTracking
	FROM [Tracking].[TrackingLocation] l
	WHERE l.idZone = @IdZone 
		AND l.SortOrder = @Position

	IF(@idTracking IS NULL)
	BEGIN
		PRINT 'Tracking not present!'
	END

	SELECT @idTracking AS ProductId
END
GO
