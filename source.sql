USE [master]
GO
/****** Object:  Database [Source]    Script Date: 2019-09-13 21:28:13 ******/
CREATE DATABASE [Source]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Source', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Source.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Source_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Source_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Source] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Source].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Source] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Source] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Source] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Source] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Source] SET ARITHABORT OFF 
GO
ALTER DATABASE [Source] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Source] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Source] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Source] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Source] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Source] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Source] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Source] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Source] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Source] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Source] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Source] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Source] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Source] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Source] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Source] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Source] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Source] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Source] SET  MULTI_USER 
GO
ALTER DATABASE [Source] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Source] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Source] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Source] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Source] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Source]
GO
/****** Object:  Table [dbo].[Klient]    Script Date: 2019-09-13 21:28:13 ******/
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
/****** Object:  Table [dbo].[Metadane]    Script Date: 2019-09-13 21:28:13 ******/
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
/****** Object:  Table [dbo].[Obsluga]    Script Date: 2019-09-13 21:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obsluga](
	[id_obslugi] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[dostawa_do_pokoju] [bit] NULL,
	[zamowienie] [varchar](40) NULL,
	[timestamp] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pobyt]    Script Date: 2019-09-13 21:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pobyt](
	[id_pobyt] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[dlugosc_pobytu] [numeric](18, 0) NULL,
	[liczba_osob] [numeric](18, 0) NULL,
	[timestamp] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pracownik]    Script Date: 2019-09-13 21:28:13 ******/
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
/****** Object:  Table [dbo].[Rezerwacja]    Script Date: 2019-09-13 21:28:13 ******/
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
/****** Object:  Table [dbo].[Wynajecie_pokoju]    Script Date: 2019-09-13 21:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wynajecie_pokoju](
	[id_wynajecie_pokoju] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[numer_pokoju] [numeric](18, 0) NULL,
	[liczba_lozek] [numeric](18, 0) NULL,
	[timestamp] [datetime] NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [Source] SET  READ_WRITE 
GO
