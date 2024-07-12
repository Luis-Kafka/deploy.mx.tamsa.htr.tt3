CREATE TYPE [Custom].[TPresetSpecificationAttributeValue] AS TABLE (
    [idComponentSubType]   INT                     NULL,
    [ComponentSubTypeCode] [Common].[TCode]        NOT NULL,
    [idAttribute]          INT                     NULL,
    [AttributeCode]        [Common].[TDescription] NOT NULL,
    [SpecificationValue]   [Common].[TDescription] NULL);

