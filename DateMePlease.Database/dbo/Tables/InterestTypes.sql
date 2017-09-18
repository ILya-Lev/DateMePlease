CREATE TABLE [dbo].[InterestTypes] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (MAX) NULL,
    [Description] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.InterestTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

