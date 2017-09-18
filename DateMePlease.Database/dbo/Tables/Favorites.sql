CREATE TABLE [dbo].[Favorites] (
    [Id]            INT      IDENTITY (1, 1) NOT NULL,
    [MemberId]      INT      NOT NULL,
    [DateFavorited] DATETIME NOT NULL,
    CONSTRAINT [PK_dbo.Favorites] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.Favorites_dbo.Members_MemberId] FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Members] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_MemberId]
    ON [dbo].[Favorites]([MemberId] ASC);

