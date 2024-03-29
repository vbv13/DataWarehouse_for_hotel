USE [master]
GO
/****** Object:  Database [Temp]    Script Date: 2019-09-13 21:30:05 ******/
CREATE DATABASE [Temp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Temp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Temp.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Temp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Temp_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Temp] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Temp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Temp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Temp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Temp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Temp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Temp] SET ARITHABORT OFF 
GO
ALTER DATABASE [Temp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Temp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Temp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Temp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Temp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Temp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Temp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Temp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Temp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Temp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Temp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Temp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Temp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Temp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Temp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Temp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Temp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Temp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Temp] SET  MULTI_USER 
GO
ALTER DATABASE [Temp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Temp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Temp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Temp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Temp] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Temp]
GO
/****** Object:  Table [dbo].[Klient_fail]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Klient_fail](
	[id_klienta] [numeric](18, 0) NULL,
	[imie] [varchar](20) NULL,
	[nazwisko] [varchar](20) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Klient_stg]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Klient_stg](
	[id_klienta] [numeric](18, 0) NULL,
	[imie] [varchar](20) NULL,
	[nazwisko] [varchar](20) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Klient_temp]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Klient_temp](
	[id_klienta] [numeric](18, 0) NULL,
	[imie] [varchar](20) NULL,
	[nazwisko] [varchar](20) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Obsluga_fail]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obsluga_fail](
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
/****** Object:  Table [dbo].[Obsluga_stg]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obsluga_stg](
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
/****** Object:  Table [dbo].[Obsluga_temp]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obsluga_temp](
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
/****** Object:  Table [dbo].[Platnosc_fail]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Platnosc_fail](
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
/****** Object:  Table [dbo].[Platnosc_stg]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Platnosc_stg](
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
/****** Object:  Table [dbo].[Platnosc_temp]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Platnosc_temp](
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
/****** Object:  Table [dbo].[Pobyt_fail]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pobyt_fail](
	[id_pobyt] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[dlugosc_pobytu] [numeric](18, 0) NULL,
	[liczba_osob] [numeric](18, 0) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pobyt_stg]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pobyt_stg](
	[id_pobyt] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[dlugosc_pobytu] [numeric](18, 0) NULL,
	[liczba_osob] [numeric](18, 0) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pobyt_temp]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pobyt_temp](
	[id_pobyt] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[dlugosc_pobytu] [numeric](18, 0) NULL,
	[liczba_osob] [numeric](18, 0) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pracownik_fail]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pracownik_fail](
	[id_pracownika] [numeric](18, 0) NULL,
	[imie] [varchar](20) NULL,
	[nazwisko] [varchar](20) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pracownik_stg]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pracownik_stg](
	[id_pracownika] [numeric](18, 0) NULL,
	[imie] [varchar](20) NULL,
	[nazwisko] [varchar](20) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pracownik_temp]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pracownik_temp](
	[id_pracownika] [numeric](18, 0) NULL,
	[imie] [varchar](20) NULL,
	[nazwisko] [varchar](20) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rezerwacja_fail]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rezerwacja_fail](
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
/****** Object:  Table [dbo].[Rezerwacja_stg]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rezerwacja_stg](
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
/****** Object:  Table [dbo].[Rezerwacja_temp]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rezerwacja_temp](
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
/****** Object:  Table [dbo].[Wynajecie_pokoju_fail]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wynajecie_pokoju_fail](
	[id_wynajecie_pokoju] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[numer_pokoju] [numeric](18, 0) NULL,
	[liczba_lozek] [numeric](18, 0) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Wynajecie_pokoju_stg]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wynajecie_pokoju_stg](
	[id_wynajecie_pokoju] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[numer_pokoju] [numeric](18, 0) NULL,
	[liczba_lozek] [numeric](18, 0) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Wynajecie_pokoju_temp]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wynajecie_pokoju_temp](
	[id_wynajecie_pokoju] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[numer_pokoju] [numeric](18, 0) NULL,
	[liczba_lozek] [numeric](18, 0) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[InsertTemp]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertTemp] as
begin

truncate table temp.dbo.rezerwacja_temp;
truncate table temp.dbo.klient_temp;
truncate table temp.dbo.obsluga_temp;
truncate table temp.dbo.pobyt_temp;
truncate table temp.dbo.pracownik_temp;
truncate table temp.dbo.wynajecie_pokoju_temp;
truncate table temp.dbo.platnosc_temp;
truncate table temp.dbo.rezerwacja_stg;
truncate table temp.dbo.klient_stg;
truncate table temp.dbo.obsluga_stg;
truncate table temp.dbo.pobyt_stg;
truncate table temp.dbo.pracownik_stg;
truncate table temp.dbo.wynajecie_pokoju_stg;
truncate table temp.dbo.platnosc_stg;


insert into Temp.dbo.Rezerwacja_temp 
	select id_rezerwacja,id_klienta,id_pracownika,typ,czy_potwierdzono,timestamp 
	from Stage.dbo.S1_Rezerwacja;
insert into Temp.dbo.Obsluga_temp 
	select id_obslugi,id_klienta,id_pracownika,dostawa_do_pokoju,zamowienie,timestamp 
	from Stage.dbo.S1_Obsluga;
insert into Temp.dbo.Pobyt_temp 
	select id_pobyt,id_klienta,id_pracownika,dlugosc_pobytu,liczba_osob,timestamp 
	from Stage.dbo.S1_Pobyt;
insert into Temp.dbo.Wynajecie_pokoju_temp 
	select id_wynajecie_pokoju,id_klienta,id_pracownika,numer_pokoju,liczba_lozek,timestamp 
	from Stage.dbo.S1_Wynajecie_pokoju;
insert into Temp.dbo.Pracownik_temp 
	select id_pracownika,imie,nazwisko,timestamp 
	from Stage.dbo.S1_Pracownik;
insert into Temp.dbo.Klient_temp 
	select id_klienta,imie,nazwisko,timestamp 
	from Stage.dbo.S1_Klient;
	
insert into Temp.dbo.Rezerwacja_temp 
	select id_rezerwacja,id_klienta,id_pracownika,typ,czy_potwierdzono,timestamp 
	from Stage.dbo.S2_Rezerwacja;
insert into Temp.dbo.Platnosc_temp 
	select id_platnosci,id_pracownika,id_klienta,kwota,typ_platnosci,timestamp 
	from Stage.dbo.S2_Platnosc;
insert into Temp.dbo.Pracownik_temp 
	select id_pracownika,imie,nazwisko,timestamp 
	from Stage.dbo.S2_Pracownik;
insert into Temp.dbo.Klient_temp 
	select id_klienta,imie,nazwisko,timestamp 
	from Stage.dbo.S2_Klient;

end;

GO
/****** Object:  StoredProcedure [dbo].[InsertTemp_stg]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertTemp_stg] as
begin

--rekordy ktore sie joinuja
Insert into temp.dbo.Wynajecie_pokoju_stg 
	select t.id_wynajecie_pokoju, t.id_klienta, t.id_pracownika, t.numer_pokoju, t.liczba_lozek, t.timestamp 
	from temp.dbo.Wynajecie_pokoju_temp t 
	join Target.dbo.t_key_pracownik p on t.id_pracownika = p.t_value 
	join Target.dbo.t_key_klient k on k.t_value = t.id_klienta 
	except select id_wynajecie_pokoju, id_klienta, id_pracownika, numer_pokoju, liczba_lozek, timestamp 
	from temp.dbo.Wynajecie_pokoju_stg 
	except select tk.t_value, tr.id_klienta, tr.id_pracownika, tr.numer_pokoju, tr.liczba_lozek, tr.timestamp 
	from target.dbo.wynajecie_pokoju tr 
	join target.dbo.t_key_wynajecie_pokoju tk on tk.t_id=tr.t_id 
Insert into temp.dbo.Rezerwacja_stg 
	select t.id_rezerwacja, t.id_klienta, t.id_pracownika, t.typ, t.czy_potwierdzono, t.timestamp 
	from temp.dbo.Rezerwacja_temp t 
	join Target.dbo.t_key_pracownik p on t.id_pracownika = p.t_value 
	join Target.dbo.t_key_klient k on k.t_value = t.id_klienta
	except select id_rezerwacja, id_klienta, id_pracownika, typ, czy_potwierdzono, timestamp 
	from temp.dbo.Rezerwacja_stg 
	except select tk.t_value, re.id_klienta, re.id_pracownika, re.typ, re.czy_potwierdzono, re.timestamp 
	from target.dbo.rezerwacja re 
	join target.dbo.t_key_rezerwacja tk on tk.t_id = re.t_id
Insert into temp.dbo.Platnosc_stg 
	select t.id_platnosci, t.id_pracownika, t.id_klienta, t.kwota, t.typ_platnosci, t.timestamp 
	from temp.dbo.Platnosc_temp t 
	join Target.dbo.t_key_pracownik p on t.id_pracownika = p.t_value 
	join Target.dbo.t_key_klient k on k.t_value = t.id_klienta 
	except select id_platnosci, id_pracownika, id_klienta, kwota, typ_platnosci, timestamp 
	from temp.dbo.Platnosc_stg except 
	select tk.t_value, pl.id_pracownika, pl.id_klienta, pl.kwota, pl.typ_platnosci, pl.timestamp 
	from target.dbo.platnosc pl 
	join target.dbo.t_key_platnosc tk on tk.t_id=pl.t_id 
Insert into temp.dbo.Obsluga_stg 
	select t.id_obslugi, t.id_klienta, t.id_pracownika, t.dostawa_do_pokoju, t.zamowienie, t.timestamp 
	from temp.dbo.Obsluga_temp t 
	join Target.dbo.t_key_pracownik p on t.id_pracownika = p.t_value 
	join Target.dbo.t_key_klient k on k.t_value = t.id_klienta 
	except select id_obslugi,id_klienta,id_pracownika,dostawa_do_pokoju,zamowienie, timestamp 
	from temp.dbo.Obsluga_stg 
	except select tk.t_value, ob.id_klienta, ob.id_pracownika, ob.dostawa_do_pokoju, ob.zamowienie, ob.timestamp 
	from target.dbo.obsluga ob 
	join target.dbo.t_key_obsluga tk on tk.t_id=ob.t_id 	
Insert into temp.dbo.Pobyt_stg 
	select t.id_pobyt, t.id_klienta, t.id_pracownika, t.dlugosc_pobytu, t.liczba_osob, t.timestamp 
	from temp.dbo.Pobyt_temp t 
	join Target.dbo.t_key_pracownik p on t.id_pracownika = p.t_value 
	join Target.dbo.t_key_klient k on k.t_value = t.id_klienta 
	except select id_pobyt,id_klienta,id_pracownika,dlugosc_pobytu,liczba_osob, timestamp 
	from temp.dbo.Pobyt_stg except 
	select tk.t_value, po.id_klienta, po.id_pracownika, po.dlugosc_pobytu, po.liczba_osob, po.timestamp 
	from target.dbo.pobyt po 
	join target.dbo.t_key_pobyt tk on tk.t_id=po.t_id 	


/*teraz z fail, zamiast temp*/
--rekordy, ktore sie joinuja z wymiarami, a wczesniej trafily do faila
Insert into temp.dbo.Wynajecie_pokoju_stg 
	select t.id_wynajecie_pokoju, t.id_klienta, t.id_pracownika, t.numer_pokoju, t.liczba_lozek, t.timestamp 
	from temp.dbo.Wynajecie_pokoju_fail t 
	join Target.dbo.t_key_pracownik p on t.id_pracownika = p.t_value 
	join Target.dbo.t_key_klient k on k.t_value = t.id_klienta 
	except select id_wynajecie_pokoju, id_klienta, id_pracownika, numer_pokoju, liczba_lozek, timestamp 
	from temp.dbo.Wynajecie_pokoju_stg 
	except select tk.t_value, tr.id_klienta, tr.id_pracownika, tr.numer_pokoju, tr.liczba_lozek, tr.timestamp 
	from target.dbo.wynajecie_pokoju tr 
	join target.dbo.t_key_wynajecie_pokoju tk on tk.t_id=tr.t_id 
