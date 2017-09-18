CREATE TABLE [dbo].[Interests] (
    [Id]              INT IDENTITY (1, 1) NOT NULL,
    [InterestType_Id] INT NULL,
    [Profile_Id]      INT NULL,
    CONSTRAINT [PK_dbo.Interests] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.Interests_dbo.InterestTypes_InterestType_Id] FOREIGN KEY ([InterestType_Id]) REFERENCES [dbo].[InterestTypes] ([Id]),
    CONSTRAINT [FK_dbo.Interests_dbo.Profiles_Profile_Id] FOREIGN KEY ([Profile_Id]) REFERENCES [dbo].[Profiles] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_InterestType_Id]
    ON [dbo].[Interests]([InterestType_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Profile_Id]
    ON [dbo].[Interests]([Profile_Id] ASC);

