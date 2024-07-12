-- ======================================
-- Description:	Return Code from id
-- ======================================
create  FUNCTION [Custom].[InterruptionFSGetFolio]
(
  @idHistory INT
)
RETURNS Common.TCode
AS
BEGIN
	DECLARE @Code Common.TCode


	-- Get Custom Folio to insert into Interruption.History

	SELECT @Code = CONVERT(VARCHAR,idHistory)
	FROM Interruption.History
	WHERE idHistory  = @idHistory

	RETURN @Code
END