
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/22/2023 22:45:42
-- Generated from EDMX file: D:\Users\Hakidoto\Documentos\Tareas\MS8\cuestinarios\DBClassLib\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [db_cuestionario];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Cuestionario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cuestionario];
GO
IF OBJECT_ID(N'[dbo].[Puesto]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Puesto];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Cuestionario'
CREATE TABLE [dbo].[Cuestionario] (
    [IdCuestionario] int IDENTITY(1,1) NOT NULL,
    [Nombre] varchar(50)  NOT NULL,
    [Descripcion] varchar(100)  NOT NULL,
    [FechaLimite] datetime  NULL
);
GO

-- Creating table 'Puesto'
CREATE TABLE [dbo].[Puesto] (
    [IdPuesto] int  NOT NULL,
    [NombrePuesto] varchar(40)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IdCuestionario] in table 'Cuestionario'
ALTER TABLE [dbo].[Cuestionario]
ADD CONSTRAINT [PK_Cuestionario]
    PRIMARY KEY CLUSTERED ([IdCuestionario] ASC);
GO

-- Creating primary key on [IdPuesto] in table 'Puesto'
ALTER TABLE [dbo].[Puesto]
ADD CONSTRAINT [PK_Puesto]
    PRIMARY KEY CLUSTERED ([IdPuesto] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------