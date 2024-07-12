CREATE PROCEDURE [Custom].[TrackingGetHslColorAttribute]
(
	@idTrackingParent INT,
	@idTrackingType INT,
	@handshakeCode Common.TCode,
	@idProductionHistory INT,
	@traceabilityNumber INT,
	@traceabilitySubNumber INT,
	@traceabilityCode NVARCHAR(MAX),
	@traceabilitySubCode NVARCHAR(MAX),
	@idItemStatus INT,
	@idCreationType INT,
	@isInverted BIT,
	@customRD01 INT,
	@customRD02 INT,
	@customRD03 INT,
	@customRD04 INT,
	@customRD05 INT,
	@customRD06 INT,
	@idTracking INT
)
AS
BEGIN
    SET NOCOUNT ON;

	DECLARE @idSpecification INT
	DECLARE @ProductNumber NVARCHAR(50)
	DECLARE @HeatNumber NVARCHAR(50)
	DECLARE @LotNumber NVARCHAR(50)
	DECLARE @SortOrder INT
	DECLARE @ColorValue INT
	DECLARE @LastProductNumber INT
	DECLARE @LastHeatNumber INT
	DECLARE @LastLotNumber INT
	DECLARE @LastSortOrder INT
	DECLARE @NextSortOrder INT
	DECLARE @idTrackingHslColor INT

	--Se obtiene el idSpecification
	SELECT @idSpecification = idSpecification
	FROM Production.BatchHistory
	WHERE idBatchHistory = @idProductionHistory

	--Se obtiene el Product
	SELECT @ProductNumber = SCAV.Value
	FROM Specification.SpecificationComponent SSC
		INNER JOIN Specification.ComponentAttributeValue SCAV ON SCAV.idComponent = SSC.idComponent
		INNER JOIN Specification.Attribute SA ON SA.idAttribute = SCAV.idAttribute
	WHERE SSC.idSpecification = @idSpecification
		AND SA.Code = 'TargetProduct'

	--Se obtiene la Heat
	SELECT @HeatNumber = SCAV.Value
	FROM Specification.SpecificationComponent SSC
		INNER JOIN Specification.ComponentAttributeValue SCAV ON SCAV.idComponent = SSC.idComponent
		INNER JOIN Specification.Attribute SA ON SA.idAttribute = SCAV.idAttribute
	WHERE SSC.idSpecification = @idSpecification
		AND SA.Code = 'Heat'

	--Se obtiene el Lot
	SELECT @LotNumber = SCAV.Value
	FROM Specification.SpecificationComponent SSC
		INNER JOIN Specification.ComponentAttributeValue SCAV ON SCAV.idComponent = SSC.idComponent
		INNER JOIN Specification.Attribute SA ON SA.idAttribute = SCAV.idAttribute
	WHERE SSC.idSpecification = @idSpecification
		AND SA.Code = 'Lot'

	--Se verifica que tenga Product, Heat y Lot
	IF @ProductNumber IS NOT NULL AND @HeatNumber IS NOT NULL AND @LotNumber IS NOT NULL
	BEGIN
		--Se consulta si ya se selecciono color para el Product, Heat y Lot
		SELECT @idTrackingHslColor = idTrackingHslColor
		FROM Custom.TrackingHslColorHistory
		WHERE ProductNumber = @ProductNumber AND HeatNumber = @HeatNumber AND LotNumber = @LotNumber

		IF(@idTrackingHslColor IS NULL)
		BEGIN
			--Se consulta el último Product, Heat y Lot insertados, y su número de Color utilizado
			SELECT TOP 1 @LastProductNumber = THSLCH.ProductNumber
						, @LastHeatNumber = THSLCH.HeatNumber
						, @LastLotNumber = THSLCH.LotNumber
						, @LastSortOrder = THSLC.SortOrder						
			FROM
				Custom.TrackingHslColorHistory THSLCH
				INNER JOIN Custom.TrackingHslColor THSLC ON THSLCH.idTrackingHslColor = THSLC.idTrackingHslColor
			ORDER BY THSLCH.InsDateTime DESC

			--Se toma siguiente número de color
			SELECT TOP 1 @NextSortOrder = SortOrder, @idTrackingHslColor = idTrackingHslColor
			FROM Custom.TrackingHslColor
			WHERE SortOrder > @LastSortOrder
			ORDER BY SortOrder ASC

			IF (@NextSortOrder IS NULL)
			BEGIN
				SELECT TOP 1 @NextSortOrder = SortOrder, @idTrackingHslColor = idTrackingHslColor 
				FROM Custom.TrackingHslColor
				ORDER BY SortOrder ASC
			END
			
			--Se guarda nuevo registro en historico
			INSERT INTO Custom.TrackingHslColorHistory (ProductNumber, HeatNumber, LotNumber, idTrackingHslColor)
			VALUES (@ProductNumber, @HeatNumber, @LotNumber, @idTrackingHslColor)
		END
		
		--Se calcula el valor del Color
		SELECT @ColorValue = CONVERT(INT, (CASE WHEN L > 120 THEN CONVERT(varbinary(1), 0) ELSE CONVERT(varbinary(1), 1)  END) + CONVERT(varbinary(1), H) + CONVERT(varbinary(1), S) + CONVERT(varbinary(1), L))
		FROM Custom.TrackingHslColor
		WHERE idTrackingHslColor = @idTrackingHslColor
	END
	ELSE
	BEGIN
		--Si no tiene Workorder, Heat o Lot, se asigna un valor por default NEGRO
		SELECT @ColorValue = CONVERT(INT, CONVERT(varbinary(1), 1) + CONVERT(varbinary(1), 0) + CONVERT(varbinary(1), 0) + CONVERT(varbinary(1), 0))
	END

	SELECT 'TrackingColor' As AttributeCode, @ColorValue AS AttributeValue

END
