CREATE FUNCTION [Custom].[PresetFSGetCriterionSQLExpression]
(
	@specificationValue NVARCHAR(MAX),
	@criterionValue NVARCHAR(MAX)
)
RETURNS NVARCHAR(MAX)
AS
BEGIN
	DECLARE @criterionSQL NVARCHAR(MAX)

	-- Build SQL relational expression with specificationValue and criterionValue
	SELECT @criterionSQL =
		CASE WHEN ISNUMERIC(@specificationValue) = 1
        THEN
            CASE WHEN ISNUMERIC(@criterionValue) = 1			THEN CONVERT(NVARCHAR(MAX), @specificationValue + ' = ' + @criterionValue)
                 WHEN @criterionValue LIKE '%BETWEEN%'			THEN CONVERT(NVARCHAR(MAX), @specificationValue + ' ' + @criterionValue)
                 WHEN (@criterionValue LIKE '%>%') OR 
					  (@criterionValue LIKE '%<%') OR 
					  (@criterionValue LIKE '%=%') OR 
					  (@criterionValue LIKE '%>=%') OR 
					  (@criterionValue LIKE '%<=%') OR 
					  (@criterionValue LIKE '%!=%')				THEN CONVERT(NVARCHAR(MAX), @specificationValue + REPLACE(@criterionValue, '!=', ' <> '))
                 WHEN ISNUMERIC(@criterionValue) <> 1			THEN CONVERT(NVARCHAR(MAX), '''' + @specificationValue + ''' IN ('''+ REPLACE(@criterionValue, ',', ''',''') + ''')')
			END
        ELSE
			CASE WHEN @criterionValue LIKE '%NOT CONTAINS%'		THEN CONVERT(NVARCHAR(MAX), '''' + @specificationValue + REPLACE(@criterionValue, 'NOT CONTAINS',	' NOT LIKE ') + '''%' + @criterionValue + '%''')
                 WHEN @criterionValue LIKE '%CONTAINS%'			THEN CONVERT(NVARCHAR(MAX), '''' + @specificationValue + REPLACE(@criterionValue, 'CONTAINS',		' LIKE ') + '''%' + @criterionValue + '%''')
                 WHEN @criterionValue LIKE '%NOT EQUALS%'		THEN CONVERT(NVARCHAR(MAX), '''' + @specificationValue + REPLACE(@criterionValue, 'NOT EQUALS',		' <> ') + '''')
				 WHEN @criterionValue LIKE '%EQUALS%'			THEN CONVERT(NVARCHAR(MAX), '''' + @specificationValue + REPLACE(@criterionValue, 'EQUALS',			' = ') + '''')
                 WHEN @criterionValue LIKE '%NOT STARTS WITH%'	THEN CONVERT(NVARCHAR(MAX), '''' + @specificationValue + REPLACE(@criterionValue, 'NOT STARTS WITH', ' NOT LIKE ') + '%''')
                 WHEN @criterionValue LIKE '%NOT ENDS WITH%'	THEN CONVERT(NVARCHAR(MAX), '''' + @specificationValue + REPLACE(@criterionValue, 'NOT ENDS WITH',	' NOT LIKE ''%') + '''')
                 WHEN @criterionValue LIKE '%STARTS WITH%'		THEN CONVERT(NVARCHAR(MAX), '''' + @specificationValue + REPLACE(@criterionValue, 'STARTS WITH',	' LIKE ') + '%''')
                 WHEN @criterionValue LIKE '%ENDS WITH%'		THEN CONVERT(NVARCHAR(MAX), '''' + @specificationValue + REPLACE(@criterionValue, 'ENDS WITH',		' LIKE ''%') + '''')
                 ELSE											     CONVERT(NVARCHAR(MAX), '''' + @specificationValue + ''' IN ('''+ REPLACE(@criterionValue, ',', ''',''') + ''')')
            END
		END

	RETURN @criterionSQL
END