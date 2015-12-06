
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/07/2015 00:37:56
-- Generated from EDMX file: C:\Users\Admin\Documents\Visual Studio 2015\Projects\CourseWorkSolution\DatabaseLibrary\DatabaseModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CourseWorkDatabase];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_BookDescriptionBookInstance]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BookInstanceSet] DROP CONSTRAINT [FK_BookDescriptionBookInstance];
GO
IF OBJECT_ID(N'[dbo].[FK_LibraryEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_Employee] DROP CONSTRAINT [FK_LibraryEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_PersonPhone]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhoneSet] DROP CONSTRAINT [FK_PersonPhone];
GO
IF OBJECT_ID(N'[dbo].[FK_BookInstanceBusyBookCard]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BusyBookCardSet] DROP CONSTRAINT [FK_BookInstanceBusyBookCard];
GO
IF OBJECT_ID(N'[dbo].[FK_ReaderBusyBookCard]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BusyBookCardSet] DROP CONSTRAINT [FK_ReaderBusyBookCard];
GO
IF OBJECT_ID(N'[dbo].[FK_AccountReader]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AccountSet] DROP CONSTRAINT [FK_AccountReader];
GO
IF OBJECT_ID(N'[dbo].[FK_AccountSubscribtion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SubscribtionSet] DROP CONSTRAINT [FK_AccountSubscribtion];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_inherits_Person]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_Employee] DROP CONSTRAINT [FK_Employee_inherits_Person];
GO
IF OBJECT_ID(N'[dbo].[FK_Reader_inherits_Person]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonSet_Reader] DROP CONSTRAINT [FK_Reader_inherits_Person];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[LibrarySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LibrarySet];
GO
IF OBJECT_ID(N'[dbo].[BookDescriptionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BookDescriptionSet];
GO
IF OBJECT_ID(N'[dbo].[BookInstanceSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BookInstanceSet];
GO
IF OBJECT_ID(N'[dbo].[PersonSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonSet];
GO
IF OBJECT_ID(N'[dbo].[PhoneSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PhoneSet];
GO
IF OBJECT_ID(N'[dbo].[BusyBookCardSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BusyBookCardSet];
GO
IF OBJECT_ID(N'[dbo].[AccountSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AccountSet];
GO
IF OBJECT_ID(N'[dbo].[SubscribtionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SubscribtionSet];
GO
IF OBJECT_ID(N'[dbo].[PersonSet_Employee]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonSet_Employee];
GO
IF OBJECT_ID(N'[dbo].[PersonSet_Reader]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonSet_Reader];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'LibrarySet'
CREATE TABLE [dbo].[LibrarySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NOT NULL,
    [Admin] nvarchar(max)  NOT NULL,
    [WorkTimeBegin] time  NOT NULL,
    [WorkTimeEnd] time  NOT NULL,
    [FreeDay] int  NOT NULL
);
GO

-- Creating table 'BookDescriptionSet'
CREATE TABLE [dbo].[BookDescriptionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Author] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Publisher] nvarchar(max)  NOT NULL,
    [PublishingYear] nvarchar(max)  NOT NULL,
    [Genre] int  NOT NULL,
    [Count] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BookInstanceSet'
CREATE TABLE [dbo].[BookInstanceSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DescriptionId] int  NOT NULL,
    [IsBusy] bit  NOT NULL
);
GO

-- Creating table 'PersonSet'
CREATE TABLE [dbo].[PersonSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [MiddleName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Sex] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PhoneSet'
CREATE TABLE [dbo].[PhoneSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PhoneNumber] nvarchar(max)  NOT NULL,
    [PersonId] int  NOT NULL
);
GO

-- Creating table 'BusyBookCardSet'
CREATE TABLE [dbo].[BusyBookCardSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReaderId] int  NOT NULL,
    [BusyDateTimeBegin] datetime  NOT NULL,
    [BusyDateTimeEnd] datetime  NOT NULL,
    [BookInstance_Id] int  NOT NULL
);
GO

-- Creating table 'AccountSet'
CREATE TABLE [dbo].[AccountSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Login] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Reader_Id] int  NOT NULL
);
GO

-- Creating table 'SubscribtionSet'
CREATE TABLE [dbo].[SubscribtionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DurationTimeBegin] datetime  NOT NULL,
    [DurationTimeEnd] datetime  NOT NULL,
    [Genre] int  NOT NULL,
    [AccountId] int  NOT NULL
);
GO

-- Creating table 'PersonSet_Employee'
CREATE TABLE [dbo].[PersonSet_Employee] (
    [Profession] nvarchar(max)  NOT NULL,
    [ExperienceYears] int  NOT NULL,
    [LibraryId] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'PersonSet_Reader'
CREATE TABLE [dbo].[PersonSet_Reader] (
    [Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'LibrarySet'
ALTER TABLE [dbo].[LibrarySet]
ADD CONSTRAINT [PK_LibrarySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BookDescriptionSet'
ALTER TABLE [dbo].[BookDescriptionSet]
ADD CONSTRAINT [PK_BookDescriptionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BookInstanceSet'
ALTER TABLE [dbo].[BookInstanceSet]
ADD CONSTRAINT [PK_BookInstanceSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PersonSet'
ALTER TABLE [dbo].[PersonSet]
ADD CONSTRAINT [PK_PersonSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PhoneSet'
ALTER TABLE [dbo].[PhoneSet]
ADD CONSTRAINT [PK_PhoneSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BusyBookCardSet'
ALTER TABLE [dbo].[BusyBookCardSet]
ADD CONSTRAINT [PK_BusyBookCardSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AccountSet'
ALTER TABLE [dbo].[AccountSet]
ADD CONSTRAINT [PK_AccountSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SubscribtionSet'
ALTER TABLE [dbo].[SubscribtionSet]
ADD CONSTRAINT [PK_SubscribtionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PersonSet_Employee'
ALTER TABLE [dbo].[PersonSet_Employee]
ADD CONSTRAINT [PK_PersonSet_Employee]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PersonSet_Reader'
ALTER TABLE [dbo].[PersonSet_Reader]
ADD CONSTRAINT [PK_PersonSet_Reader]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [DescriptionId] in table 'BookInstanceSet'
ALTER TABLE [dbo].[BookInstanceSet]
ADD CONSTRAINT [FK_BookDescriptionBookInstance]
    FOREIGN KEY ([DescriptionId])
    REFERENCES [dbo].[BookDescriptionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BookDescriptionBookInstance'
CREATE INDEX [IX_FK_BookDescriptionBookInstance]
ON [dbo].[BookInstanceSet]
    ([DescriptionId]);
GO

-- Creating foreign key on [LibraryId] in table 'PersonSet_Employee'
ALTER TABLE [dbo].[PersonSet_Employee]
ADD CONSTRAINT [FK_LibraryEmployee]
    FOREIGN KEY ([LibraryId])
    REFERENCES [dbo].[LibrarySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LibraryEmployee'
CREATE INDEX [IX_FK_LibraryEmployee]
ON [dbo].[PersonSet_Employee]
    ([LibraryId]);
GO

-- Creating foreign key on [PersonId] in table 'PhoneSet'
ALTER TABLE [dbo].[PhoneSet]
ADD CONSTRAINT [FK_PersonPhone]
    FOREIGN KEY ([PersonId])
    REFERENCES [dbo].[PersonSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonPhone'
CREATE INDEX [IX_FK_PersonPhone]
ON [dbo].[PhoneSet]
    ([PersonId]);
GO

-- Creating foreign key on [BookInstance_Id] in table 'BusyBookCardSet'
ALTER TABLE [dbo].[BusyBookCardSet]
ADD CONSTRAINT [FK_BookInstanceBusyBookCard]
    FOREIGN KEY ([BookInstance_Id])
    REFERENCES [dbo].[BookInstanceSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BookInstanceBusyBookCard'
CREATE INDEX [IX_FK_BookInstanceBusyBookCard]
ON [dbo].[BusyBookCardSet]
    ([BookInstance_Id]);
GO

-- Creating foreign key on [ReaderId] in table 'BusyBookCardSet'
ALTER TABLE [dbo].[BusyBookCardSet]
ADD CONSTRAINT [FK_ReaderBusyBookCard]
    FOREIGN KEY ([ReaderId])
    REFERENCES [dbo].[PersonSet_Reader]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReaderBusyBookCard'
CREATE INDEX [IX_FK_ReaderBusyBookCard]
ON [dbo].[BusyBookCardSet]
    ([ReaderId]);
GO

-- Creating foreign key on [Reader_Id] in table 'AccountSet'
ALTER TABLE [dbo].[AccountSet]
ADD CONSTRAINT [FK_AccountReader]
    FOREIGN KEY ([Reader_Id])
    REFERENCES [dbo].[PersonSet_Reader]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccountReader'
CREATE INDEX [IX_FK_AccountReader]
ON [dbo].[AccountSet]
    ([Reader_Id]);
GO

-- Creating foreign key on [AccountId] in table 'SubscribtionSet'
ALTER TABLE [dbo].[SubscribtionSet]
ADD CONSTRAINT [FK_AccountSubscribtion]
    FOREIGN KEY ([AccountId])
    REFERENCES [dbo].[AccountSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccountSubscribtion'
CREATE INDEX [IX_FK_AccountSubscribtion]
ON [dbo].[SubscribtionSet]
    ([AccountId]);
GO

-- Creating foreign key on [Id] in table 'PersonSet_Employee'
ALTER TABLE [dbo].[PersonSet_Employee]
ADD CONSTRAINT [FK_Employee_inherits_Person]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[PersonSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'PersonSet_Reader'
ALTER TABLE [dbo].[PersonSet_Reader]
ADD CONSTRAINT [FK_Reader_inherits_Person]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[PersonSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------