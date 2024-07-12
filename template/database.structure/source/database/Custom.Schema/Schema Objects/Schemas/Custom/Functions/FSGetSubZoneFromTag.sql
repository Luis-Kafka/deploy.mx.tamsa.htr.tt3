
CREATE FUNCTION Custom.FSGetSubZoneFromTag
(
	@Tag Common.TCode
)
RETURNS Common.TCode
AS
BEGIN

	DECLARE @Result Common.TCode

	SET @Result = SUBSTRING(@Tag, CHARINDEX('+', @Tag), CASE WHEN CHARINDEX('-', @Tag) = 0 THEN CHARINDEX('.', @Tag) ELSE CHARINDEX('-', @Tag) END - CHARINDEX('+', @Tag))

	SET @Result = CASE @Result
		WHEN '+WBAF' THEN '+A2'
		WHEN '+WBTF' THEN '+B2'
		WHEN '+QH' THEN '+A3'
		ELSE @Result
	END
	
	RETURN @Result

END