Insert into temp.dbo.Rezerwacja_stg 
	select t.id_rezerwacja, t.id_klienta, t.id_pracownika, t.typ, t.czy_potwierdzono, t.timestamp 
	from temp.dbo.Rezerwacja_fail t 
	join Target.dbo.t_key_pracownik p on t.id_pracownika = p.t_value 
	join Target.dbo.t_key_klient k on k.t_value = t.id_klienta
	except select id_rezerwacja, id_klienta, id_pracownika, typ, czy_potwierdzono, timestamp 
	from temp.dbo.Rezerwacja_stg 
	except select tk.t_value, re.id_klienta, re.id_pracownika, re.typ, re.czy_potwierdzono, re.timestamp 
	from target.dbo.rezerwacja re 
	join target.dbo.t_key_rezerwacja tk on tk.t_id = re.t_id
Insert into temp.dbo.Platnosc_stg 
	select t.id_platnosci, t.id_pracownika, t.id_klienta, t.kwota, t.typ_platnosci, t.timestamp 
	from temp.dbo.Platnosc_fail t 
	join Target.dbo.t_key_pracownik p on t.id_pracownika = p.t_value 
	join Target.dbo.t_key_klient k on k.t_value = t.id_klienta 
	except select id_platnosci, id_pracownika, id_klienta, kwota, typ_platnosci, timestamp 
	from temp.dbo.Platnosc_stg except 
	select tk.t_value, pl.id_pracownika, pl.id_klienta, pl.kwota, pl.typ_platnosci, pl.timestamp 
	from target.dbo.platnosc pl 
	join target.dbo.t_key_platnosc tk on tk.t_id=pl.t_id 
