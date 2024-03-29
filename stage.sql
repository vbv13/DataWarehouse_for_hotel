USE [master]
GO
/****** Object:  Database [Stage]    Script Date: 2019-09-13 21:29:11 ******/
CREATE DATABASE [Stage]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Stage', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Stage.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Stage_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Stage_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Stage] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Stage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Stage] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Stage] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Stage] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Stage] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Stage] SET ARITHABORT OFF 
GO
ALTER DATABASE [Stage] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Stage] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Stage] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Stage] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Stage] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Stage] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Stage] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Stage] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Stage] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Stage] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Stage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Stage] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Stage] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Stage] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Stage] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Stage] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Stage] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Stage] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Stage] SET  MULTI_USER 
GO
ALTER DATABASE [Stage] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Stage] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Stage] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Stage] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Stage] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Stage]
GO
/****** Object:  Table [dbo].[Metadane]    Script Date: 2019-09-13 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Metadane](
	[liczba_tabel_wspolnych] [numeric](5, 0) NULL,
	[liczba_tabel_rozlacznych] [numeric](5, 0) NULL,
	[src_1_liczba_wierszy_rozniacych_przed] [numeric](5, 0) NULL,
	[src_1_liczba_wierszy_rozniacych_po] [numeric](5, 0) NULL,
	[src_2_liczba_wierszy_rozniacych_przed] [numeric](5, 0) NULL,
	[src_2_liczba_wierszy_rozniacych_po] [numeric](5, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S1_Klient]    Script Date: 2019-09-13 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S1_Klient](
	[id_klienta] [numeric](18, 0) NULL,
	[imie] [varchar](20) NULL,
	[nazwisko] [varchar](20) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S1_Obsluga]    Script Date: 2019-09-13 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S1_Obsluga](
	[id_obslugi] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[dostawa_do_pokoju] [bit] NULL,
	[zamowienie] [varchar](40) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S1_Pobyt]    Script Date: 2019-09-13 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S1_Pobyt](
	[id_pobyt] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[dlugosc_pobytu] [numeric](18, 0) NULL,
	[liczba_osob] [numeric](18, 0) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S1_Pracownik]    Script Date: 2019-09-13 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S1_Pracownik](
	[id_pracownika] [numeric](18, 0) NULL,
	[imie] [varchar](20) NULL,
	[nazwisko] [varchar](20) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S1_Rezerwacja]    Script Date: 2019-09-13 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S1_Rezerwacja](
	[id_rezerwacja] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[typ] [varchar](20) NULL,
	[czy_potwierdzono] [bit] NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S1_Wynajecie_pokoju]    Script Date: 2019-09-13 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S1_Wynajecie_pokoju](
	[id_wynajecie_pokoju] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[numer_pokoju] [numeric](18, 0) NULL,
	[liczba_lozek] [numeric](18, 0) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S2_Klient]    Script Date: 2019-09-13 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S2_Klient](
	[id_klienta] [numeric](18, 0) NULL,
	[imie] [varchar](20) NULL,
	[nazwisko] [varchar](20) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S2_Platnosc]    Script Date: 2019-09-13 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S2_Platnosc](
	[id_platnosci] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[kwota] [numeric](18, 0) NULL,
	[typ_platnosci] [varchar](20) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S2_Pracownik]    Script Date: 2019-09-13 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S2_Pracownik](
	[id_pracownika] [numeric](18, 0) NULL,
	[imie] [varchar](20) NULL,
	[nazwisko] [varchar](20) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S2_Rezerwacja]    Script Date: 2019-09-13 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S2_Rezerwacja](
	[id_rezerwacja] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[typ] [varchar](20) NULL,
	[czy_potwierdzono] [bit] NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[InsertSource1]    Script Date: 2019-09-13 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[InsertSource1] as
begin
truncate table Stage.dbo.S1_Rezerwacja;
truncate table Stage.dbo.S1_Klient;
truncate table Stage.dbo.S1_Obsluga;
truncate table Stage.dbo.S1_Pobyt;
truncate table Stage.dbo.S1_Pracownik;
truncate table Stage.dbo.S1_Wynajecie_pokoju;


--let's put data to Stage from source1
--strukture Stage i tak czyscimy po kazdym procesie ETL
insert into Stage.dbo.S1_Rezerwacja 
	select id_rezerwacja,id_klienta,id_pracownika,typ,czy_potwierdzono,timestamp 
	from Source.dbo.Rezerwacja;
insert into Stage.dbo.S1_Klient 
	select id_klienta,imie,nazwisko,timestamp 
	from Source.dbo.Klient;
insert into Stage.dbo.S1_Obsluga 
	select id_obslugi,id_klienta,id_pracownika,dostawa_do_pokoju,zamowienie,timestamp 
	from Source.dbo.Obsluga;
insert into Stage.dbo.S1_Pobyt 
	select id_pobyt,id_klienta,id_pracownika,dlugosc_pobytu,liczba_osob,timestamp 
	from Source.dbo.Pobyt;
insert into Stage.dbo.S1_Pracownik 
	select id_pracownika,imie,nazwisko,timestamp 
	from Source.dbo.Pracownik;
insert into Stage.dbo.S1_Wynajecie_pokoju 
	select id_wynajecie_pokoju,id_klienta,id_pracownika,numer_pokoju,liczba_lozek,timestamp 
	from Source.dbo.Wynajecie_pokoju;
end



GO
/****** Object:  StoredProcedure [dbo].[InsertSource2]    Script Date: 2019-09-13 21:29:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[InsertSource2] as
begin
truncate table Stage.dbo.S2_Klient;
truncate table Stage.dbo.S2_Pracownik;
truncate table Stage.dbo.S2_Rezerwacja;
truncate table Stage.dbo.S2_Platnosc;

--let's put data to Stage from source2
insert into Stage.dbo.S2_Klient 
	select id_klienta,imie,nazwisko,timestamp 
	from Source2.dbo.Klient;
insert into Stage.dbo.S2_Pracownik 
	select id_pracownika,imie,nazwisko,timestamp 
	from Source2.dbo.Pracownik;
insert into Stage.dbo.S2_Rezerwacja 
	select id_rezerwacja,id_klienta,id_pracownika,typ,czy_potwierdzono,timestamp 
	from Source2.dbo.Rezerwacja;
insert into Stage.dbo.S2_Platnosc 
	select id_platnosci,id_pracownika,id_klienta,kwota,typ_platnosci,timestamp 
	from Source2.dbo.Platnosc;
end



GO
USE [master]
GO
ALTER DATABASE [Stage] SET  READ_WRITE 
GO
