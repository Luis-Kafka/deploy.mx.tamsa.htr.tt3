﻿CREATE TABLE [Custom].[TrackingHslColorHistory] (
    [idTrackingHslColorHistory] INT                  IDENTITY (1, 1) NOT NULL,
    [ProductNumber]             INT                  NOT NULL,
    [HeatNumber]                INT                  NOT NULL,
	[LotNumber]                 INT                  NOT NULL,
    [idTrackingHslColor]        INT                  NOT NULL,
    [InsDateTime]               [Common].[TDateTime] CONSTRAINT [DF_TrackingColorHistory_InsDateTime] DEFAULT (sysdatetimeoffset()) NOT NULL,
    [UpdDateTime]               [Common].[TDateTime] CONSTRAINT [DF_TrackingColorHistory_UpdDateTime] DEFAULT (sysdatetimeoffset()) NOT NULL,
    CONSTRAINT [PK_TrackingColorHistory] PRIMARY KEY CLUSTERED ([idTrackingHslColorHistory] ASC)
);


GO
--------------------------------------------------------------------------------
-- <auto-generated>
--     This trigger was generated by the DBA.
--     Changes to this script may cause incorrect behavior and will be lost if
--     the trigger is regenerated.
-- </auto-generated>
--------------------------------------------------------------------------------
CREATE TRIGGER [Custom].[OnUpdateTrackingHslColorHistory]
ON [Custom].[TrackingHslColorHistory]
AFTER UPDATE
NOT FOR REPLICATION
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @Now Common.TDateTime = SYSDATETIMEOFFSET()
	UPDATE [Custom].[TrackingHslColorHistory] SET UpdDateTime = @Now
	FROM Inserted I
	INNER JOIN [Custom].[TrackingHslColorHistory] T ON   T.idTrackingHslColorHistory = I.idTrackingHslColorHistory
END