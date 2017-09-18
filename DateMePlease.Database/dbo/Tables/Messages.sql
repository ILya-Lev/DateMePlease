CREATE TABLE [dbo].[Messages] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Body]        NVARCHAR (MAX) NULL,
    [MessageSent] DATETIME       NOT NULL,
    [IsRead]      BIT            NOT NULL,
    [RecipientId] INT            NOT NULL,
    [ParentId]    INT            NOT NULL,
    [Member_Id]   INT            NULL,
    CONSTRAINT [PK_dbo.Messages] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.Messages_dbo.Members_Member_Id] FOREIGN KEY ([Member_Id]) REFERENCES [dbo].[Members] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Member_Id]
    ON [dbo].[Messages]([Member_Id] ASC);

