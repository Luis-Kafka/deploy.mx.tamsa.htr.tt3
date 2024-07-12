CREATE PROCEDURE [Custom].[ScriptingSendMessages] (
	@StationCode Common.TCode,
	@idTracking INT
) AS
BEGIN
	DECLARE @MessageText NVARCHAR(MAX) = ''
	DECLARE @MessageCode Common.TCode = ''

	-----------------------------------------------
	--PH_BYPASS			 -> el tubo ya tiene pruena hidráulica
	--UT_BYPASS			 -> el tubo ya tiene ut pórtico
	--PH_TUBONOEXPANDIDO -> el tubo no está expandido.

	--IF(@StationCode = 'PH')
	--BEGIN

		--PRINT '(@StationCode = "PH")'

		---- REVISA SI EL TUBO YA TIENE UNA PRUEBA REALIZADA
		--IF( EXISTS (SELECT * 
		--			FROM Production.TrackingPassHistory tph
		--			JOIN Tda.History h ON h.idTrackingPassHistory = tph.idTrackingPassHistory
		--			JOIN Hydrotest.HeadTestHistory hth ON hth.idTrackingPassHistory = tph.idTrackingPassHistory
		--			WHERE idTag = @idTagPH
		--			  AND tph.idTracking = @idTracking)
		--)
		--BEGIN
		--	SET @MessageText = 'EL TUBO {0} YA TIENE LA PRUEBA REALIZADA'
		--	SET @MessageCode = 'PH_BYPASS'
		--END
	--END
	
	--IF(@StationCode = 'UT_PÓRTICO')
	--BEGIN
	
		--PRINT 'IF(@StationCode = "UT_PÓRTICO")'

		---- ESTO SIGNIFICA QUE EL TUBO TIENE UN TEST ASOCIADO Y NO ES WARNED
		--IF(EXISTS(SELECT ih.* 
		--		  FROM Ndt.VwInspectionHistory ih
		--		  JOIN Production.TrackingPassHistory tph ON tph.idTrackingPassHistory = ih.idTrackingPassHistory 
		--		  WHERE tph.idTracking = @idTracking))
	
		--BEGIN
		--	print  'EL TUBO {0} YA FUE INSPECCIONADO POR UT_PORTICO'
		--	SET @MessageText = 'EL TUBO {0} YA FUE INSPECCIONADO POR UT_PORTICO '
		--	SET @MessageCode = 'UT_BYPASS'
		--END	
	--END

	SELECT @MessageCode AS MessageCode,
	       @MessageText AS MessageText
END
