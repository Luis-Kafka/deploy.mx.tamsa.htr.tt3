
create PROCEDURE [Custom].[PresetGetPresetCatalogChanged]
	@idMachine INT,
	@idProductionHistory INT,
	@idProductionHistoryPrevious INT,
	@catalogChanged BIT = NULL OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @productionHistoryCatalog TABLE (idx INT IDENTITY(1,1), idPreset INT, [Value] FLOAT NULL)
	DECLARE @productionHistoryPreviousCatalog TABLE (idPreset INT, [Value] FLOAT NULL)

	BEGIN -- Get catalog values
		INSERT @productionHistoryCatalog (idPreset, [Value])
		EXEC [PresetCatalog].[GetExtendedCatalogValues] @idProduction = @idProductionHistory, @idMachine = @idMachine
		
		INSERT @productionHistoryPreviousCatalog (idPreset, [Value])
		EXEC [PresetCatalog].[GetExtendedCatalogValues] @idProduction = @idProductionHistoryPrevious, @idMachine = @idMachine
	END

	BEGIN -- Compare catalog values
		DECLARE @idx INT = 1
		DECLARE @idxMax INT = (SELECT COUNT(*) FROM @productionHistoryCatalog)
		DECLARE @idPreset INT
		DECLARE @catalogValue FLOAT
		DECLARE @catalogPreviousValue FLOAT

		-- Search for a difference among catalog values
		SET @catalogChanged = 0
		WHILE @Idx <= @IdxMax
		BEGIN
			-- Get current catalog value for given idPreset
			SET @catalogValue = NULL
			SELECT @idPreset = idPreset, @catalogValue = [Value] FROM @productionHistoryCatalog WHERE idx = @Idx

			-- Get previous catalog value for given idPreset
			SET @catalogPreviousValue = NULL
			SELECT @catalogPreviousValue = [Value] FROM @productionHistoryPreviousCatalog WHERE idPreset = @idPreset

			IF NOT ((@catalogValue = @catalogPreviousValue) OR (@catalogValue IS NULL AND @catalogPreviousValue IS NULL))
			BEGIN
				-- Difference in catalog values detected
				SET @catalogChanged = 1
				BREAK
			END

			SET @Idx = @Idx + 1
		END
	END
END