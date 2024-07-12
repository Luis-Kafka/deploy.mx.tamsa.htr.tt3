--@traceabilityNumberOut, @traceabilitySubNumberOut, @traceabilityCodeOut and @traceabilitySubCodeOut should be set.
CREATE PROCEDURE [Custom].[TrackingGetTraceabilityData]
(
	@idTrackingParent INT,
	@idTrackingType INT,
	@handshakeCode Common.TCode,
	@idProductionHistory INT,
	@traceabilityNumber INT,
	@traceabilitySubNumber INT,
	@traceabilityCode NVARCHAR(MAX) = NULL,
	@traceabilitySubCode NVARCHAR(MAX) = NULL,
	@idItemStatus INT,
	@idCreationType INT,
	@isInverted BIT,
	@customRD01 INT,
	@customRD02 INT,
	@customRD03 INT,
	@customRD04 INT,
	@customRD05 INT,
	@customRD06 INT,
	@traceabilityNumberOut INT OUTPUT,
	@traceabilitySubNumberOut INT OUTPUT,
	@traceabilityCodeOut NVARCHAR(MAX) OUTPUT,
	@traceabilitySubCodeOut NVARCHAR(MAX) OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON;

	SET @traceabilityNumberOut = isnull(@traceabilityNumber,0); 
	SET @traceabilitySubNumberOut = isnull(@traceabilitySubNumber,0); 
	SET @traceabilityCodeOut = isnull(@traceabilityCode, ''); 
	SET @traceabilitySubCode = isnull(@traceabilitySubCode,'');

	-- AutoIdentification is received through custom parameters from Entry manager
	--		When AutoIdentification = 1, createTracking is supposed to assign the given traceabilityCode
	--		When AutoIdentification = 0, createTracking is NOT supposed to assign a traceabilityCode
	/*DECLARE @AutoIdentification BIT = CAST(@customRD05 AS BIT)
	IF @AutoIdentification = 1 AND (@customRD01 <> 0 OR @customRD02 <> 0)
	BEGIN
		-- ItemId is received through custom parameters from Entry manager
		-- Getting traceabilityCode from Entry item
		DECLARE @idEntryItem INT
		EXEC [Common].[ConvertInt16ToInt32]	@customRD01, @customRD02, @Int32 = @idEntryItem OUTPUT
		SELECT @traceabilityCodeOut = [TraceabilityCode]
		FROM [Entry].[Item]
		WHERE [idItem] = @idEntryItem
	END
	ELSE
	BEGIN
		SET @traceabilityCodeOut = @traceabilityCode;
	END

	SET @traceabilitySubCodeOut = @traceabilitySubCode;
	*/
END;