CREATE PROCEDURE [Custom].[PresetGetExtendedCatalogValues]
    -- Add the parameters for the stored procedure here
    @idProduction INT,
    @idMachine INT
AS
BEGIN
	
	DECLARE @idArea INT, @idCenter INT, @idMachineWorkflow INT, @idMachineWorkflowSequence INT, @idSpecification INT, @idMachineProductWorkflow INT, @idStatusReleased INT
	DECLARE @idx INT, @count INT
	DECLARE @familyRevisions TABLE (idFamilyRevision INT, idFamilyType INT, FamilyTypeCode Common.TCode)
	DECLARE @specificationValues Custom.TPresetSpecificationAttributeValue
	DECLARE @familyRevisionCriteriaResult TABLE (idFamilyType INT, idFamilyRevision INT, CriterionResult BIT NULL, CriterionSQL NVARCHAR(MAX), id INT IDENTITY(1,1))
	DECLARE @matchingFamilyRevisions TABLE (idFamilyType INT, idFamilyRevision INT)
	DECLARE @presetValues TABLE (idPreset INT, CatalogValue NVARCHAR(MAX) NULL, DefaultValue NVARCHAR(MAX) NULL)
	DECLARE @result TABLE (idPreset INT, ValueSQL NVARCHAR(MAX), Value FLOAT NULL, id INT IDENTITY(1,1))
	DECLARE @errorMessage NVARCHAR(MAX), @errorSeverity INT, @errorState INT

	BEGIN TRY

		BEGIN -- Validate existence of received IdMachine and IdProduction
			
				IF NOT EXISTS (SELECT * FROM Common.VwMachine WHERE idMachine = @idMachine)					RAISERROR ('ERROR getting Preset Catalog values: IdMachine %d NOT FOUND in database.', 16, 1, @idMachine)
				IF NOT EXISTS (SELECT * FROM Production.BatchHistory WHERE idBatchHistory = @idProduction)	RAISERROR ('ERROR getting Preset Catalog values: IdProduction %d NOT FOUND in database.', 16, 1, @idProduction)
		END

		BEGIN -- Given IdMachine and IdProduction, determine idStatusReleased, IdSpecification, IdMachineWorkflowSequence, IdMachineWorkflow, IdArea, IdProcess

			SELECT @idStatusReleased = CONVERT([INT], [Value])
			FROM [Common].[EnumValue] EV
			JOIN [Common].[Enum] E ON E.idEnum = EV.idEnum
			WHERE E.Code = 'FamilyRevisionStatus' AND EV.Code = 'RELEASED'

			SELECT @idArea = [idArea]
			FROM [Common].[VwMachine]
			WHERE [idMachine] = @idMachine

			SELECT @idCenter = [idCenter]
			FROM [Common].[VwArea]
			WHERE [idArea] = @idArea

			SELECT @idSpecification = [idSpecification], @idMachineProductWorkflow = [idMachineProductWorkflow] 
			FROM [Production].[BatchHistory] 
			WHERE [idBatchHistory] = @idProduction

			SELECT @idMachineWorkflow = [idMachineWorkflow] 
			FROM [Production].[VwMachineProductWorkflow] 
			WHERE [idMachineProductWorkflow] = @idMachineProductWorkflow

			SELECT @idMachineWorkflowSequence = [IdMachineWorkflowSequence]
			FROM [Common].[VwMachineWorkflowSequence]
			WHERE [idMachineWorkflow] = @idMachineWorkflow AND [idMachine] = @idMachine

			BEGIN -- Validate existence of IdStatusReleased, IdArea, IdCenter, IdSpecification, IdMachineWorkflow, IdMachineWorkflowSequence
			
				IF (@idStatusReleased IS NULL)				RAISERROR ('ERROR getting Preset Catalog values: IdStatusReleased NOT FOUND in database.', 16, 1)
				IF (@idArea IS NULL)						RAISERROR ('ERROR getting Preset Catalog values: IdArea NOT FOUND for IdMachine %d.', 16, 1, @idMachine)
				IF (@idCenter IS NULL)						RAISERROR ('ERROR getting Preset Catalog values: IdCenter NOT FOUND for IdMachine %d.', 16, 1, @idMachine)
				IF (@idSpecification IS NULL)				RAISERROR ('ERROR getting Preset Catalog values: IdSpecification NOT FOUND for IdProduction %d.', 16, 1, @idProduction)
				IF (@idMachineWorkflow IS NULL)				RAISERROR ('ERROR getting Preset Catalog values: IdMachineWorkflow NOT FOUND for IdProduction %d.', 16, 1, @idProduction)
				IF (@idMachineWorkflowSequence IS NULL)		RAISERROR ('ERROR getting Preset Catalog values: IdMachineWorkflowSequence NOT FOUND for IdMachine %d and IdProduction %d.', 16, 1, @idMachine, @idProduction)

			END

		END

		BEGIN -- Get all Released Family Revisions corresponding to given IdCenter

			INSERT @familyRevisions (idFamilyRevision, idFamilyType, FamilyTypeCode)
			SELECT FR.[idFamilyRevision], FT.[idFamilyType], FT.[Code]
			FROM [PresetCatalog].[VwFamilyType] FT 
			JOIN [PresetCatalog].[VwFamily] F ON F.[idFamilyType] = FT.[idFamilyType]
			JOIN [PresetCatalog].[VwFamilyRevision] FR ON FR.[idFamily] = F.[idFamily]
			WHERE FT.[idCenter] = @idCenter AND FR.[idStatus] = @idStatusReleased

		END

		BEGIN -- Get all Specification Values for given IdSpecification
		
			INSERT @specificationValues (idComponentSubType, ComponentSubTypeCode, idAttribute, AttributeCode, SpecificationValue)
			SELECT SCO.[idComponentSubType], SCS.[Code], SA.[idAttribute], SA.[Code], 
			CASE 
				WHEN SVS.[Value] IS NOT NULL THEN SVS.[Value]	-- Prioritize 1st specification value for MachineWorkflowSequence
				WHEN SVM.[Value] IS NOT NULL THEN SVM.[Value]	-- Prioritize 2nd specification value for Machine
				WHEN SVW.[Value] IS NOT NULL THEN SVW.[Value]	-- Prioritize 3rd specification value for MachineWorkflow
				WHEN SVA.[Value] IS NOT NULL THEN SVA.[Value]	-- Prioritize 4th specification value for Area
				WHEN  SV.[Value] IS NOT NULL THEN  SV.[Value]	-- Prioritize 5th specification value for Nothing
			END
			FROM [Specification].[VwComponentAttributeValue] SV
			LEFT JOIN [Specification].[VwComponentAttributeValueArea] SVA ON SV.[idComponentAttributeValue] = SVA.[idComponentAttributeValue] AND SVA.[idArea] = @idArea
			LEFT JOIN [Specification].[VwComponentAttributeValueMachine] SVM ON SV.[idComponentAttributeValue] = SVM.[idComponentAttributeValue] AND SVM.[idMachine] = @idMachine
			LEFT JOIN [Specification].[VwComponentAttributeValueMachineWorkflow] SVW ON SV.[idComponentAttributeValue] = SVW.[idComponentAttributeValue] AND SVW.[idMachineWorkflow] = @idMachineWorkflow
			LEFT JOIN [Specification].[VwComponentAttributeValueMachineWorkflowSequence] SVS ON SV.[idComponentAttributeValue] = SVS.[idComponentAttributeValue] AND SVS.[idMachineWorkflowSequence] = @idMachineWorkflowSequence
			JOIN [Specification].[VwAttribute] SA ON SA.[idAttribute] = SV.[idAttribute]
			JOIN [Specification].[VwSpecificationComponent] SCO ON SCO.[idComponent] = SV.[idComponent]
			JOIN [Specification].[VwComponentSubType] SCS ON SCO.[idComponentSubType] = SCS.[idComponentSubType]
			WHERE SCO.[idSpecification] = @idSpecification

		END

		BEGIN -- Evaluate all Criteria for Released Family Revisions

			INSERT @familyRevisionCriteriaResult (idFamilyType, idFamilyRevision, CriterionSQL)
			SELECT FR.idFamilyType, FRC.[idFamilyRevision], [Custom].[PresetFSGetCriterionSQLExpression](SV.SpecificationValue, FRC.[Value])
			FROM @familyRevisions FR
			JOIN [PresetCatalog].[VwFamilyRevisionCriterion] FRC ON FRC.[idFamilyRevision] = FR.[idFamilyRevision]
			JOIN [PresetCatalog].[VwCriterion] C ON C.[idCriterion] = FRC.[idCriterion]
			JOIN @specificationValues SV ON SV.[idComponentSubType] = C.[idComponentSubType] AND SV.[idAttribute] = C.[idAttribute]
			
			-- Iterate over all Criteria to evaluate SQL expressions
			SET @idx = 1
			SET @count = (SELECT COUNT(*) FROM @familyRevisionCriteriaResult)
			DECLARE @criterionResult BIT = 0, @criterionExpression NVARCHAR(MAX), @criterionSQL NVARCHAR(MAX)
			WHILE (@idx <= @count)
			BEGIN
				SET @criterionResult = 0
				SET @criterionSQL = (SELECT CriterionSQL FROM @familyRevisionCriteriaResult WHERE id = @idx)
				SET @criterionExpression = 'SET @criterionResult = CASE WHEN (' + @criterionSQL + ') THEN 1 ELSE 0 END'
				EXEC sp_executesql @criterionExpression , N'@criterionResult BIT OUTPUT', @criterionResult OUTPUT
				UPDATE @familyRevisionCriteriaResult SET CriterionResult = @criterionResult WHERE id = @idx
				SET @idx = @idx + 1
			END

		END

		BEGIN -- Select matching Family Revisions (should be one per familyType)

			INSERT @matchingFamilyRevisions (idFamilyRevision, idFamilyType)
			SELECT DISTINCT idFamilyRevision, idFamilyType
			FROM @familyRevisionCriteriaResult
			WHERE idFamilyRevision NOT IN 
			(
				SELECT idFamilyRevision
				FROM @familyRevisionCriteriaResult
				WHERE CriterionResult = 0
			)

			BEGIN -- Validate there is AT MOST ONE matching Family Revision per FamilyType (otherwise we would have OVERLAPPING between Family Revisions)

				DECLARE @overlappedFamilyType INT = NULL

				-- Search for a FamilyType that has more than one matching Family Revision
				SELECT TOP 1 @overlappedFamilyType = idFamilyType
				FROM @matchingFamilyRevisions
				GROUP BY idFamilyType
				HAVING COUNT(*) > 1

				IF (@overlappedFamilyType IS NOT NULL)
				BEGIN

					DECLARE @overlappedFamilyRevisions VARCHAR(MAX) = ''

					-- If overlapping is found, concatenate all Family Revisions that overlap for a given FamilyType
 					SELECT  @overlappedFamilyRevisions = @overlappedFamilyRevisions + CAST(idFamilyRevision AS NVARCHAR) +', '
					FROM    @matchingFamilyRevisions
					WHERE idFamilyType = @overlappedFamilyType

					RAISERROR ('ERROR getting Preset Catalog values: There is OVERLAPPING between IdFamilyRevisions %s of IdFamilyType %d.', 16, 1, @overlappedFamilyRevisions, @overlappedFamilyType)
				END

			END

		END

		BEGIN -- Select preset default values

			INSERT @presetValues (idPreset, DefaultValue)
			SELECT PCFTP.idPreset, PCFTP.DefaultValue
			FROM PresetCatalog.VwFamilyType FT
			JOIN PresetCatalog.VwFamilyTypePreset PCFTP ON PCFTP.idFamilyType = FT.idFamilyType
			JOIN Preset.VwPreset PP ON PP.idPreset = PCFTP.idPreset
			JOIN Preset.VwMachineComponent PMC ON PMC.idMachineComponent = PP.idMachineComponent
			WHERE FT.idCenter = @idCenter AND PMC.idMachine = @idMachine

		END

		BEGIN -- Select catalog preset values for matching Family Revisions

			UPDATE @presetValues SET 
				CatalogValue = PCV.Value
			FROM @matchingFamilyRevisions MFR
			JOIN PresetCatalog.VwCatalogValue PCV ON PCV.idFamilyRevision = MFR.idFamilyRevision
			JOIN PresetCatalog.VwFamilyTypePreset PCFTP ON PCFTP.idFamilyTypePreset = PCV.idFamilyTypePreset
			JOIN @presetValues PV ON PV.idPreset = PCFTP.idPreset

		END

		BEGIN -- Validate that every preset has either a default value or an assigned catalog value (otherwise there would be null-valued presets)
			
			IF EXISTS (SELECT * FROM @presetValues WHERE DefaultValue IS NULL AND CatalogValue IS NULL)
			BEGIN
				DECLARE @nullPresets VARCHAR(MAX) = ''

				-- If null-valued presets are found, concatenate all of them
				SELECT @nullPresets = @nullPresets + CAST(idPreset AS NVARCHAR) + ', '
				FROM @presetValues
				WHERE DefaultValue IS NULL AND CatalogValue IS NULL

				RAISERROR ('ERROR getting Preset Catalog values: There is NO DEFAULT AND NO CATALOG VALUE ASSIGNED for IdPresets %s.', 16, 1, @nullPresets)
			END

		END

		BEGIN -- Evaluate all Presets for Released Family Revisions

			INSERT @result (idPreset, ValueSQL)
			SELECT idPreset, [Custom].[PresetFSGetPresetSQLExpression](CONVERT(NVARCHAR(MAX), COALESCE(CatalogValue, DefaultValue)), DefaultValue, @specificationValues)
			FROM @presetValues

			BEGIN -- Validate that all preset expressions are well formed and that all required specification attribute's values exist (otherwise there would be null-valued presets)

				IF EXISTS (SELECT * FROM @result WHERE ValueSQL IS NULL)
				BEGIN
					DECLARE @cannotEvaluatePresets VARCHAR(MAX) = ''
					
					SELECT @cannotEvaluatePresets = @cannotEvaluatePresets + CAST(idPreset AS NVARCHAR) + ', '
					FROM @result 
					WHERE ValueSQL IS NULL

					RAISERROR ('ERROR getting Preset Catalog values: Either PRESET EXPRESSION IS INCORRECT or there is some SPECIFICATION VALUES MISSING for IdPresets %s, IdBatch %d, IdMachine %d, IdSpecification %d.', 16, 1, @cannotEvaluatePresets, @idProduction, @idMachine, @idSpecification)
				END

			END

			-- Iterate over all Presets to evaluate SQL expressions
			SET @idx = 1
			SET @count = (SELECT COUNT(*) FROM @result)
			DECLARE @presetResult FLOAT = 0, @presetExpression NVARCHAR(MAX), @presetSQL NVARCHAR(MAX)
			WHILE (@idx <= @count)
			BEGIN
				SET @presetResult = 0
				SET @presetSQL = (SELECT ValueSQL FROM @result WHERE id = @idx)
				SET @presetExpression = 'SET @presetResult = ' + @presetSQL
				EXEC sp_executesql @presetExpression , N'@presetResult FLOAT OUTPUT', @presetResult OUTPUT
				UPDATE @result SET Value = @presetResult WHERE id = @idx
				SET @idx = @idx + 1
			END

		END

		-- Return result Preset values
		SELECT idPreset, Value
		FROM @result

	END TRY
    BEGIN CATCH

		-- Return original error that caused execution to jump to the CATCH block.
		SELECT @errorMessage = ERROR_MESSAGE(), @errorSeverity = ERROR_SEVERITY(), @errorState = ERROR_STATE();
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);

    END CATCH
END