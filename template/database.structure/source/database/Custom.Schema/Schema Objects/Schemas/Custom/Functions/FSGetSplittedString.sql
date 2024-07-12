

CREATE FUNCTION [Custom].[FSGetSplittedString](@StringToSplit NVARCHAR(MAX), @SplitChar NVARCHAR, @SplitIndex INT)
RETURNS NVARCHAR(MAX) AS
BEGIN
	DECLARE @StringResult NVARCHAR(MAX) = ''
	DECLARE @I INT = 0
	
	WHILE CHARINDEX(@SplitChar,@StringToSplit,0) > 0 AND @I<@SplitIndex
	BEGIN
		DECLARE @token NVARCHAR(MAX)
		SET @token = SUBSTRING(@StringToSplit, 0, CHARINDEX(@SplitChar,@StringToSplit,0))
		SET @StringToSplit = SUBSTRING(@StringToSplit, CHARINDEX(@SplitChar,@StringToSplit,0)+1, LEN(@StringToSplit))
		
		IF (@I=@SplitIndex-1) 
		BEGIN
			SET @StringResult = @token
		END
		
		SET @I= @I+1
	END
	IF (@StringResult = '')
	BEGIN
		SET @StringResult = @StringToSplit
	END

	RETURN @StringResult;

END