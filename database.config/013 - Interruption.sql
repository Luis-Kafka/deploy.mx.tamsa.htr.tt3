--- Config dump file for schema Interruption
DECLARE @TC INT = @@TRANCOUNT;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Begin dump for table Interruption.Category
    UPDATE [Interruption].[Category] SET [Active] = 'False';
    EXEC [Interruption].[DoConfigDefineCategory] @Code = 'INTERRUPTION', @Name = 'INTERRUPTION', @Description = 'INTERRUPTION', @SortOrder = 2, @Color = 10027008, @Active = True;
    EXEC [Interruption].[DoConfigDefineCategory] @Code = 'MICRO', @Name = 'MICRO', @Description = 'MICRO', @SortOrder = 1, @Color = 16776960, @Active = True;
    -- End dump for table Interruption.Category

    -- Begin dump for table Interruption.CodeCategory
    UPDATE [Interruption].[CodeCategory] SET [Active] = 'False';
	EXEC [Interruption].[DoConfigDefineCodeCategory] @Code = 'ESTR', @Name = 'Estructurales', @Description = 'Estructurales', @RequiredComponentLevel = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeCategory] @Code = 'PROG', @Name = 'Programadas', @Description = 'Programadas', @RequiredComponentLevel = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeCategory] @Code = 'OPER', @Name = 'Operativas', @Description = 'Operativas', @RequiredComponentLevel = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeCategory] @Code = 'NOOPER', @Name = 'No Operativas', @Description = 'No Operativas', @RequiredComponentLevel = 0, @Active = True;
    -- End dump for table Interruption.CodeCategory

    -- Begin dump for table Interruption.Component
    -- End dump for table Interruption.Component

    -- Begin dump for table Interruption.Group
    UPDATE [Interruption].[Group] SET [Active] = 'False';
    EXEC [Interruption].[DoConfigDefineGroup] @Code = 'Entry', @Name = 'Entry', @Description = 'Entry', @Active = True;
    -- End dump for table Interruption.Group

    -- Begin dump for table Interruption.CodeIndu
    UPDATE [Interruption].[CodeIndu] SET [Active] = 'False';
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'ESTR', @Code = '0', @Name = '0-Pendiente', @Description = '0-Pendiente',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'ESTR', @Code = '1', @Name = '1-Feriado', @Description = '1-Feriado',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'ESTR', @Code = '2', @Name = '2-Huelga/asamblea', @Description = '2-Huelga/asamblea',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'ESTR', @Code = '3', @Name = '3-Descanso en turno', @Description = '3-Descanso en turno',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'ESTR', @Code = '4', @Name = '4-Turno no programado', @Description = '4-Turno no programado',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'ESTR', @Code = '5', @Name = '5-Suspensión', @Description = '5-Suspensión',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'ESTR', @Code = '6', @Name = '6-Mantenimiento Extraordinario', @Description = '6-Mantenimiento Extraordinario',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'ESTR', @Code = '7', @Name = '7-Vacaciones', @Description = '7-Vacaciones',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'PROG', @Code = '8', @Name = '8-Parada/arranque', @Description = '8-Parada/arranque',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'PROG', @Code = '9', @Name = '9-Reparación programada', @Description = '9-Reparación programada',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'PROG', @Code = '10', @Name = '10-Cambio de operación', @Description = '10-Cambio de operación',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'PROG', @Code = '11', @Name = '11-Cambio de orden', @Description = '11-Cambio de orden',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'PROG', @Code = '12', @Name = '12-Cambio de diámetro', @Description = '12-Cambio de diámetro',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'PROG', @Code = '13', @Name = '13-Cambio de espesor', @Description = '13-Cambio de espesor',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'PROG', @Code = '14', @Name = '14-Cambio de extremo', @Description = '14-Cambio de extremo',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'PROG', @Code = '15', @Name = '15-Cambio de acero', @Description = '15-Cambio de acero',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'PROG', @Code = '16', @Name = '16-Falta de EE/Gas', @Description = '16-Falta de EE/Gas',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'PROG', @Code = '17', @Name = '17-Falta de demanda', @Description = '17-Falta de demanda',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'PROG', @Code = '18', @Name = '18-Maquina crítica en by pass', @Description = '18-Maquina crítica en by pass',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'PROG', @Code = '19', @Name = '19-Condiciones climatológicas', @Description = '19-Condiciones climatológicas',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '21', @Name = '21-Falta de material', @Description = '21-Falta de material',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '22', @Name = '22-Problemas de calidad', @Description = '22-Problemas de calidad',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '23', @Name = '23-Falta de suministros', @Description = '23-Falta de suministros',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '24', @Name = '24-Tubo atorado/torcido', @Description = '24-Tubo atorado/torcid',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '25', @Name = '25-Recuperación en lineas', @Description = '25-Recuperación en lineas',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '26', @Name = '26-Cambio de herramientas debido a desgaste', @Description = '26-Cambio de herramientas debido a desgaste',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '27', @Name = '27-Cambio de herramientas debido a rotura', @Description = '27-Cambio de herramientas debido a rotura',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '28', @Name = '28-Ajuste de linea', @Description = '28-Ajuste de linea',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '29', @Name = '29-Problemas en equipos', @Description = '29-Problemas en equipos',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '30', @Name = '30-Error operativo', @Description = '30-Error operativo',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '31', @Name = '31-Muestreo', @Description = '31-Muestreo',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '32', @Name = '32-Falta de evacuación', @Description = '32-Falta de evacuación',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '33', @Name = '33-Falta de personal', @Description = '33-Falta de personal',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '34', @Name = '34-Desbalanceo de linea', @Description = '34-Desbalanceo de linea',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '35', @Name = '35-Contenedor de despuntes/chatarra no disponible', @Description = '35-Contenedor de despuntes/chatarra no disponible',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '36', @Name = '36-Limpieza de máquina', @Description = '36-Limpieza de máquina',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'OPER', @Code = '37', @Name = '37-Inspección/reparación de refractarios', @Description = '37-Inspección/reparación de refractarios',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'NOOPER', @Code = '51', @Name = '51-Falla mecánica/hidráulica', @Description = '51-Falla mecánica/hidráulica',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'NOOPER', @Code = '52', @Name = '52-Falla eléctrica/electrónica', @Description = '52-Falla eléctrica/electrónica',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'NOOPER', @Code = '53', @Name = '53-Servicios de hornos', @Description = '53-Servicios de hornos',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'NOOPER', @Code = '54', @Name = '54-Nivel 1', @Description = '54-Nivel 1',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'NOOPER', @Code = '55', @Name = '55-Nivel 2', @Description = '55-Nivel 2',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'NOOPER', @Code = '56', @Name = '56-IT', @Description = '56-IT',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'NOOPER', @Code = '57', @Name = '57-Mantenimiento de grúas/equipos de movimentación', @Description = '57-Mantenimiento de grúas/equipos de movimentación',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'NOOPER', @Code = '58', @Name = '58-Falta de servicios auxiliares', @Description = '58-Falta de servicios auxiliares',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'NOOPER', @Code = '59', @Name = '59-Falta de EE/Gas', @Description = '59-Falta de EE/Gas',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'NOOPER', @Code = '60', @Name = '60-NDT', @Description = '60-NDT',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'NOOPER', @Code = '61', @Name = '61-Error de diseño/montaje', @Description = '61-Error de diseño/montaje',  @Standard = 0, @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeIndu] @CodeCategoryCode = 'NOOPER', @Code = '62', @Name = '62-CNC/Robots/Tracking', @Description = '62-CNC/Robots/Tracking',  @Standard = 0, @Active = True;
    -- End dump for table Interruption.CodeIndu

    -- Begin dump for table Interruption.Code
    UPDATE [Interruption].[Code] SET [Active] = 'False';
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '0', @Code = '0', @Name = '0-Pendiente', @Description = '0-Pendiente', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '1', @Code = '1', @Name = '1-Feriado', @Description = '1-Feriado', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '2', @Code = '2', @Name = '2-Huelga/asamblea', @Description = '2-Huelga/asamblea', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '3', @Code = '3', @Name = '3-Descanso en turno', @Description = '3-Descanso en turno', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '4', @Code = '4', @Name = '4-Turno no programado', @Description = '4-Turno no programado', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '5', @Code = '5', @Name = '5-Suspensión', @Description = '5-Suspensión', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '6', @Code = '6', @Name = '6-Mantenimiento Extraordinario', @Description = '6-Mantenimiento Extraordinario', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '7', @Code = '7', @Name = '7-Vacaciones', @Description = '7-Vacaciones', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '8', @Code = '8', @Name = '8-Parada/arranque', @Description = '8-Parada/arranque', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '9', @Code = '9', @Name = '9-Reparación programada', @Description = '9-Reparación programada', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '10', @Code = '10', @Name = '10-Cambio de operación', @Description = '10-Cambio de operación', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '11', @Code = '11', @Name = '11-Cambio de orden', @Description = '11-Cambio de orden', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '12', @Code = '12', @Name = '12-Cambio de diámetro', @Description = '12-Cambio de diámetro', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '13', @Code = '13', @Name = '13-Cambio de espesor', @Description = '13-Cambio de espesor', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '14', @Code = '14', @Name = '14-Cambio de extremo', @Description = '14-Cambio de extremo', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '15', @Code = '15', @Name = '15-Cambio de acero', @Description = '15-Cambio de acero', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '16', @Code = '16', @Name = '16-Falta de EE/Gas', @Description = '16-Falta de EE/Gas', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '17', @Code = '17', @Name = '17-Falta de demanda', @Description = '17-Falta de demanda', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '18', @Code = '18', @Name = '18-Maquina crítica en by pass', @Description = '18-Maquina crítica en by pass', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '19', @Code = '19', @Name = '19-Condiciones climatológicas', @Description = '19-Condiciones climatológicas', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '21', @Code = '21', @Name = '21-Falta de material', @Description = '21-Falta de material', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '22', @Code = '22', @Name = '22-Problemas de calidad', @Description = '22-Problemas de calidad', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '23', @Code = '23', @Name = '23-Falta de suministros', @Description = '23-Falta de suministros', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '24', @Code = '24', @Name = '24-Tubo atorado/torcido', @Description = '24-Tubo atorado/torcid', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '25', @Code = '25', @Name = '25-Recuperación en lineas', @Description = '25-Recuperación en lineas', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '26', @Code = '26', @Name = '26-Cambio de herramientas debido a desgaste', @Description = '26-Cambio de herramientas debido a desgaste', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '27', @Code = '27', @Name = '27-Cambio de herramientas debido a rotura', @Description = '27-Cambio de herramientas debido a rotura', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '28', @Code = '28', @Name = '28-Ajuste de linea', @Description = '28-Ajuste de linea', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '29', @Code = '29', @Name = '29-Problemas en equipos', @Description = '29-Problemas en equipos', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '30', @Code = '30', @Name = '30-Error operativo', @Description = '30-Error operativo', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '31', @Code = '31', @Name = '31-Muestreo', @Description = '31-Muestreo', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '32', @Code = '32', @Name = '32-Falta de evacuación', @Description = '32-Falta de evacuación', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '33', @Code = '33', @Name = '33-Falta de personal', @Description = '33-Falta de personal', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '34', @Code = '34', @Name = '34-Desbalanceo de linea', @Description = '34-Desbalanceo de linea', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '35', @Code = '35', @Name = '35-Contenedor de despuntes/chatarra no disponible', @Description = '35-Contenedor de despuntes/chatarra no disponible', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '36', @Code = '36', @Name = '36-Limpieza de máquina', @Description = '36-Limpieza de máquina', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '37', @Code = '37', @Name = '37-Inspección/reparación de refractarios', @Description = '37-Inspección/reparación de refractarios', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '51', @Code = '51', @Name = '51-Falla mecánica/hidráulica', @Description = '51-Falla mecánica/hidráulica', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '52', @Code = '52', @Name = '52-Falla eléctrica/electrónica', @Description = '52-Falla eléctrica/electrónica', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '53', @Code = '53', @Name = '53-Servicios de hornos', @Description = '53-Servicios de hornos', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '54', @Code = '54', @Name = '54-Nivel 1', @Description = '54-Nivel 1', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '55', @Code = '55', @Name = '55-Nivel 2', @Description = '55-Nivel 2', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '56', @Code = '56', @Name = '56-IT', @Description = '56-IT', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '57', @Code = '57', @Name = '57-Mantenimiento de grúas/equipos de movimentación', @Description = '57-Mantenimiento de grúas/equipos de movimentación', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '58', @Code = '58', @Name = '58-Falta de servicios auxiliares', @Description = '58-Falta de servicios auxiliares', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '59', @Code = '59', @Name = '59-Falta de EE/Gas', @Description = '59-Falta de EE/Gas', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '60', @Code = '60', @Name = '60-NDT', @Description = '60-NDT', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '61', @Code = '61', @Name = '61-Error de diseño/montaje', @Description = '61-Error de diseño/montaje', @Active = True;
	EXEC [Interruption].[DoConfigDefineCode] @CodeInduCode = '62', @Code = '62', @Name = '62-CNC/Robots/Tracking', @Description = '62-CNC/Robots/Tracking', @Active = True;
    -- End dump for table Interruption.Code

    -- Begin dump for table Interruption.Machine
    UPDATE [Interruption].[Machine] SET [Active] = 'False';
    EXEC [Interruption].[DoConfigDefineMachine] @MachineCode = 'Entry', @GroupCode = 'Entry', @CriticalMachineMachineCode=NULL, @Active = True;
    -- End dump for table Interruption.Machine

    -- Begin dump for table Interruption.CodeComponent
    -- End dump for table Interruption.CodeComponent

    -- Begin dump for table Interruption.Stage
    UPDATE [Interruption].[Stage] SET [Active] = 'False';
    EXEC [Interruption].[DoConfigDefineStage] @StageCode = 'TT3', @CodeCode = '0', @Active = True;
    -- End dump for table Interruption.Stage

    -- Begin dump for table Interruption.CategoryMachine
    UPDATE [Interruption].[CategoryMachine] SET [Active] = 'False';
    EXEC [Interruption].[DoConfigDefineCategoryMachine] @CategoryCode = 'INTERRUPTION', @MachineMachineCode = 'Entry', @Threshold = 120, @IsPercentage = False, @Active = True;
    EXEC [Interruption].[DoConfigDefineCategoryMachine] @CategoryCode = 'MICRO', @MachineMachineCode = 'Entry', @Threshold = 10, @IsPercentage = False, @Active = True;
    -- End dump for table Interruption.CategoryMachine

    -- Begin dump for table Interruption.CodeMachine
    UPDATE [Interruption].[CodeMachine] SET [Active] = 'False';
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '0', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '1', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '2', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '3', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '4', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '5', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '6', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '7', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '8', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '9', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '10', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '11', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '12', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '13', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '14', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '15', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '16', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '17', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '18', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '19', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '21', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '22', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '23', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '24', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '25', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '26', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '27', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '28', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '29', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '30', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '31', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '32', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '33', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '34', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '35', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '36', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '37', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '51', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '52', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '53', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '54', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '55', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '56', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '57', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '58', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '59', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '60', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '61', @MachineMachineCode = 'Entry', @Active = True;
	EXEC [Interruption].[DoConfigDefineCodeMachine] @CodeCode = '62', @MachineMachineCode = 'Entry', @Active = True;
    -- End dump for table Interruption.CodeMachine

    -- Begin dump for table Interruption.ComponentMachine
    -- End dump for table Interruption.ComponentMachine

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
