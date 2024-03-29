USE [master]
GO
/****** Object:  Database [Source2]    Script Date: 2019-09-13 21:28:41 ******/
CREATE DATABASE [Source2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Source2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Source2.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Source2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Source2_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Source2] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Source2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Source2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Source2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Source2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Source2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Source2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Source2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Source2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Source2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Source2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Source2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Source2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Source2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Source2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Source2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Source2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Source2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Source2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Source2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Source2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Source2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Source2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Source2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Source2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Source2] SET  MULTI_USER 
GO
ALTER DATABASE [Source2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Source2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Source2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Source2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Source2] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Source2]
GO
/****** Object:  Table [dbo].[Klient]    Script Date: 2019-09-13 21:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Klient](
	[id_klienta] [numeric](18, 0) NULL,
	[imie] [varchar](20) NULL,
	[nazwisko] [varchar](20) NULL,
	[timestamp] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Metadane]    Script Date: 2019-09-13 21:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Metadane](
	[id_tabeli] [numeric](5, 0) NULL,
	[nazwa] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Platnosc]    Script Date: 2019-09-13 21:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Platnosc](
	[id_platnosci] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[kwota] [numeric](18, 0) NULL,
	[typ_platnosci] [varchar](20) NULL,
	[timestamp] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pracownik]    Script Date: 2019-09-13 21:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pracownik](
	[id_pracownika] [numeric](18, 0) NULL,
	[imie] [varchar](20) NULL,
	[nazwisko] [varchar](20) NULL,
	[timestamp] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rezerwacja]    Script Date: 2019-09-13 21:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rezerwacja](
	[id_rezerwacja] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[typ] [varchar](20) NULL,
	[czy_potwierdzono] [bit] NULL,
	[timestamp] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [Source2] SET  READ_WRITE 
GO
