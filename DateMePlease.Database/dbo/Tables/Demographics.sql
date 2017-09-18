CREATE TABLE [dbo].[Demographics] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [AddressLine]   NVARCHAR (MAX) NULL,
    [CityTown]      NVARCHAR (MAX) NULL,
    [StateProvince] NVARCHAR (MAX) NULL,
    [PostalCode]    NVARCHAR (MAX) NULL,
    [Country]       NVARCHAR (MAX) NULL,
    [DateOfBirth]   DATETIME       NOT NULL,
    CONSTRAINT [PK_dbo.Demographics] PRIMARY KEY CLUSTERED ([Id] ASC)
);

