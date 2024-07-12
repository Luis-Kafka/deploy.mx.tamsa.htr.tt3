CREATE VIEW [Custom].[VwTdaTrendHistory]
AS
	SELECT
		  BH.idBatchHistory AS idProductionHistory

		-- Custom Fields:
		-- Put the columns with the suffix: ColumnNameDataGridTextColumn
		, CO.Code AS OrderNumberDataGridTextColumn --Dynamic column.
		, CH.Code AS HeatNumberDataGridTextColumn  --Dynamic column.
	
	FROM Common.BatchHistory BH
	CROSS JOIN (SELECT idComponentSubType FROM Specification.ComponentSubType WHERE Code = 'BC_WO_COMMON') SSO
	CROSS JOIN (SELECT idComponentSubType FROM Specification.ComponentSubType WHERE Code = 'BC_HEAT') SSH
		LEFT JOIN Specification.SpecificationComponent SCO ON SCO.idComponentSubType = SSO.idComponentSubType AND BH.idSpecification = SCO.idSpecification
		LEFT JOIN Specification.Component CO ON SCO.idComponent = CO.idComponent
		LEFT JOIN Specification.SpecificationComponent SCH ON SCH.idComponentSubType = SSH.idComponentSubType AND BH.idSpecification = SCH.idSpecification
		LEFT JOIN Specification.Component CH ON SCH.idComponent = CH.idComponent