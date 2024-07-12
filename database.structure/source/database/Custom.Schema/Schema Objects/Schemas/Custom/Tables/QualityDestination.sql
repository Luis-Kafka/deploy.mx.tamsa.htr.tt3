CREATE TABLE [Custom].[QualityDestination] (
    [idDestination] INT                  NOT NULL,
    [SortOrder]     INT                  NOT NULL,
    [InsDateTime]   [Common].[TDateTime] CONSTRAINT [DF_QualityDestination_InsDateTime] DEFAULT (sysdatetimeoffset()) NOT NULL,
    [UpdDateTime]   [Common].[TDateTime] CONSTRAINT [DF_QualityDestination_UpdDateTime] DEFAULT (sysdatetimeoffset()) NOT NULL,
    CONSTRAINT [PK_Destination] PRIMARY KEY CLUSTERED ([idDestination] ASC),
    CONSTRAINT [FK_Custom_Quality_Destination] FOREIGN KEY ([idDestination]) REFERENCES [Quality].[Destination] ([idDestination]),
    CONSTRAINT [UK_Custom_Quality_idDestination] UNIQUE NONCLUSTERED ([idDestination] ASC)
);