Insert into temp.dbo.Obsluga_stg 
	select t.id_obslugi, t.id_klienta, t.id_pracownika, t.dostawa_do_pokoju, t.zamowienie, t.timestamp 
	from temp.dbo.Obsluga_fail t 
	join Target.dbo.t_key_pracownik p on t.id_pracownika = p.t_value 
	join Target.dbo.t_key_klient k on k.t_value = t.id_klienta 
	except select id_obslugi,id_klienta,id_pracownika,dostawa_do_pokoju,zamowienie, timestamp 
	from temp.dbo.Obsluga_stg 
	except select tk.t_value, ob.id_klienta, ob.id_pracownika, ob.dostawa_do_pokoju, ob.zamowienie, ob.timestamp 
	from target.dbo.obsluga ob 
	join target.dbo.t_key_obsluga tk on tk.t_id=ob.t_id 	
Insert into temp.dbo.Pobyt_stg 
	select t.id_pobyt, t.id_klienta, t.id_pracownika, t.dlugosc_pobytu, t.liczba_osob, t.timestamp 
	from temp.dbo.Pobyt_fail t 
	join Target.dbo.t_key_pracownik p on t.id_pracownika = p.t_value 
	join Target.dbo.t_key_klient k on k.t_value = t.id_klienta 
	except select id_pobyt,id_klienta,id_pracownika,dlugosc_pobytu,liczba_osob, timestamp 
	from temp.dbo.Pobyt_stg except 
	select tk.t_value, po.id_klienta, po.id_pracownika, po.dlugosc_pobytu, po.liczba_osob, po.timestamp 
	from target.dbo.pobyt po 
	join target.dbo.t_key_pobyt tk on tk.t_id=po.t_id 		

