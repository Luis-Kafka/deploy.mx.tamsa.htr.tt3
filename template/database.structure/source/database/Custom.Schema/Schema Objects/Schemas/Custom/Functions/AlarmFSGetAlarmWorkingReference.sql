CREATE FUNCTION [Custom].[AlarmFSGetAlarmWorkingReference]
(
    @IdAlarm INT,
    @Subindex INT,
    @Bit INT,
    @WorkingReference NVARCHAR(MAX)
)
RETURNS NVARCHAR(MAX)
AS
BEGIN
    
    RETURN ISNULL(@WorkingReference + '.DBX' + CONVERT(NVARCHAR, (@Subindex * 2) + (CASE WHEN @Bit < 8 THEN 0 ELSE 1 END)) +  '.' + CONVERT(NVARCHAR, @Bit % 8), '')

END
GO