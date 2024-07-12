CREATE PROCEDURE [Custom].[ProductionGetMachineFutureBatch]
	@IdPreviousMachine INT = NULL,						-- Id of previous machine
	@IdMachine INT,										-- Id of current machine
	@IsEntrance BIT,									-- Flag indicating whether machine is an entrance for the line
	@IdActiveKey INT = NULL,							-- Id of active key of current machine
	@IdActiveBatch INT = NULL,							-- Id of active batch of current machine
	@ActiveKeyBeginDateTime Common.TDatetime = NULL,	-- BeginDateTime of active key of current machine
	@IdFutureBatch INT = NULL OUTPUT					-- Id of future batch for current machine
AS
BEGIN
    SET NOCOUNT ON;

	SET @IdFutureBatch = NULL

	DECLARE @MachineCode Common.TCode, @MachineStartZoneCode Common.TCode, @MachineStartZoneOrder INT, @MachineStartZonePosition INT

	DECLARE @LineZones TABLE(ZoneCode Common.TCode PRIMARY KEY, ZoneOrder INT)

	DECLARE @MachinePreviousZones TABLE(MachineCode Common.TCode PRIMARY KEY, StartZoneCode Common.TCode, StartPosition INT)

	DECLARE @trackingsInTheLine TABLE (ordinal INT IDENTITY(1, 1), idTracking INT, idProduct INT, idZone INT, ZoneCode NVARCHAR(50), SortOrder INT)
	
	BEGIN -- Get all zones of the line in order of material flow
		
		INSERT @LineZones (ZoneCode, ZoneOrder)
		SELECT 'VR01',			1 UNION
		SELECT 'BAN01',			2 UNION
		SELECT 'VR02',			3 UNION
		SELECT 'VR03',			4 --UNION
		--SELECT 'SAL01',			5 UNION
		--SELECT 'DES01',			6 
		
		
		-- Zones missing to be considered in the search
			--'SAL01', 
			--'DES01', 
	END
	
	BEGIN -- Get all machines of the line listed with its zone and position of start
		INSERT @MachinePreviousZones (MachineCode, StartZoneCode, StartPosition)
		SELECT 'ENTRADA',		'VR01',		0 UNION
		SELECT 'AUSTENIZADO',		'VR02',		0 UNION
		SELECT 'TEMPLADO',		'VR02',		0	

		-- Machines missing to be considered in the search
		
	END

	BEGIN -- Get target machine start zone and position
		SELECT @MachineCode = Code
		FROM Common.Machine
		WHERE idMachine = @IdMachine
			
		SELECT 
			@MachineStartZoneCode = LZ.ZoneCode, 
			@MachineStartZoneOrder = LZ.ZoneOrder, 
			@MachineStartZonePosition = MZ.StartPosition
		FROM @MachinePreviousZones MZ
		JOIN @LineZones LZ ON MZ.StartZoneCode = LZ.ZoneCode
		WHERE MZ.MachineCode = @MachineCode

		-- If machine starts at position zero, then start searching for pipes at previous zone
		IF @MachineStartZonePosition = 0
		BEGIN
			SET @MachineStartZoneOrder = @MachineStartZoneOrder - 1
			SET @MachineStartZonePosition = NULL
		END
	END

	BEGIN -- Search for trackings currently in the line at the zone or after the zone where target machine starts
		INSERT @trackingsInTheLine (idTracking, idProduct, idZone, ZoneCode, SortOrder)
		SELECT TT.idTracking, TT.idProductionHistory, TL.idZone, TZ.Code, TL.SortOrder
		FROM Tracking.TrackingLocation TL
		JOIN Tracking.[Zone] TZ ON TL.idZone = TZ.idZone
		JOIN @LineZones ZO ON TZ.Code = ZO.ZoneCode
		JOIN Tracking.Tracking TT ON TL.idTracking = TT.idTracking
		WHERE ZO.ZoneOrder <= @MachineStartZoneOrder
		ORDER BY ZO.ZoneOrder DESC, TL.SortOrder DESC
	END

	BEGIN -- Search for first pipe with different product

		SET @IdFutureBatch = NULL

		DECLARE @currentIdTracking INT
		DECLARE @currentIdProduct INT
		DECLARE @currentZoneCode Common.TCode
		DECLARE @currentZonePosition INT

		DECLARE @areThereTrackings BIT = 0

		-- Scan through pipes to search for first pipe after the one that will move into cooling bed
		DECLARE @maxOrdinal INT = (SELECT COUNT(*) FROM @trackingsInTheLine)
		DECLARE @currentOrdinal INT = 1
		WHILE @currentOrdinal <= @maxOrdinal
		BEGIN
			SELECT 
				@currentIdTracking = idTracking, 
				@currentIdProduct = idProduct,
				@currentZoneCode = ZoneCode,
				@currentZonePosition = SortOrder
			FROM @trackingsInTheLine
			WHERE ordinal = @currentOrdinal

			IF (@currentZoneCode = @MachineStartZoneCode AND @currentZonePosition <= @MachineStartZonePosition) OR (@currentZoneCode <> @MachineStartZoneCode)
			BEGIN
				-- If there is no active product or current pipe is from DIFFERENT product, set current pipe product as future product
				IF @IdActiveBatch IS NULL OR @currentIdProduct <> @IdActiveBatch
				BEGIN
					--SET @IdFutureBatch = @currentIdProduct
					SET @IdFutureBatch = null
					BREAK
				END
			END

			SET @currentOrdinal = @currentOrdinal + 1
		END
	END
		
	BEGIN -- If there are no pipes to determine the future product, then look at first new batch available
		IF @IdFutureBatch IS NULL
		BEGIN
				
			--DECLARE @ActiveBatchDateTime Common.TDateTime = NULL
			--IF @IdActiveBatch IS NOT NULL
			--BEGIN
			--	SELECT @ActiveBatchDateTime = InsDateTime 
			--	FROM Common.BatchHistory 
			--	WHERE idBatchHistory = @IdActiveBatch
			--END

			--SELECT TOP 1 @IdFutureBatch = idBatchHistory
			--FROM Common.BatchHistory 
			--WHERE InsDateTime > @ActiveBatchDateTime
			--ORDER BY InsDateTime DESC

			SET @IdFutureBatch = null
				
		END
	END
	
END