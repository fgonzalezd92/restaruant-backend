USE [master]
GO
/****** Object:  Database [Restaurant]    Script Date: 03/12/2021 05:13:25 a. m. ******/
CREATE DATABASE [Restaurant]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Restaurant', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Restaurant.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Restaurant_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Restaurant_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Restaurant] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Restaurant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Restaurant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Restaurant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Restaurant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Restaurant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Restaurant] SET ARITHABORT OFF 
GO
ALTER DATABASE [Restaurant] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Restaurant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Restaurant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Restaurant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Restaurant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Restaurant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Restaurant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Restaurant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Restaurant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Restaurant] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Restaurant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Restaurant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Restaurant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Restaurant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Restaurant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Restaurant] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Restaurant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Restaurant] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Restaurant] SET  MULTI_USER 
GO
ALTER DATABASE [Restaurant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Restaurant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Restaurant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Restaurant] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Restaurant] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Restaurant] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Restaurant] SET QUERY_STORE = OFF
GO
USE [Restaurant]
GO
/****** Object:  User [usrRestaurant]    Script Date: 03/12/2021 05:13:25 a. m. ******/
CREATE USER [usrRestaurant] FOR LOGIN [usrRestaurant] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [usrRestaurant]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [usrRestaurant]
GO
ALTER ROLE [db_datareader] ADD MEMBER [usrRestaurant]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [usrRestaurant]
GO
/****** Object:  Table [dbo].[Platillos]    Script Date: 03/12/2021 05:13:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platillos](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Tipo] [int] NOT NULL,
	[Ingredientes] [nvarchar](256) NOT NULL,
	[Peso] [int] NOT NULL,
	[Calorias] [int] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Platillos] ([Id], [Nombre], [Tipo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'3609760e-ae2c-4fa6-a74d-009a088d56e6', N'Huevos Rancheros', 1, N'Tortillas – 2 Huevos – Salsa verde', 125, 500, CAST(55.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Platillos] ([Id], [Nombre], [Tipo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'78f5c729-09f0-4996-b822-10275ef6d346', N'Huevo revuelto con jamón', 1, N'Huevos - Jamón', 160, 600, CAST(65.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Platillos] ([Id], [Nombre], [Tipo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'01382fd9-6319-49ca-823a-23f158f2107f', N'Sopa Azteca', 2, N'Jitomate – Pollo – Tortilla – Aguacate', 200, 800, CAST(80.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Platillos] ([Id], [Nombre], [Tipo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'bc563466-d5c1-4946-bfd5-5b86b0b36d78', N'Piña colada', 4, N'Juego de piña - Crema de coco - Ron', 100, 300, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Platillos] ([Id], [Nombre], [Tipo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'f2127176-1f33-4ac6-af4f-671a22ef317f', N'Milanesa de res', 2, N'Milanesa de res – Papas a la francesa', 230, 900, CAST(110.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Platillos] ([Id], [Nombre], [Tipo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'04651117-e3e2-426f-9f94-7d02a2fcc3d1', N'Pechuga de pollo rostizada', 2, N'Pollo', 200, 450, CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Platillos] ([Id], [Nombre], [Tipo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'b20e1052-e58c-4b03-b998-8532adea2443', N'Chilaquiles', 1, N'Tortillas – Salsa Verde – Huevo – Cebolla – Crema – Queso', 200, 550, CAST(60.00 AS Decimal(18, 2)))
GO
ALTER TABLE [dbo].[Platillos] ADD  CONSTRAINT [DF_Menu_Id]  DEFAULT (newid()) FOR [Id]
GO
USE [master]
GO
ALTER DATABASE [Restaurant] SET  READ_WRITE 
GO
