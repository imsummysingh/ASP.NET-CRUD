CREATE TABLE [dbo].[Test] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]       NVARCHAR (50) NULL,
    [MiddleName]      NVARCHAR (50) NULL,
    [LastName]        NVARCHAR (50) NULL,
    [DOB]             DATE          NULL,
    [Gender]          NVARCHAR (50) NULL,
    [Nationality]     NVARCHAR (50) NULL,
    [Email]           NVARCHAR (50) NULL,
    [Mobile]          NVARCHAR (50) NULL,
    [P1]              NVARCHAR (50) NULL,
    [P2]              NVARCHAR (50) NULL,
    [P3]              NVARCHAR (50) NULL,
    [Password]        NVARCHAR (50) NULL,
    [ConfirmPassword] NVARCHAR (50) NULL,
    [IsDeleted]       INT           DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

