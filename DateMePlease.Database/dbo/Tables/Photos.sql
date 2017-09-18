CREATE TABLE [dbo].[Photos] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Uri]         NVARCHAR (MAX) NULL,
    [Description] NVARCHAR (MAX) NULL,
    [DateAdded]   DATETIME       NOT NULL,
    [IsMain]      BIT            NOT NULL,
    [Profile_Id]  INT            NULL,
    CONSTRAINT [PK_dbo.Photos] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.Photos_dbo.Profiles_Profile_Id] FOREIGN KEY ([Profile_Id]) REFERENCES [dbo].[Profiles] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Profile_Id]
    ON [dbo].[Photos]([Profile_Id] ASC);

