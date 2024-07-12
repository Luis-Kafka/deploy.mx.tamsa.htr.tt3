CREATE PROCEDURE [Custom].[TdaGetTagValues]
(
    @TagCodes [Tda].[TIdCodeFilter] READONLY
	, @BeginDateTime Common.TDatetime = NULL
	, @EndDateTime Common.TDatetime = NULL

	-- Dynamic filters added on [Tda].[GetDynamicFilters]
	, @OrderNumber INT = NULL
	, @HeatNumber INT = NULL
)
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT
		-- Required Fields:
		TH.idHistory, TH.idTag, TH.Code, TH.Name, TH.[Description], TH.idMachine
		, TH.TagType, TH.GroupType, TH.DataType, TH.Egu, TH.DisplayName
		, TH.CompressionMethod, TH.SaveFormat
		, TH.SampleCountToSend, TH.SampleCountToSave, TH.Audit
		, TH.idKeyHistory, TH.idTrackingPassHistory, TH.idTracking
		, TH.AcquisitionBeginDateTime, TH.AcquisitionEndDateTime, TH.SampleTime
		, TH.Value, TH.ValueX, TH.ValueY, TH.IsChunk
		, TH.UseTracking, TH.idZone, TH.Position, TH.GetProductIdUri, TH.IsBlob, TH.IsDerived
		, TH.ValueYPoint, TH.ValueXPoint
		
		-- Custom Fields:
		-- Put the columns with the suffix: ColumnNameDataGridTextColumn
		, CTH.*
	FROM Tda.VwTrendHistory TH
		LEFT JOIN [Custom].[VwTdaTrendHistory] CTH ON TH.idProductionHistory = CTH.idProductionHistory
	WHERE 
        ( 
            (@BeginDateTime IS NOT NULL AND @EndDateTime IS NULL AND (AcquisitionEndDateTime >= @BeginDateTime)) OR 
            (@BeginDateTime IS NULL AND @EndDateTime IS NOT NULL AND (AcquisitionBeginDateTime <= @EndDateTime)) OR
            (@BeginDateTime IS NOT NULL AND @EndDateTime IS NOT NULL AND (AcquisitionBeginDateTime BETWEEN @BeginDateTime AND @EndDateTime OR AcquisitionEndDateTime BETWEEN @BeginDateTime AND @EndDateTime)) OR
            (@BeginDateTime IS NOT NULL AND @EndDateTime IS NOT NULL AND (AcquisitionBeginDateTime <= @BeginDateTime AND @EndDateTime <= AcquisitionEndDateTime))
         )
	AND TH.Code IN (SELECT T.Code FROM @TagCodes T)
	AND (@OrderNumber IS NULL OR (CTH.OrderNumberDataGridTextColumn = CAST(@OrderNumber AS NVARCHAR(50))))
	AND (@HeatNumber IS NULL OR (CTH.HeatNumberDataGridTextColumn = CAST(@HeatNumber AS NVARCHAR(50))))

	ORDER BY TH.AcquisitionBeginDateTime
END;
