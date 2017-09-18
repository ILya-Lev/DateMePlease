CREATE TABLE [dbo].[Members] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [Username]  NVARCHAR (MAX) NULL,
    [LastLogin] DATETIME       NOT NULL,
    [Created]   DATETIME       NOT NULL,
    CONSTRAINT [PK_dbo.Members] PRIMARY KEY CLUSTERED ([Id] ASC)
);