--usuwanie rekordow, ktore wpadly z faila do stg
delete from temp.dbo.Wynajecie_pokoju_fail 
	where id_wynajecie_pokoju in 
	(select id_wynajecie_pokoju from temp.dbo.Wynajecie_pokoju_fail intersect 
	select id_wynajecie_pokoju from temp.dbo.Wynajecie_pokoju_stg)				--jezeli numery id sa takie same, tzn. ze trzeba usunac
delete from temp.dbo.Rezerwacja_fail 
	where id_rezerwacja in 
	(select id_rezerwacja from temp.dbo.Rezerwacja_fail intersect 
	select id_rezerwacja from temp.dbo.Rezerwacja_stg)
delete from temp.dbo.Platnosc_fail 
	where id_platnosci in 
	(select id_platnosci from temp.dbo.Platnosc_fail intersect 
	select id_platnosci from temp.dbo.Platnosc_stg)
delete from temp.dbo.Obsluga_fail 
	where id_obslugi in 
	(select id_obslugi from temp.dbo.Obsluga_fail intersect 
	select id_obslugi from temp.dbo.Obsluga_stg)
delete from temp.dbo.Pobyt_fail 
	where id_pobyt in 
	(select id_pobyt from temp.dbo.Pobyt_fail intersect 
	select id_pobyt from temp.dbo.Pobyt_stg)

