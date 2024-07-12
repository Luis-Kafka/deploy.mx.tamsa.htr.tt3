CREATE TABLE [Custom].[QualityTrackingPassStatus] (
    [idQualityTrackingPassStatus] INT                  IDENTITY (1, 1) NOT NULL,
    [idTrackingPassHistory]       INT                  NOT NULL,
    [idApplication]               INT                  NOT NULL,
    [idItemStatus]                INT                  NOT NULL,
    [InsDateTime]                 [Common].[TDateTime] CONSTRAINT [DF_QualityTrackingPassStatus_InsDateTime] DEFAULT (sysdatetimeoffset()) NOT NULL,
    [UpdDateTime]                 [Common].[TDateTime] CONSTRAINT [DF_QualityTrackingPassStatus_UpdDateTime] DEFAULT (sysdatetimeoffset()) NOT NULL,
    CONSTRAINT [PK_QualityTrackingPassStatus] PRIMARY KEY CLUSTERED ([idQualityTrackingPassStatus] ASC),
    CONSTRAINT [FK_QualityTrackingPassStatus_Application] FOREIGN KEY ([idApplication]) REFERENCES [Common].[Application] ([idApplication]),
    CONSTRAINT [FK_QualityTrackingPassStatus_ItemStatus] FOREIGN KEY ([idItemStatus]) REFERENCES [Tracking].[ItemStatus] ([idItemStatus]),
    CONSTRAINT [FK_QualityTrackingPassStatus_TrackingPassHistory] FOREIGN KEY ([idTrackingPassHistory]) REFERENCES [Production].[TrackingPassHistory] ([idTrackingPassHistory]),
    CONSTRAINT [UK_Custom_QualityTrackingPassStatus_idTrackingPassHistory_idApplication] UNIQUE NONCLUSTERED ([idTrackingPassHistory] ASC, [idApplication] ASC)
);

