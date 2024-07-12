--- Config dump file for schema Specification
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Specification.AttributeGroup
    UPDATE [Specification].[AttributeGroup] SET [Active] = 'False';
    EXEC [Specification].[DoConfigDefineAttributeGroup] @AttributeGroupParentCode = null, @Code = 'GENERIC_DATA', @Name = 'Generic data', @Description = 'Attribuets associated with generic data', @Active = True;
    -- End dump for table Specification.AttributeGroup

    -- Begin dump for table Specification.ComponentType
    UPDATE [Specification].[ComponentType] SET [Active] = 'False';
    EXEC [Specification].[DoConfigDefineComponentType] @Code = 'SourceWorkorder', @Name = 'SourceWorkorder', @Description = 'SourceWorkorder', @Active = True;
    EXEC [Specification].[DoConfigDefineComponentType] @Code = 'TargetWorkorder', @Name = 'TargetWorkorder', @Description = 'TargetWorkorder', @Active = True;
    EXEC [Specification].[DoConfigDefineComponentType] @Code = 'TargetProduct', @Name = 'TargetProduct', @Description = 'TargetProduct', @Active = True;
    EXEC [Specification].[DoConfigDefineComponentType] @Code = 'SourceProduct', @Name = 'SourceProduct', @Description = 'SourceProduct', @Active = True;
    EXEC [Specification].[DoConfigDefineComponentType] @Code = 'Heat', @Name = 'Heat', @Description = 'Heat', @Active = True;
    EXEC [Specification].[DoConfigDefineComponentType] @Code = 'Lot', @Name = 'Lot', @Description = 'Lot', @Active = True;
    EXEC [Specification].[DoConfigDefineComponentType] @Code = 'Batch', @Name = 'Batch', @Description = 'Batch', @Active = True;
    EXEC [Specification].[DoConfigDefineComponentType] @Code = 'MACHINEWORKFLOW', @Name = 'MACHINEWORKFLOW', @Description = 'MACHINEWORKFLOW', @Active = True;
    -- End dump for table Specification.ComponentType

    -- Begin dump for table Specification.SpecificationType
    UPDATE [Specification].[SpecificationType] SET [Active] = 'False';
    EXEC [Specification].[DoConfigDefineSpecificationType] @Code = 'HTR', @Name = 'HTR', @Description = 'HTR', @Active = True;
    -- End dump for table Specification.SpecificationType

    -- Begin dump for table Specification.ComponentSubType
    UPDATE [Specification].[ComponentSubType] SET [Active] = 'False';
    EXEC [Specification].[DoConfigDefineComponentSubType] @SpecificationTypeCode = 'HTR', @ComponentTypeCode = 'SourceWorkorder', @Code = 'SourceWorkorder', @Name = 'SourceWorkorder', @Description = 'SourceWorkorder', @Active = True;
    EXEC [Specification].[DoConfigDefineComponentSubType] @SpecificationTypeCode = 'HTR', @ComponentTypeCode = 'TargetWorkorder', @Code = 'TargetWorkorder', @Name = 'TargetWorkorder', @Description = 'TargetWorkorder', @Active = True;
    EXEC [Specification].[DoConfigDefineComponentSubType] @SpecificationTypeCode = 'HTR', @ComponentTypeCode = 'SourceProduct', @Code = 'SourceProduct', @Name = 'SourceProduct', @Description = 'SourceProduct', @Active = True;
    EXEC [Specification].[DoConfigDefineComponentSubType] @SpecificationTypeCode = 'HTR', @ComponentTypeCode = 'TargetProduct', @Code = 'TargetProduct', @Name = 'TargetProduct', @Description = 'TargetProduct', @Active = True;
    EXEC [Specification].[DoConfigDefineComponentSubType] @SpecificationTypeCode = 'HTR', @ComponentTypeCode = 'Heat', @Code = 'Heat', @Name = 'Heat', @Description = 'Heat', @Active = True;
    EXEC [Specification].[DoConfigDefineComponentSubType] @SpecificationTypeCode = 'HTR', @ComponentTypeCode = 'Lot', @Code = 'Lot', @Name = 'Lot', @Description = 'Lot', @Active = True;
    EXEC [Specification].[DoConfigDefineComponentSubType] @SpecificationTypeCode = 'HTR', @ComponentTypeCode = 'Batch', @Code = 'Batch', @Name = 'Batch', @Description = 'Batch', @Active = True;
    EXEC [Specification].[DoConfigDefineComponentSubType] @SpecificationTypeCode = 'HTR', @ComponentTypeCode = 'MACHINEWORKFLOW', @Code = 'MACHINEWORKFLOW', @Name = 'MACHINEWORKFLOW', @Description = 'MACHINEWORKFLOW', @Active = True;
    -- End dump for table Specification.ComponentSubType

    -- Begin dump for table Specification.Attribute
    -- End dump for table Specification.Attribute

    -- Begin dump for table Specification.ComponentTypeAttribute
    -- End dump for table Specification.ComponentTypeAttribute

    -- Begin dump for table Specification.ComponentTypeDefaultEntity
    -- End dump for table Specification.ComponentTypeDefaultEntity

    -- Begin dump for table Specification.ComponentTypeAttributeArea
    -- End dump for table Specification.ComponentTypeAttributeArea

    -- Begin dump for table Specification.ComponentTypeAttributeMachine
    -- End dump for table Specification.ComponentTypeAttributeMachine

    -- Begin dump for table Specification.ComponentTypeAttributeMachineWorkflow
    -- End dump for table Specification.ComponentTypeAttributeMachineWorkflow

    -- Begin dump for table Specification.ComponentTypeAttributeMachineWorkflowSequence
    -- End dump for table Specification.ComponentTypeAttributeMachineWorkflowSequence

    COMMIT TRANSACTION;
END TRY

BEGIN CATCH

    SELECT
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() AS ErrorState ,
        ERROR_PROCEDURE() AS ErrorProcedure,
        ERROR_LINE() AS ErrorLine,
        ERROR_MESSAGE() AS ErrorMessage;

    IF @TC > 0 AND XACT_STATE() = 1
        COMMIT TRANSACTION;
    IF @TC = 0
        ROLLBACK TRANSACTION;
END CATCH;
