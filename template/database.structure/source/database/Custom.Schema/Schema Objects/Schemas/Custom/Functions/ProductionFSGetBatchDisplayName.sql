
CREATE FUNCTION [Custom].[ProductionFSGetBatchDisplayName]
(
	@IdBatch INT
)
RETURNS Common.TDescription
AS
BEGIN
	--------------------------------------------------------------------------------------
	--  This function MUST BE CUSTOMIZED for each implementation of production manager
	--
	--  Description:
	--	Gets a description for a batch that should include local concepts related to the batch
	--  like order number, heat number, cycle number, etc. These concepts are to be different 
	--  according to the particular process being automated
	--------------------------------------------------------------------------------------
	
	DECLARE @IdSpecification INT = NULL
	DECLARE @IdOrderHistory INT = NULL
	DECLARE @IdHeatHistory INT  = NULL
	DECLARE @OrderNumber INT = NULL
	DECLARE @HeatNumber INT  = NULL

	-- Get IdSpecification
	SELECT 
		@IdSpecification = idSpecification
	FROM Production.BatchHistory
	WHERE idBatchHistory = @IdBatch

	
	-- *************************************************
	-- TODO: FIX USING NEW SPECIFICATION SCHEMA
	--  WHY: UPDATE TO BAY CITY SPECIFICATION SCHEMA
	-- WHEN: 10/22/2015
	--  WHO: VILLANUEVA
	-- *************************************************

	SET @HeatNumber = 123
	SET @OrderNumber = 123

	-- Get IdOrderHistory and IdHeatHistory
	--SELECT 
	--	@IdOrderHistory = IdOrderHistory, 
	--	@IdHeatHistory = IdHeatHistory
	--FROM Specification.Specification
	--WHERE idSpecification = @IdSpecification

	---- Get HeatNumber
	--SELECT @HeatNumber = HeatNumber
	--FROM Specification.HeatHistory
	--WHERE idHeatHistory = @idHeatHistory
	
	---- Get OrderNumber
	--SELECT @OrderNumber = OrderNumber
	--FROM Specification.OrderHistory
	--WHERE idOrderHistory = @IdOrderHistory

	RETURN N'Order:' + CAST(ISNULL(@OrderNumber,'') AS NVARCHAR(10)) + N', Heat:' + CAST(ISNULL(@HeatNumber,'') AS NVARCHAR(10))
END