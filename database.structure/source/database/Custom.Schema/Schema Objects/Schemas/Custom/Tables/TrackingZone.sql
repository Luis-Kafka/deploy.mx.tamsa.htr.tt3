CREATE TABLE [Custom].[TrackingZone] (
    [idZone]               INT                  NOT NULL,
    [DenyItemStatusChange] BIT                  NOT NULL,
    [InsDateTime]          [Common].[TDateTime] CONSTRAINT [DF_TrackingZone_InsDateTime] DEFAULT (sysdatetimeoffset()) NOT NULL,
    [UpdDateTime]          [Common].[TDateTime] CONSTRAINT [DF_TrackingZone_UpdDateTime] DEFAULT (sysdatetimeoffset()) NOT NULL,
    CONSTRAINT [PK_TrackingZone] PRIMARY KEY CLUSTERED ([idZone] ASC),
    CONSTRAINT [FK_TrackingZone_Zone] FOREIGN KEY ([idZone]) REFERENCES [Tracking].[Zone] ([idZone]),
    CONSTRAINT [UK_Custom_TrackingZone_idZone] UNIQUE NONCLUSTERED ([idZone] ASC)
);

