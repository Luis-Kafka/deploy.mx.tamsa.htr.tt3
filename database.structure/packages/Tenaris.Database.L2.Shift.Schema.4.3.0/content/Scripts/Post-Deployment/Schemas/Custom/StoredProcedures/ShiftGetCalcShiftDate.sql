CREATE PROCEDURE [Custom].[ShiftGetCalcShiftDate]
  @idShift INT	
, @idArea INT
, @ShiftDate DATE
, @ShiftNumber TINYINT
, @BeginTime TIME(7)
, @EndTime TIME(7)
, @CustomShiftDate DATE OUTPUT
AS
BEGIN
	SET NOCOUNT OFF;
	--- WORKS AS NOW
	SET @CustomShiftDate = NULL
	------------------------------------------------------------------------------------------------------
	--- CUSTOM LOGIC TO UPDATE SHIFT DATE WITH DAY BEFORE BECAUSE LAST SHIFT BEGINS 3 AM AND ENDS  7AM ---
	------------------------------------------------------------------------------------------------------

	--DECLARE @idCode37 INT = [Shift].FSGetShiftId('Shift3-7')

	--IF(@idShift = @idCode37)
	--BEGIN
	--	SET @CustomShiftDate = DATEADD(DAY, -1, @ShiftDate)
	--	PRINT '@CustomShiftDate = ' + CAST(@CustomShiftDate AS NVarchar(100))
	--END

END