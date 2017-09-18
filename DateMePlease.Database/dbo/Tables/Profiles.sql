CREATE TABLE [dbo].[Profiles] (
    [Id]              INT            NOT NULL,
    [LookingFor]      NVARCHAR (MAX) NULL,
    [Introduction]    NVARCHAR (MAX) NULL,
    [Pitch]           NVARCHAR (MAX) NULL,
    [Demographics_Id] INT            NULL,
    CONSTRAINT [PK_dbo.Profiles] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.Profiles_dbo.Demographics_Demographics_Id] FOREIGN KEY ([Demographics_Id]) REFERENCES [dbo].[Demographics] ([Id]),
    CONSTRAINT [FK_dbo.Profiles_dbo.Members_Id] FOREIGN KEY ([Id]) REFERENCES [dbo].[Members] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Id]
    ON [dbo].[Profiles]([Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Demographics_Id]
    ON [dbo].[Profiles]([Demographics_Id] ASC);