--rekordy, ktore sa juz w targecie wiec wpadaja do faila
Insert into temp.dbo.Wynajecie_pokoju_fail 
	select id_wynajecie_pokoju,id_klienta,id_pracownika,numer_pokoju,liczba_lozek, timestamp 
	from temp.dbo.Wynajecie_pokoju_temp 
	intersect select t.t_value, s.id_klienta,s.id_pracownika,s.numer_pokoju,s.liczba_lozek, s.timestamp 
	from Target.dbo.Wynajecie_pokoju s 
	join Target.dbo.t_key_Wynajecie_pokoju t on s.t_id = s.t_id 
	except select id_wynajecie_pokoju,id_klienta,id_pracownika,numer_pokoju,liczba_lozek, timestamp 
	from temp.dbo.Wynajecie_pokoju_fail
Insert into temp.dbo.Rezerwacja_fail 
	select id_rezerwacja,id_klienta,id_pracownika,typ,czy_potwierdzono, timestamp 
	from temp.dbo.Rezerwacja_temp 
	intersect select t.t_value, s.id_klienta,s.id_pracownika,s.typ,s.czy_potwierdzono	,s.timestamp 
	from Target.dbo.Rezerwacja s 
	join Target.dbo.t_key_Rezerwacja t on s.t_id = s.t_id 
	except select id_rezerwacja,id_klienta,id_pracownika,typ,czy_potwierdzono, timestamp 
	from temp.dbo.Rezerwacja_fail
Insert into temp.dbo.Platnosc_fail 
	select id_platnosci,id_pracownika,id_klienta,kwota,typ_platnosci, timestamp  
	from temp.dbo.Platnosc_temp 
	intersect select t.t_value, s.id_pracownika,s.id_klienta,s.kwota,s.typ_platnosci,s.timestamp 
	from Target.dbo.Platnosc s 
	join Target.dbo.t_key_platnosc t on s.t_id = s.t_id 
	except select id_platnosci,id_pracownika,id_klienta,kwota,typ_platnosci, timestamp  
	from temp.dbo.Platnosc_fail
Insert into temp.dbo.Obsluga_fail 
	select id_obslugi,id_klienta,id_pracownika,dostawa_do_pokoju,zamowienie, timestamp  
	from temp.dbo.Obsluga_temp 
	intersect select t.t_value,s.id_klienta,s.id_pracownika,s.dostawa_do_pokoju,s.zamowienie,s.timestamp 
	from Target.dbo.Obsluga s 
	join Target.dbo.t_key_obsluga t on s.t_id = s.t_id 
	except select id_obslugi,id_klienta,id_pracownika,dostawa_do_pokoju,zamowienie, timestamp  
	from temp.dbo.Obsluga_fail
Insert into temp.dbo.Pobyt_fail 
	select id_pobyt,id_klienta,id_pracownika,dlugosc_pobytu,liczba_osob, timestamp  
	from temp.dbo.Pobyt_temp 
	intersect select t.t_value, s.id_klienta,s.id_pracownika,s.dlugosc_pobytu,s.liczba_osob,s.timestamp 
	from Target.dbo.Pobyt s 
	join Target.dbo.t_key_Pobyt t on s.t_id = s.t_id 
	except select id_pobyt,id_klienta,id_pracownika,dlugosc_pobytu,liczba_osob, timestamp  
	from temp.dbo.Pobyt_fail

--rekordy, ktore maja nullowalny klucz
Insert into temp.dbo.Wynajecie_pokoju_fail 
	select id_wynajecie_pokoju,id_klienta,id_pracownika,numer_pokoju,liczba_lozek, timestamp 
	from temp.dbo.Wynajecie_pokoju_temp 
	where id_wynajecie_pokoju is null 
	except select id_wynajecie_pokoju,id_klienta,id_pracownika,numer_pokoju,liczba_lozek, timestamp 
	from temp.dbo.Wynajecie_pokoju_fail
Insert into temp.dbo.Rezerwacja_fail 
	select id_rezerwacja,id_klienta,id_pracownika,typ,czy_potwierdzono, timestamp 
	from temp.dbo.Rezerwacja_temp 
	where id_rezerwacja is null 
	except select id_rezerwacja,id_klienta,id_pracownika,typ,czy_potwierdzono, timestamp 
	from temp.dbo.Rezerwacja_fail
Insert into temp.dbo.Platnosc_fail 
	select id_platnosci,id_pracownika,id_klienta,kwota,typ_platnosci, timestamp  
	from temp.dbo.Platnosc_temp 
	where id_platnosci is null 
	except select id_platnosci,id_pracownika,id_klienta,kwota,typ_platnosci, timestamp  
	from temp.dbo.Platnosc_fail
