
CREATE PROCEDURE [Custom].[ProductionViewGetDynamicFilters]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		  NULL [StationCode]
		, NULL [FromDate]
		, NULL [ToDate]
		, NULL [OrderNumber]
		, NULL [HeatNumber]
		, NULL [SteelGrade]
		, NULL [SteelCode]
		, NULL [Diameter]
		, NULL [Thickness]	
		, NULL [ShiftDate]
		, NULL [ShiftNumber]
END