CREATE TABLE [Custom].[QualityRequiredApplication] (
    [idQualityRequiredApplication] INT                  IDENTITY (1, 1) NOT NULL,
    [idMachine]                    INT                  NOT NULL,
    [idApplication]                INT                  NOT NULL,
    [Active]                       [Common].[TActive]   CONSTRAINT [DF_QualityRequiredApplication_Active] DEFAULT ((1)) NOT NULL,
    [InsDateTime]                  [Common].[TDateTime] CONSTRAINT [DF_QualityRequiredApplication_InsDateTime] DEFAULT (sysdatetimeoffset()) NOT NULL,
    [UpdDateTime]                  [Common].[TDateTime] CONSTRAINT [DF_QualityRequiredApplication_UpdDateTime] DEFAULT (sysdatetimeoffset()) NOT NULL,
    CONSTRAINT [PK_QualityRequiredApplication] PRIMARY KEY CLUSTERED ([idQualityRequiredApplication] ASC),
    CONSTRAINT [FK_QualityRequiredApplication_Application] FOREIGN KEY ([idApplication]) REFERENCES [Common].[Application] ([idApplication]),
    CONSTRAINT [FK_QualityRequiredApplication_Machine] FOREIGN KEY ([idMachine]) REFERENCES [Common].[Machine] ([idMachine]),
    CONSTRAINT [UK_Custom_QualityRequiredApplication_idMachine_idApplication] UNIQUE NONCLUSTERED ([idMachine] ASC, [idApplication] ASC)
);