Insert into temp.dbo.Obsluga_fail 
	select id_obslugi,id_klienta,id_pracownika,dostawa_do_pokoju,zamowienie, timestamp  
	from temp.dbo.Obsluga_temp 
	where id_obslugi is null 
	except select id_obslugi,id_klienta,id_pracownika,dostawa_do_pokoju,zamowienie, timestamp  
	from temp.dbo.Obsluga_fail
Insert into temp.dbo.Pobyt_fail 
	select id_pobyt,id_klienta,id_pracownika,dlugosc_pobytu,liczba_osob, timestamp  
	from temp.dbo.Pobyt_temp 
	where id_pobyt is null 
	except select id_pobyt,id_klienta,id_pracownika,dlugosc_pobytu,liczba_osob, timestamp  
	from temp.dbo.Pobyt_fail

--rekordy, ktore nie maja wymiarow
Insert into temp.dbo.Wynajecie_pokoju_fail 
	select id_wynajecie_pokoju,id_klienta,id_pracownika,numer_pokoju,liczba_lozek, timestamp 
	from temp.dbo.Wynajecie_pokoju_temp t 
	left join Target.dbo.t_key_pracownik p on t.id_pracownika = p.t_value 
	left join Target.dbo.t_key_klient k on k.t_value = t.id_klienta 
	where k.t_value is null or p.t_value is null 
	except select id_wynajecie_pokoju,id_klienta,id_pracownika,numer_pokoju,liczba_lozek, timestamp 
	from temp.dbo.Wynajecie_pokoju_fail
Insert into temp.dbo.Rezerwacja_fail 
	select id_rezerwacja,id_klienta,id_pracownika,typ,czy_potwierdzono, timestamp 
	from temp.dbo.Rezerwacja_temp t 
	left join Target.dbo.t_key_pracownik p on t.id_pracownika = p.t_value 
	left join Target.dbo.t_key_klient k on k.t_value = t.id_klienta 
	where k.t_value is null or p.t_value is null 
	except select id_rezerwacja,id_klienta,id_pracownika,typ,czy_potwierdzono, timestamp 
	from temp.dbo.Rezerwacja_fail
Insert into temp.dbo.Platnosc_fail 
	select id_platnosci,id_pracownika,id_klienta,kwota,typ_platnosci, timestamp  
	from temp.dbo.Platnosc_temp t 
	left join Target.dbo.t_key_pracownik p on t.id_pracownika = p.t_value 
	left join Target.dbo.t_key_klient k on k.t_value = t.id_klienta 
	where k.t_value is null or p.t_value is null 
	except select id_platnosci,id_pracownika,id_klienta,kwota,typ_platnosci, timestamp  
	from temp.dbo.Platnosc_fail
Insert into temp.dbo.Obsluga_fail 
	select id_obslugi,id_klienta,id_pracownika,dostawa_do_pokoju,zamowienie, timestamp  
	from temp.dbo.Obsluga_temp t 
	left join Target.dbo.t_key_pracownik p on t.id_pracownika = p.t_value 
	left join Target.dbo.t_key_klient k on k.t_value = t.id_klienta 
	where k.t_value is null or p.t_value is null 
	except select id_obslugi,id_klienta,id_pracownika,dostawa_do_pokoju,zamowienie, timestamp  
	from temp.dbo.Obsluga_fail
Insert into temp.dbo.Pobyt_fail 
	select id_pobyt,id_klienta,id_pracownika,dlugosc_pobytu,liczba_osob, timestamp  
	from temp.dbo.Pobyt_temp t 
	left join Target.dbo.t_key_pracownik p on t.id_pracownika = p.t_value 
	left join Target.dbo.t_key_klient k on k.t_value = t.id_klienta 
	where k.t_value is null or p.t_value is null 
	except select id_pobyt,id_klienta,id_pracownika,dlugosc_pobytu,liczba_osob, timestamp  
	from temp.dbo.Pobyt_fail




end;

