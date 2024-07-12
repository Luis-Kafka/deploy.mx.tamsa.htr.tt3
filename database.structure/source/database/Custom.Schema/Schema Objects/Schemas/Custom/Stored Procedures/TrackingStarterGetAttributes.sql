

CREATE PROCEDURE [Custom].[TrackingStarterGetAttributes]
AS
BEGIN

	SET NOCOUNT ON;

	SELECT A1.*, T.Value
	FROM Tracking.VwAttribute A1
	LEFT JOIN
		(
			SELECT A2.idAttribute, AH.Value, ROW_NUMBER() OVER (PARTITION BY A2.idAttribute ORDER BY AH.Value) AS R
			FROM Tracking.VwAttribute A2
				LEFT JOIN Tracking.VwAttributeHistory AH ON A2.idAttribute = AH.idAttribute AND AH.Value IS NOT NULL
			GROUP BY A2.idAttribute, AH.Value
		) AS T ON A1.idAttribute = T.idAttribute
	WHERE T.R <= 5
	ORDER BY A1.idAttribute

END