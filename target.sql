USE [master]
GO
/****** Object:  Database [Target]    Script Date: 2019-09-13 21:29:41 ******/
CREATE DATABASE [Target]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Target', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Target.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Target_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Target_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Target] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Target].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Target] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Target] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Target] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Target] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Target] SET ARITHABORT OFF 
GO
ALTER DATABASE [Target] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Target] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Target] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Target] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Target] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Target] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Target] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Target] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Target] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Target] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Target] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Target] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Target] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Target] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Target] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Target] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Target] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Target] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Target] SET  MULTI_USER 
GO
ALTER DATABASE [Target] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Target] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Target] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Target] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Target] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Target]
GO
/****** Object:  Table [dbo].[Klient]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Klient](
	[t_id] [numeric](18, 0) NULL,
	[imie] [varchar](20) NULL,
	[nazwisko] [varchar](20) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Obsluga]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obsluga](
	[t_id] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[dostawa_do_pokoju] [bit] NULL,
	[zamowienie] [varchar](40) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Platnosc]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Platnosc](
	[t_id] [numeric](15, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[kwota] [numeric](18, 0) NULL,
	[typ_platnosci] [varchar](20) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pobyt]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pobyt](
	[t_id] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[dlugosc_pobytu] [numeric](18, 0) NULL,
	[liczba_osob] [numeric](18, 0) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pracownik]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pracownik](
	[t_id] [numeric](18, 0) NULL,
	[imie] [varchar](20) NULL,
	[nazwisko] [varchar](20) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rezerwacja]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rezerwacja](
	[t_id] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[typ] [varchar](20) NULL,
	[czy_potwierdzono] [bit] NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_key_Klient]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_key_Klient](
	[t_id] [numeric](18, 0) NULL,
	[t_value] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_key_Obsluga]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_key_Obsluga](
	[t_id] [numeric](18, 0) NULL,
	[t_value] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_key_Platnosc]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_key_Platnosc](
	[t_id] [numeric](18, 0) NULL,
	[t_value] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_key_Pobyt]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_key_Pobyt](
	[t_id] [numeric](18, 0) NULL,
	[t_value] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_key_Pracownik]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_key_Pracownik](
	[t_id] [numeric](18, 0) NULL,
	[t_value] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_key_Rezerwacja]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_key_Rezerwacja](
	[t_id] [numeric](18, 0) NULL,
	[t_value] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_key_Wynajecie_pokoju]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_key_Wynajecie_pokoju](
	[t_id] [numeric](18, 0) NULL,
	[t_value] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Wynajecie_pokoju]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wynajecie_pokoju](
	[t_id] [numeric](18, 0) NULL,
	[id_klienta] [numeric](18, 0) NULL,
	[id_pracownika] [numeric](18, 0) NULL,
	[numer_pokoju] [numeric](18, 0) NULL,
	[liczba_lozek] [numeric](18, 0) NULL,
	[timestamp] [smalldatetime] NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[Ilosc_rezerwacji_ktore_nie_zostaly_potwierdzone]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[Ilosc_rezerwacji_ktore_nie_zostaly_potwierdzone] as
select count(r.t_id) as Ilosc_rezerwacji_ktore_nie_zostaly_potwierdzone
from Rezerwacja r
join T_key_Rezerwacja t on r.t_id = t.t_id
where czy_potwierdzono = 0 or czy_potwierdzono = null

GO
/****** Object:  View [dbo].[Klienci_z_pobytem_ponad_tygodnia]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[Klienci_z_pobytem_ponad_tygodnia] as
select nazwisko as klienci
from Klient k
join Pobyt p on p.id_klienta = k.t_id
where dlugosc_pobytu > 7 

GO
/****** Object:  View [dbo].[Liczba_wynajec_pokojow_z_1_pietra]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[Liczba_wynajec_pokojow_z_1_pietra] as
select count(numer_pokoju) as liczba_wynajec
from Wynajecie_pokoju wp
join T_key_Wynajecie_pokoju t on wp.t_id = t.t_id
where numer_pokoju like '1%'

GO
/****** Object:  View [dbo].[numery_pokojow_z_drugiego_pietra_z_conajmniej_dwoma_lozkami]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[numery_pokojow_z_drugiego_pietra_z_conajmniej_dwoma_lozkami] as
select numer_pokoju
from Wynajecie_pokoju wp
join T_key_Wynajecie_pokoju t on wp.t_id = t.t_id
where numer_pokoju like '2%' and liczba_lozek >= 2

GO
/****** Object:  StoredProcedure [dbo].[InsertTarget]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertTarget] as
begin

--historyzacja
update target.dbo.Rezerwacja 
set timestamp = '1970-01-01 12:00:00'
where t_id in (
	select t_id 
	from target.dbo.T_key_Rezerwacja t 
	join temp.dbo.Rezerwacja_stg s 
	on s.id_rezerwacja = t.t_value)


update target.dbo.Obsluga
set timestamp = '1970-01-01 12:00:00'
where t_id in (
	select t_id 
	from target.dbo.T_key_Obsluga t 
	join temp.dbo.Obsluga_stg k 
	on t.t_value = k.id_obslugi)

update target.dbo.Pobyt
set timestamp = '1970-01-01 12:00:00'
where t_id in (
	select t_id 
	from target.dbo.T_key_Pobyt t 
	join temp.dbo.Pobyt_stg p 
	on t.t_value= p.id_pobyt)

update target.dbo.Wynajecie_pokoju 
set timestamp = '1970-01-01 12:00:00'
where t_id in (
	select t_id 
	from target.dbo.T_key_Wynajecie_pokoju t 
	join temp.dbo.Wynajecie_pokoju_stg s 
	on s.id_wynajecie_pokoju = t.t_value)

update target.dbo.Platnosc 
set timestamp = '1970-01-01 12:00:00'
where t_id in (
	select t_id 
	from target.dbo.T_key_Platnosc t 
	join temp.dbo.Platnosc_stg s 
	on s.id_platnosci = t.t_value)


--generowanie klucza
insert into Target.dbo.T_key_Rezerwacja  
	select ROW_NUMBER()OVER(ORDER BY id_rezerwacja)+max(id_rezerwacja), id_rezerwacja 
	from Temp.dbo.Rezerwacja_stg 
	where id_rezerwacja not 
	in (select t_value from target.dbo.T_key_Rezerwacja) 
	group by id_rezerwacja;
insert into Target.dbo.T_key_Obsluga
	select ROW_NUMBER()OVER(ORDER BY id_obslugi)+max(id_obslugi),id_obslugi 
	from Temp.dbo.Obsluga_stg 
	where id_obslugi not 
	in (select t_value from target.dbo.T_key_Obsluga) 
	group by id_obslugi;
insert into Target.dbo.T_key_Pobyt
	select ROW_NUMBER()OVER(ORDER BY id_pobyt)+max(id_pobyt),id_pobyt 
	from Temp.dbo.Pobyt_stg 
	where id_pobyt not 
	in (select t_value from target.dbo.T_key_Pobyt) 
	group by id_pobyt;
insert into Target.dbo.T_key_Wynajecie_pokoju 
	select ROW_NUMBER()OVER(ORDER BY id_wynajecie_pokoju)+max(id_wynajecie_pokoju),id_wynajecie_pokoju 
	from Temp.dbo.Wynajecie_pokoju_stg where id_wynajecie_pokoju not 
	in (select t_value from target.dbo.T_key_Wynajecie_pokoju) 
	group by id_wynajecie_pokoju;
insert into Target.dbo.T_key_Platnosc
	select ROW_NUMBER()OVER(ORDER BY id_platnosci)+max(id_platnosci),id_platnosci 
	from Temp.dbo.Platnosc_stg 
	where id_platnosci not 
	in (select t_value from target.dbo.T_key_Platnosc) 
	group by id_platnosci;

--wstawienie do hd
insert into Target.dbo.Rezerwacja 
	select t.t_id, s.id_klienta,s.id_pracownika,s.typ,s.czy_potwierdzono,s.timestamp 
	from Temp.dbo.Rezerwacja_stg s 
	join Target.dbo.T_key_Rezerwacja t on s.id_rezerwacja = t.t_value 
	where s.id_rezerwacja = t.t_value
insert into Target.dbo.Obsluga 
	select t.t_id, s.id_klienta,s.id_pracownika,s.dostawa_do_pokoju,s.zamowienie, s.timestamp 
	from Temp.dbo.Obsluga_stg s 
	join Target.dbo.T_key_Obsluga t on s.id_obslugi = t.t_value 
	where s.id_obslugi = t.t_value
insert into Target.dbo.Pobyt 
	select t.t_id, s.id_klienta,s.id_pracownika,s.dlugosc_pobytu,s.liczba_osob,s.timestamp 
	from Temp.dbo.Pobyt_stg s 
	join Target.dbo.T_key_Pobyt t on s.id_pobyt = t.t_value 
	where s.id_pobyt = t.t_value
insert into Target.dbo.Wynajecie_pokoju 
	select t.t_id, s.id_klienta,s.id_pracownika,s.numer_pokoju,s.liczba_lozek,s.timestamp 
	from Temp.dbo.Wynajecie_pokoju_stg s 
	join Target.dbo.T_key_Wynajecie_pokoju t on s.id_wynajecie_pokoju = t.t_value 
	where s.id_wynajecie_pokoju = t.t_value
insert into Target.dbo.Platnosc 
	select t.t_id, s.id_pracownika,s.id_klienta,s.kwota,s.typ_platnosci,s.timestamp 
	from Temp.dbo.Platnosc_stg s 
	join Target.dbo.T_key_Platnosc t on s.id_platnosci = t.t_value 
	where s.id_platnosci = t.t_value

end

GO
/****** Object:  StoredProcedure [dbo].[InsertTarget_dimensions]    Script Date: 2019-09-13 21:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertTarget_dimensions] as
begin

----

--historyzacja
update target.dbo.Klient
set timestamp = '1970-01-01 12:00:00'
where t_id 
in (select t_id 
	from target.dbo.t_key_klient t 
	join temp.dbo.Klient_stg k 
	on t.t_value = k.id_klienta)

update target.dbo.Pracownik
set timestamp = '1970-01-01 12:00:00'
where t_id 
in (select t_id 
	from target.dbo.t_key_pracownik t 
	join temp.dbo.pracownik_stg p 
	on t.t_value= p.id_pracownika)

--generowanie klucza z wykorzystaniem generatora od prowadzacego zajecia
insert into Target.dbo.T_key_Klient 
	select ROW_NUMBER()OVER(ORDER BY id_klienta)+max(id_klienta),id_klienta 
	from Temp.dbo.Klient_stg 
	where id_klienta not 
	in (select t_value 
		from target.dbo.t_key_klient) 
	group by id_klienta;
insert into Target.dbo.T_key_Pracownik 
	select ROW_NUMBER()OVER(ORDER BY id_pracownika)+max(id_pracownika),id_pracownika 
	from Temp.dbo.Pracownik_stg 
	where id_pracownika not 
	in(select t_value 
		from target.dbo.t_key_pracownik) 
	group by id_pracownika;

--wstawienie rekordu do tabeli docelowej w hd
insert into Target.dbo.Klient 
	select t.t_id, s.imie,s.nazwisko, s.timestamp 
	from Temp.dbo.Klient_stg s 
	join Target.dbo.t_key_Klient t 
	on s.id_klienta = t.t_value 
	where s.id_klienta = t.t_value
insert into Target.dbo.Pracownik 
	select t.t_id, s.imie,s.nazwisko,s.timestamp 
	from Temp.dbo.Pracownik_stg s 
	join Target.dbo.t_key_pracownik t 
	on s.id_pracownika = t.t_value 
	where s.id_pracownika = t.t_value

end

GO
USE [master]
GO
ALTER DATABASE [Target] SET  READ_WRITE 
GO