GO
/****** Object:  StoredProcedure [dbo].[InsertTemp_stg_dimensions]    Script Date: 2019-09-13 21:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertTemp_stg_dimensions] as
begin

--do stg, to co nie ma nulli i czego nie ma w targecie
--do faila, to co juz jest w targecie

/*tutaj skonczylem, robie*/--done
--do wstawienia zupelnie nowych rekordow
Insert into temp.dbo.Klient_stg 
	select id_klienta,imie,nazwisko, cast (timestamp as smalldatetime) 
	from temp.dbo.Klient_temp 
	except select tk.t_value, imie,nazwisko, timestamp 
	from target.dbo.Klient k 
	join target.dbo.T_key_Klient tk on tk.t_id=k.t_id  
	except select t.t_value, s.imie,s.nazwisko, cast (timestamp as smalldatetime) 
	from Temp.dbo.Klient_stg s 
	join Target.dbo.t_key_Klient t on s.id_klienta = t.t_value 
	where t.t_id is NOT NULL 			/**/
Insert into temp.dbo.Pracownik_stg 
	select id_pracownika,imie,nazwisko, cast (timestamp as smalldatetime) 
	from temp.dbo.Pracownik_temp 
	except select tk.t_value, imie,nazwisko,timestamp 
	from target.dbo.Pracownik p 
	join target.dbo.T_key_pracownik tk on tk.t_id=p.t_id 
	except select t.t_value, s.imie,s.nazwisko,cast (timestamp as smalldatetime) 
	from Temp.dbo.Pracownik_stg s 
	join Target.dbo.t_key_pracownik t on s.id_pracownika = t.t_value 
	where id_pracownika is NOT NULL 	/**/

--do wstawienia rekordow, w ktorych zmienila sie jakas wartosc
Insert into temp.dbo.Klient_stg 
	select t.id_klienta,t.imie,t.nazwisko, t.timestamp 
	from temp.dbo.klient_temp t 
	join target.dbo.T_key_Klient k on k.t_value = t.id_klienta 
	left join target.dbo.Klient kl on kl.t_id = k.t_id 
	where kl.t_id is null 
	except select tk.t_value, imie,nazwisko, timestamp 
	from target.dbo.Klient k 
	join target.dbo.T_key_Klient tk on tk.t_id=k.t_id 
Insert into temp.dbo.Pracownik_stg 
	select t.id_pracownika, t.imie,t.nazwisko, t.timestamp 
	from temp.dbo.Pracownik_temp t 
	join target.dbo.T_key_pracownik k on k.t_value = t.id_pracownika 
	left join target.dbo.pracownik kl on kl.t_id = k.t_id 
	where kl.t_id is null 
	except select tk.t_value, imie,nazwisko,timestamp 
	from target.dbo.Pracownik p 
	join target.dbo.t_key_pracownik tk on p.t_id=tk.t_id

--do wstawienia identycznych rekordow jak w targecie do tabeli bledow
Insert into temp.dbo.Klient_fail 
	select id_klienta,imie,nazwisko,cast (timestamp as smalldatetime) 
	from temp.dbo.Klient_temp 
	intersect select t.t_value, s.imie,s.nazwisko,cast (timestamp as smalldatetime) 
	from Target.dbo.Klient s 
	join Target.dbo.t_key_Klient t on s.t_id = t.t_id 
	except select id_klienta,imie,nazwisko,cast (timestamp as smalldatetime) 
	from temp.dbo.Klient_fail
Insert into temp.dbo.Pracownik_fail 
	select id_pracownika,imie, nazwisko,cast (timestamp as smalldatetime) 
	from temp.dbo.Pracownik_temp 
	intersect  select t.t_value, s.imie,s.nazwisko,cast (timestamp as smalldatetime) 
	from Target.dbo.Pracownik s 
	join Target.dbo.t_key_pracownik t on s.t_id = t.t_id 
	except select id_pracownika,imie, nazwisko,cast (timestamp as smalldatetime) 
	from temp.dbo.Pracownik_fail

--do wstawienia nullowalncyh kluczy do tabeli bledow
Insert into temp.dbo.Klient_fail 
	select id_klienta,imie,nazwisko, timestamp 
	from temp.dbo.Klient_temp 
	where id_klienta is null 
	except select id_klienta,imie,nazwisko,cast (timestamp as smalldatetime) 
	from temp.dbo.Klient_fail
Insert into temp.dbo.Pracownik_fail 
	select id_pracownika,imie, nazwisko, timestamp 
	from temp.dbo.Pracownik_temp 
	where id_pracownika is null 
	except select id_pracownika,imie, nazwisko,cast (timestamp as smalldatetime) 
	from temp.dbo.Pracownik_fail


end;

GO
USE [master]
GO
ALTER DATABASE [Temp] SET  READ_WRITE 
GO
