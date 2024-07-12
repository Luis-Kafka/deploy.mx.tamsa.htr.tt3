CREATE FUNCTION [Custom].[FSGetCancelTrackingPassMissingCount]
(
       @idKeyHistory              INT,
       @idBatch                     INT,
       @idMachine                INT,
       @idTracking               INT
)
RETURNS BIT AS
BEGIN
       RETURN 0;
END
