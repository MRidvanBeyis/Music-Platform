USE [master]
GO
/****** Object:  Database [veritabaniproje]    Script Date: 29.12.2023 21:27:58 ******/
CREATE DATABASE [veritabaniproje]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'veritabaniproje', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\veritabaniproje.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'veritabaniproje_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\veritabaniproje_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [veritabaniproje].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [veritabaniproje] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [veritabaniproje] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [veritabaniproje] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [veritabaniproje] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [veritabaniproje] SET ARITHABORT OFF 
GO
ALTER DATABASE [veritabaniproje] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [veritabaniproje] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [veritabaniproje] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [veritabaniproje] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [veritabaniproje] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [veritabaniproje] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [veritabaniproje] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [veritabaniproje] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [veritabaniproje] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [veritabaniproje] SET  ENABLE_BROKER 
GO
ALTER DATABASE [veritabaniproje] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [veritabaniproje] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [veritabaniproje] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [veritabaniproje] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [veritabaniproje] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [veritabaniproje] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [veritabaniproje] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [veritabaniproje] SET RECOVERY FULL 
GO
ALTER DATABASE [veritabaniproje] SET  MULTI_USER 
GO
ALTER DATABASE [veritabaniproje] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [veritabaniproje] SET DB_CHAINING OFF 
GO
ALTER DATABASE [veritabaniproje] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [veritabaniproje] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [veritabaniproje] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'veritabaniproje', N'ON'
GO
ALTER DATABASE [veritabaniproje] SET QUERY_STORE = ON
GO
ALTER DATABASE [veritabaniproje] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200)
GO
USE [veritabaniproje]
GO
/****** Object:  Table [dbo].[Albumler]    Script Date: 29.12.2023 21:27:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Albumler](
	[AlbumID] [int] NOT NULL,
	[AlbumAdi] [nvarchar](100) NOT NULL,
	[CikisID] [int] NULL,
	[SanatciID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AlbumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Begenilme]    Script Date: 29.12.2023 21:27:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Begenilme](
	[BegenilmeID] [int] NOT NULL,
	[BegenilmeOrani] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[BegenilmeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalmaListeleri]    Script Date: 29.12.2023 21:27:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalmaListeleri](
	[CalmaListesiID] [int] NOT NULL,
	[CalmaListesiAdi] [nvarchar](255) NULL,
	[KullaniciID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CalmaListesiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalmaListesiIcerik]    Script Date: 29.12.2023 21:27:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalmaListesiIcerik](
	[CLIcerikID] [int] NOT NULL,
	[CalmaListesiID] [int] NULL,
	[SarkiID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CLIcerikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cinsiyet]    Script Date: 29.12.2023 21:27:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cinsiyet](
	[CinsiyetID] [int] NOT NULL,
	[Cinsiyet] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CinsiyetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donemler]    Script Date: 29.12.2023 21:27:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donemler](
	[DonemID] [int] NOT NULL,
	[DonemAdi] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DonemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[il]    Script Date: 29.12.2023 21:27:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[il](
	[ilID] [int] NOT NULL,
	[ilAdi] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 29.12.2023 21:27:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](100) NOT NULL,
	[KullaniciEposta] [nvarchar](100) NULL,
	[KullaniciSifre] [nvarchar](255) NOT NULL,
	[KullaniciTelNo] [bigint] NULL,
	[DogumTarihi] [date] NULL,
	[CinsiyetID] [int] NULL,
	[ilID] [int] NULL,
 CONSTRAINT [PK__Kullanic__E011F09B495E9F40] PRIMARY KEY CLUSTERED 
(
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanatcilar]    Script Date: 29.12.2023 21:27:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanatcilar](
	[SanatciID] [int] NOT NULL,
	[SanatciAdi] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SanatciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sarkilar]    Script Date: 29.12.2023 21:27:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sarkilar](
	[SarkiID] [int] NOT NULL,
	[SarkiAdi] [nvarchar](100) NOT NULL,
	[SarkiSuresi] [time](0) NULL,
	[DonemID] [int] NULL,
	[TurID] [int] NULL,
	[AlbumID] [int] NULL,
	[BegenilmeID] [int] NULL,
	[SanatciID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SarkiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SarkininCikisYili]    Script Date: 29.12.2023 21:27:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SarkininCikisYili](
	[CikisID] [int] NOT NULL,
	[SarkininCikisYili] [int] NOT NULL,
	[DonemID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CikisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turler]    Script Date: 29.12.2023 21:27:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turler](
	[TurID] [int] NOT NULL,
	[SarkiTuru] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (1, N'Ah Canım Vah Canım', 25, 1)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (2, N'Süperstar4', 18, 2)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (3, N'5.Yıl Önce 10 Yıl Sonra', 16, 2)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (4, N'Süperstar 83', 14, 2)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (5, N'Haydi Söyle', 18, 3)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (6, N'Single', 36, 4)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (7, N'Ayrılık Zamansız Gelir', 38, 5)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (8, N'Sahibinden ihtiyaçtan', 19, 6)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (9, N'21.Yüzyılın Adamı', 17, 6)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (10, N'Değmesin Yağlı Boya', 17, 6)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (11, N'single', 14, 6)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (12, N'Gel Gel', 36, 7)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (13, N'Hoş geldin', 31, 7)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (14, N'Acıların Kanadı', 17, 8)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (15, N'Şans Çocuğu', 19, 9)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (16, N'single', 11, 9)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (17, N'Adını Suya Yazdım', 24, 10)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (18, N'Sosyeten Uymaz', 24, 10)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (19, N'Whirl', 26, 11)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (20, N'Single', 31, 11)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (21, N'Sebebim', 28, 12)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (22, N'Sebebim', 28, 12)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (23, N'Arnavut Kaldırımı', 25, 13)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (24, N'single', 13, 14)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (25, N'Alaturka Benim Canım', 37, 15)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (26, N'Deli Et Beni', 35, 15)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (27, N'Başroldeyim', 16, 16)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (28, N'Single', 25, 17)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (29, N'Unutmadık Seni', 4, 18)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (30, N'Ferhat Göçer', 30, 19)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (31, N'Alagül', 37, 20)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (32, N'Kader Utansın', 6, 21)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (33, N'Özelsin', 36, 21)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (34, N'Sade ve Sadece', 33, 22)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (35, N'Uçacaksın', 36, 22)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (36, N'Yalan', 31, 23)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (37, N'Uzat Elini', 33, 23)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (38, N'Single', 36, 24)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (39, N'Single', 36, 25)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (40, N'Single', 37, 26)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (41, N'Çemberimde Gül Oya', 36, 26)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (42, N'Sen Yoluna Ben Yoluma', 26, 27)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (43, N'Sıkıldım', 32, 28)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (44, N'Bir Yaz Daha Bitiyor', 36, 29)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (45, N'Single', 33, 29)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (46, N'Duman 2', 33, 30)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (47, N'Duman 1', 17, 30)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (48, N'Dertte Mesut Ediyor', 36, 31)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (49, N'Kapı Önünde Durdum', 40, 31)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (50, N'Sabret Dostum', 40, 32)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (51, N'Single', 3, 33)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (52, N'Yeniden Hayata', 3, 34)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (53, N'Sal', 11, 35)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (54, N'Teselliye Sen Gerek', 33, 36)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (55, N'single', 37, 37)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (56, N'Geceler', 33, 37)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (57, N'Nilüfer 84', 12, 37)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (58, N'Sultan-ı Yegah', 13, 38)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (59, N'Melankoli', 18, 39)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (60, N'Dostluğa Davet', 15, 39)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (61, N'single', 12, 39)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (62, N'Seninle Beraber', 19, 40)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (63, N'Bir Ömür', 9, 41)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (64, N'Beni Affet', 16, 42)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (65, N'Bütün Meyhanelerini Dolaştım İstanbul''un', 18, 42)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (66, N'Yeşilmişik', 3, 43)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (67, N'Günebakan', 8, 43)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (68, N'Sevda', 3, 44)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (69, N'Git', 19, 45)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (70, N'single', 17, 45)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (71, N'Sen Ağlama', 8, 45)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (72, N'Ağlamak Güzeldir', 17, 45)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (73, N'single', 16, 46)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (74, N'single', 15, 47)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (75, N'single', 12, 48)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (76, N'Rus Kozmonotları', 12, 49)
INSERT [dbo].[Albumler] ([AlbumID], [AlbumAdi], [CikisID], [SanatciID]) VALUES (77, N'Aşkın Haritası', 6, 50)
GO
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (1, 1)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (2, 1.1)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (3, 1.2)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (4, 1.3)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (5, 1.4)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (6, 1.5)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (7, 1.6)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (8, 1.7)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (9, 1.8)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (10, 1.9)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (11, 2)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (12, 2.1)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (13, 2.2)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (14, 2.3)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (15, 2.4)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (16, 2.5)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (17, 2.6)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (18, 2.7)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (19, 2.8)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (20, 2.9)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (21, 3)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (22, 3.1)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (23, 3.2)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (24, 3.3)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (25, 3.4)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (26, 3.5)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (27, 3.6)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (28, 3.7)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (29, 3.8)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (30, 3.9)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (31, 4)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (32, 4.1)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (33, 4.2)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (34, 4.3)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (35, 4.4)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (36, 4.5)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (37, 4.6)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (38, 4.7)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (39, 4.7)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (40, 4.8)
INSERT [dbo].[Begenilme] ([BegenilmeID], [BegenilmeOrani]) VALUES (41, 5)
GO
INSERT [dbo].[CalmaListeleri] ([CalmaListesiID], [CalmaListesiAdi], [KullaniciID]) VALUES (1, N'Nisa Günlük', 1)
INSERT [dbo].[CalmaListeleri] ([CalmaListesiID], [CalmaListesiAdi], [KullaniciID]) VALUES (2, N'Spor', 2)
INSERT [dbo].[CalmaListeleri] ([CalmaListesiID], [CalmaListesiAdi], [KullaniciID]) VALUES (3, N'Eğlenceli', 3)
INSERT [dbo].[CalmaListeleri] ([CalmaListesiID], [CalmaListesiAdi], [KullaniciID]) VALUES (4, N'Kopmalık', 4)
INSERT [dbo].[CalmaListeleri] ([CalmaListesiID], [CalmaListesiAdi], [KullaniciID]) VALUES (5, N'Efkarlı', 5)
INSERT [dbo].[CalmaListeleri] ([CalmaListesiID], [CalmaListesiAdi], [KullaniciID]) VALUES (6, N'Disco Party', 1)
INSERT [dbo].[CalmaListeleri] ([CalmaListesiID], [CalmaListesiAdi], [KullaniciID]) VALUES (7, N'Piyasa', 3)
GO
INSERT [dbo].[CalmaListesiIcerik] ([CLIcerikID], [CalmaListesiID], [SarkiID]) VALUES (1, 5, 15)
INSERT [dbo].[CalmaListesiIcerik] ([CLIcerikID], [CalmaListesiID], [SarkiID]) VALUES (2, 5, 25)
INSERT [dbo].[CalmaListesiIcerik] ([CLIcerikID], [CalmaListesiID], [SarkiID]) VALUES (3, 5, 17)
INSERT [dbo].[CalmaListesiIcerik] ([CLIcerikID], [CalmaListesiID], [SarkiID]) VALUES (4, 5, 70)
INSERT [dbo].[CalmaListesiIcerik] ([CLIcerikID], [CalmaListesiID], [SarkiID]) VALUES (5, 5, 75)
INSERT [dbo].[CalmaListesiIcerik] ([CLIcerikID], [CalmaListesiID], [SarkiID]) VALUES (6, 5, 19)
INSERT [dbo].[CalmaListesiIcerik] ([CLIcerikID], [CalmaListesiID], [SarkiID]) VALUES (7, 3, 35)
INSERT [dbo].[CalmaListesiIcerik] ([CLIcerikID], [CalmaListesiID], [SarkiID]) VALUES (8, 3, 58)
INSERT [dbo].[CalmaListesiIcerik] ([CLIcerikID], [CalmaListesiID], [SarkiID]) VALUES (9, 3, 40)
INSERT [dbo].[CalmaListesiIcerik] ([CLIcerikID], [CalmaListesiID], [SarkiID]) VALUES (10, 2, 29)
INSERT [dbo].[CalmaListesiIcerik] ([CLIcerikID], [CalmaListesiID], [SarkiID]) VALUES (11, 2, 13)
INSERT [dbo].[CalmaListesiIcerik] ([CLIcerikID], [CalmaListesiID], [SarkiID]) VALUES (12, 1, 7)
INSERT [dbo].[CalmaListesiIcerik] ([CLIcerikID], [CalmaListesiID], [SarkiID]) VALUES (13, 1, 2)
INSERT [dbo].[CalmaListesiIcerik] ([CLIcerikID], [CalmaListesiID], [SarkiID]) VALUES (14, 1, 8)
GO
INSERT [dbo].[Cinsiyet] ([CinsiyetID], [Cinsiyet]) VALUES (1, N'kadın')
INSERT [dbo].[Cinsiyet] ([CinsiyetID], [Cinsiyet]) VALUES (2, N'erkek')
GO
INSERT [dbo].[Donemler] ([DonemID], [DonemAdi]) VALUES (1, N'70ler')
INSERT [dbo].[Donemler] ([DonemID], [DonemAdi]) VALUES (2, N'80ler')
INSERT [dbo].[Donemler] ([DonemID], [DonemAdi]) VALUES (3, N'90lar')
INSERT [dbo].[Donemler] ([DonemID], [DonemAdi]) VALUES (4, N'00ler')
GO
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (1, N'Adana')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (2, N'Adıyaman')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (3, N'Afyonkarahisar')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (4, N'Ağrı')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (5, N'Amasya')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (6, N'Ankara')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (7, N'Antalya')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (8, N'Artvin')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (9, N'Aydın')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (10, N'Balıkesir')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (11, N'Bilecik')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (12, N'Bingöl')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (13, N'Bitlis')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (14, N'Bolu')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (15, N'Burdur')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (16, N'Bursa')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (17, N'Çanakkale')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (18, N'Çankırı')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (19, N'Çorum')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (20, N'Denizli')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (21, N'Diyarbakır')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (22, N'Edirne')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (23, N'Elazığ')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (24, N'Erzincan')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (25, N'Erzurum')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (26, N'Eskişehir')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (27, N'Gaziantep')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (28, N'Giresun')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (29, N'Gümüşhane')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (30, N'Hakkâri')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (31, N'Hatay')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (32, N'Isparta')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (33, N'İçel (Mersin)')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (34, N'İstanbul')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (35, N'İzmir')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (36, N'Kars')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (37, N'Kastamonu')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (38, N'Kayseri')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (39, N'Kırklareli')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (40, N'Kırşehir')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (41, N'Kocaeli')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (42, N'Konya')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (43, N'Kütahya')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (44, N'Malatya')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (45, N'Manisa')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (46, N'Kahramanmaraş')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (47, N'Mardin')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (48, N'Muğla')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (49, N'Muş')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (50, N'Nevşehir')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (51, N'Niğde')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (52, N'Ordu')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (53, N'Rize')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (54, N'Sakarya')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (55, N'Samsun')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (56, N'Siirt')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (57, N'Sinop')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (58, N'Sivas')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (59, N'Tekirdağ')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (60, N'Tokat')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (61, N'Trabzon')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (62, N'Tunceli')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (63, N'Şanlıurfa')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (64, N'Uşak')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (65, N'Van')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (66, N'Yozgat')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (67, N'Zonguldak')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (68, N'Aksaray')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (69, N'Bayburt')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (70, N'Karaman')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (71, N'Kırıkkale')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (72, N'Batman')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (73, N'Şırnak')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (74, N'Bartın')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (75, N'Ardahan')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (76, N'Iğdır')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (77, N'Yalova')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (78, N'Karabük')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (79, N'Kilis')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (80, N'Osmaniye')
INSERT [dbo].[il] ([ilID], [ilAdi]) VALUES (81, N'Düzce')
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 

INSERT [dbo].[Kullanicilar] ([KullaniciID], [KullaniciAdi], [KullaniciEposta], [KullaniciSifre], [KullaniciTelNo], [DogumTarihi], [CinsiyetID], [ilID]) VALUES (1, N'Nisa', N'Nisa@gmail.com', N'sifre123', 1234567890, CAST(N'2004-10-08' AS Date), 1, 8)
INSERT [dbo].[Kullanicilar] ([KullaniciID], [KullaniciAdi], [KullaniciEposta], [KullaniciSifre], [KullaniciTelNo], [DogumTarihi], [CinsiyetID], [ilID]) VALUES (2, N'Rıdvan', N'Ridvan@gmail.com', N'sifre321', 234567890, CAST(N'2001-07-01' AS Date), 2, 34)
INSERT [dbo].[Kullanicilar] ([KullaniciID], [KullaniciAdi], [KullaniciEposta], [KullaniciSifre], [KullaniciTelNo], [DogumTarihi], [CinsiyetID], [ilID]) VALUES (3, N'Şimal', N'Simal@gmail.com', N'sifre231', 345678901, CAST(N'2002-05-07' AS Date), 1, 53)
INSERT [dbo].[Kullanicilar] ([KullaniciID], [KullaniciAdi], [KullaniciEposta], [KullaniciSifre], [KullaniciTelNo], [DogumTarihi], [CinsiyetID], [ilID]) VALUES (4, N'Eray', N'Eray@gmail.com', N'sifre213', 4567890123, CAST(N'2004-01-01' AS Date), 2, 28)
INSERT [dbo].[Kullanicilar] ([KullaniciID], [KullaniciAdi], [KullaniciEposta], [KullaniciSifre], [KullaniciTelNo], [DogumTarihi], [CinsiyetID], [ilID]) VALUES (5, N'Ceyda', N'Ceyda@gmail.com', N'sifre132', 2134567890, CAST(N'2003-04-12' AS Date), 1, 47)
INSERT [dbo].[Kullanicilar] ([KullaniciID], [KullaniciAdi], [KullaniciEposta], [KullaniciSifre], [KullaniciTelNo], [DogumTarihi], [CinsiyetID], [ilID]) VALUES (6, N'jmhy', N'hmg', N'5424', 525, NULL, NULL, NULL)
INSERT [dbo].[Kullanicilar] ([KullaniciID], [KullaniciAdi], [KullaniciEposta], [KullaniciSifre], [KullaniciTelNo], [DogumTarihi], [CinsiyetID], [ilID]) VALUES (7, N'FUIDN', N'DCS', N'DCS', 1456, NULL, NULL, NULL)
INSERT [dbo].[Kullanicilar] ([KullaniciID], [KullaniciAdi], [KullaniciEposta], [KullaniciSifre], [KullaniciTelNo], [DogumTarihi], [CinsiyetID], [ilID]) VALUES (8, N'ridvann', N'rid@gmail.com', N'12345r', 12342345145, NULL, NULL, NULL)
INSERT [dbo].[Kullanicilar] ([KullaniciID], [KullaniciAdi], [KullaniciEposta], [KullaniciSifre], [KullaniciTelNo], [DogumTarihi], [CinsiyetID], [ilID]) VALUES (9, N'', N'', N'', 0, NULL, NULL, NULL)
INSERT [dbo].[Kullanicilar] ([KullaniciID], [KullaniciAdi], [KullaniciEposta], [KullaniciSifre], [KullaniciTelNo], [DogumTarihi], [CinsiyetID], [ilID]) VALUES (10, N'rgeer', N'gerge', N'eger', 527827, NULL, NULL, NULL)
INSERT [dbo].[Kullanicilar] ([KullaniciID], [KullaniciAdi], [KullaniciEposta], [KullaniciSifre], [KullaniciTelNo], [DogumTarihi], [CinsiyetID], [ilID]) VALUES (11, N'vfeve', N'ever', N'er', 528, NULL, NULL, NULL)
INSERT [dbo].[Kullanicilar] ([KullaniciID], [KullaniciAdi], [KullaniciEposta], [KullaniciSifre], [KullaniciTelNo], [DogumTarihi], [CinsiyetID], [ilID]) VALUES (12, N'dfhnveh', N'gever', N'gver', 524, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
GO
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (1, N'Ahmet')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (2, N'Ajda Pekkan')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (3, N'Aşkın Nur Yengi')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (4, N'Ayşe Hatun')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (5, N'Barış Akarsu')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (6, N'Barış Manço')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (7, N'Bengü')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (8, N'Bergen')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (9, N'Cem Karaca')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (10, N'Cem Özer')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (11, N'Cem Tosun')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (12, N'Demet Akalın')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (13, N'Demet Sağıroğlu')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (14, N'Edip Akbayram')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (15, N'Emel Müftüoğlu')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (16, N'Emel Sayın')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (17, N'Emre Aydın')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (18, N'Esmeray')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (19, N'Ferhat Göçer')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (20, N'Funda Arar')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (21, N'Gökhan Özen')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (22, N'Gülben Ergen')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (23, N'Gülçin Ergül')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (24, N'Hadise')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (25, N'Hakan Altun')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (26, N'Haluk Levent')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (27, N'Hande Yener')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (28, N'Hülya Avşar')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (29, N'İlhan Şeşen')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (30, N'Kaan Tangöze')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (31, N'Kerem Güney')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (32, N'Mehmet Pekün')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (33, N'Murat Kekilli')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (34, N'Murat Ötünç')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (35, N'Mustafa Sandal')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (36, N'Nazan Şoray')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (37, N'Nilüfer')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (38, N'Nur Yoldaş')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (39, N'Nükhet Duru')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (40, N'Oya Küçümen')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (41, N'Ömür Göksel')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (42, N'Özdemir Erdoğan')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (43, N'Selim Atakan')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (44, N'Sevda Karaca')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (45, N'Sezen Aksu')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (46, N'Suavi Karaibrahimgil')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (47, N'Şebnem Aksu')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (48, N'Turgay Merih')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (49, N'Yiğit Vural')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (50, N'Zerrin Özer')
INSERT [dbo].[Sanatcilar] ([SanatciID], [SanatciAdi]) VALUES (51, N'Emel Taşçıoğlu')
GO
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (1, N'Sonsuz Çile', CAST(N'03:42:00' AS Time), 3, 4, 1, 15, 1)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (2, N'Kim Olsa Anlatır', CAST(N'05:55:00' AS Time), 2, 4, 2, 35, 2)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (3, N'Ah! Fatma', CAST(N'02:34:00' AS Time), 2, 4, 3, 24, 2)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (4, N'Bir Günah Gibi', CAST(N'03:51:00' AS Time), 2, 4, 4, 16, 2)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (5, N'Yeniden', CAST(N'05:59:00' AS Time), 2, 4, 5, 23, 3)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (6, N'Hey DJ', CAST(N'03:40:00' AS Time), 4, 4, 6, 41, 4)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (7, N'Rüzgar', CAST(N'03:32:00' AS Time), 4, 5, 7, 25, 5)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (8, N'Nane Limon Kabuğu', CAST(N'04:00:00' AS Time), 2, 5, 8, 13, 6)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (9, N'İşte Hendek İşte Deve', CAST(N'02:34:00' AS Time), 2, 5, 9, 17, 6)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (10, N'Unutamadım', CAST(N'04:19:00' AS Time), 2, 5, 10, 29, 6)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (11, N'Halil İbrahim Sofrası', CAST(N'05:59:00' AS Time), 2, 5, 6, 39, 6)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (12, N'Gel Gel', CAST(N'02:58:00' AS Time), 4, 5, 11, 37, 7)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (13, N'Hoşgeldin', CAST(N'05:08:00' AS Time), 4, 5, 12, 40, 7)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (14, N'Eller Aldı', CAST(N'02:34:00' AS Time), 2, 8, 13, 38, 8)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (15, N'Resimdeki', CAST(N'06:20:00' AS Time), 2, 5, 14, 15, 9)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (16, N'Alamanya', CAST(N'04:32:00' AS Time), 2, 5, 6, 28, 9)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (17, N'Adını Suya Yazdım', CAST(N'03:45:00' AS Time), 3, 4, 15, 26, 10)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (18, N'Sosyeten Uymaz', CAST(N'05:12:00' AS Time), 3, 4, 16, 37, 10)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (19, N'Şimdi Hayallerdesin', CAST(N'04:45:00' AS Time), 3, 4, 17, 34, 11)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (20, N'Youh Remixes', CAST(N'03:55:00' AS Time), 4, 4, 6, 32, 11)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (21, N'Asla Affedilmez', CAST(N'03:28:00' AS Time), 3, 4, 18, 30, 12)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (22, N'Sebebim', CAST(N'04:05:00' AS Time), 3, 4, 18, 19, 12)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (23, N'Arnavut Kaldırımı', CAST(N'03:20:00' AS Time), 3, 4, 19, 32, 13)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (24, N'Kibar Gelin', CAST(N'04:00:00' AS Time), 2, 4, 6, 20, 14)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (25, N'Öyle Bir Aşk', CAST(N'03:28:00' AS Time), 2, 2, 20, 14, 15)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (26, N'Deli Et Beni', CAST(N'04:10:00' AS Time), 3, 2, 21, 2, 15)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (27, N'Feryat', CAST(N'04:00:00' AS Time), 1, 8, 22, 5, 16)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (28, N'Afili Yalnızlık', CAST(N'03:52:00' AS Time), 4, 2, 6, 35, 17)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (29, N'Oylum Oylum', CAST(N'03:51:00' AS Time), 1, 8, 23, 25, 18)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (30, N'Aşkların En Güzeli', CAST(N'03:55:00' AS Time), 4, 2, 24, 32, 19)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (31, N'Arapsaçı', CAST(N'04:30:00' AS Time), 4, 2, 25, 41, 20)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (32, N'Benim İçin N''apardın', CAST(N'04:32:00' AS Time), 4, 4, 26, 41, 21)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (33, N'Sebebim Sensin', CAST(N'05:25:00' AS Time), 4, 9, 27, 12, 21)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (34, N'Arka Sokaklar', CAST(N'03:48:00' AS Time), 4, 9, 28, 13, 22)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (35, N'Kandıramazsın Beni', CAST(N'03:12:00' AS Time), 4, 9, 29, 17, 22)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (36, N'Çok Güzelsin', CAST(N'03:50:00' AS Time), 4, 9, 30, 23, 23)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (37, N'Uzat Elini', CAST(N'04:22:00' AS Time), 4, 4, 31, 24, 23)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (38, N'Sweat', CAST(N'02:58:00' AS Time), 4, 4, 6, 26, 24)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (39, N'Çilli Bom', CAST(N'04:45:00' AS Time), 3, 5, 6, 28, 25)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (40, N'Aşkın Mapushane', CAST(N'03:18:00' AS Time), 4, 5, 6, 33, 26)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (41, N'Çemberimde Gül Oya', CAST(N'04:12:00' AS Time), 4, 5, 32, 36, 26)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (42, N'Şansın Bol Olsun', CAST(N'03:25:00' AS Time), 4, 5, 33, 24, 27)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (43, N'Sıkıldım', CAST(N'02:45:00' AS Time), 4, 5, 34, 29, 28)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (44, N'Sarmaş Dolaş', CAST(N'04:35:00' AS Time), 2, 5, 35, 16, 29)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (45, N'Sarılınca Sana', CAST(N'04:18:00' AS Time), 4, 5, 6, 20, 29)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (46, N'Senden Daha Güzel', CAST(N'02:55:00' AS Time), 4, 5, 37, 27, 30)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (47, N'Sor Bana Pişman Mıyım', CAST(N'04:19:00' AS Time), 4, 4, 38, 21, 30)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (48, N'Anlatamıyorum', CAST(N'04:10:00' AS Time), 1, 5, 39, 23, 31)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (49, N'Dertte Mesut Ediyor', CAST(N'04:50:00' AS Time), 1, 5, 40, 30, 31)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (50, N'Sabret Dostum', CAST(N'03:38:00' AS Time), 2, 5, 41, 38, 32)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (51, N'Salını Salını', CAST(N'05:11:00' AS Time), 4, 4, 6, 35, 33)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (52, N'Yeniden Hayata', CAST(N'05:11:00' AS Time), 4, 4, 42, 28, 34)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (53, N'Gidiyorsun', CAST(N'03:33:00' AS Time), 4, 4, 43, 22, 35)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (54, N'Kirpiklerin Islak Islak', CAST(N'04:12:00' AS Time), 2, 7, 44, 24, 36)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (55, N'İntizar', CAST(N'03:25:00' AS Time), 2, 7, 6, 27, 37)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (56, N'Tek Başına', CAST(N'03:48:00' AS Time), 2, 7, 45, 36, 37)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (57, N'Olmaz Olsun', CAST(N'03:51:00' AS Time), 2, 8, 46, 25, 37)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (58, N'Saki', CAST(N'04:45:00' AS Time), 2, 4, 47, 17, 38)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (59, N'Melankoli', CAST(N'04:32:00' AS Time), 2, 4, 48, 32, 39)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (60, N'Takalar', CAST(N'05:59:00' AS Time), 1, 4, 49, 31, 39)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (61, N'Sev', CAST(N'04:00:00' AS Time), 2, 8, 6, 33, 39)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (62, N'Seninle Beraberim', CAST(N'04:00:00' AS Time), 2, 8, 50, 37, 40)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (63, N'Sevemem Artık', CAST(N'03:51:00' AS Time), 1, 4, 51, 27, 41)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (64, N'Bana Ellerini Ver', CAST(N'06:20:00' AS Time), 1, 8, 52, 22, 42)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (65, N'Bütün Meyhanelerini Dolaştım İstanbul''un', CAST(N'04:19:00' AS Time), 1, 4, 53, 24, 42)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (66, N'Destina', CAST(N'04:45:00' AS Time), 2, 4, 54, 39, 43)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (67, N'Türkü Rüzgar', CAST(N'02:34:00' AS Time), 2, 4, 55, 30, 43)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (68, N'Verdiğin Söz Bu Muydu', CAST(N'04:32:00' AS Time), 1, 4, 56, 26, 44)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (69, N'Kolay Değil', CAST(N'02:59:00' AS Time), 2, 4, 57, 18, 45)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (70, N'Küçük Bir Aşk Masalı', CAST(N'04:45:00' AS Time), 2, 4, 6, 28, 45)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (71, N'Tükeneceğiz', CAST(N'03:43:00' AS Time), 2, 4, 58, 40, 45)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (72, N'Biliyorsun', CAST(N'02:34:00' AS Time), 2, 4, 59, 33, 45)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (73, N'Çağrı', CAST(N'05:00:00' AS Time), 2, 4, 6, 30, 46)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (74, N'Delisin', CAST(N'06:20:00' AS Time), 1, 4, 6, 19, 47)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (75, N'Kara Sevda Yüzünden', CAST(N'04:00:00' AS Time), 2, 4, 6, 26, 48)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (76, N'Başa Dönebilir Miyiz?', CAST(N'03:21:00' AS Time), 4, 8, 60, 21, 49)
INSERT [dbo].[Sarkilar] ([SarkiID], [SarkiAdi], [SarkiSuresi], [DonemID], [TurID], [AlbumID], [BegenilmeID], [SanatciID]) VALUES (77, N'Benimsin', CAST(N'04:32:00' AS Time), 2, 4, 61, 35, 50)
GO
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (1, 1970, 1)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (2, 1971, 1)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (3, 1972, 1)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (4, 1973, 1)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (5, 1974, 1)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (6, 1975, 1)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (7, 1976, 1)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (8, 1977, 1)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (9, 1978, 1)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (10, 1979, 1)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (11, 1980, 2)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (12, 1981, 2)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (13, 1982, 2)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (14, 1983, 2)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (15, 1984, 2)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (16, 1985, 2)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (17, 1986, 2)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (18, 1987, 2)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (19, 1988, 2)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (20, 1989, 2)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (21, 1990, 3)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (22, 1991, 3)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (23, 1992, 3)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (24, 1993, 3)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (25, 1994, 3)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (26, 1995, 3)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (27, 1996, 3)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (28, 1997, 3)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (29, 1998, 3)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (30, 1999, 3)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (31, 2000, 4)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (32, 2001, 4)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (33, 2002, 4)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (34, 2003, 4)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (35, 2004, 4)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (36, 2005, 4)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (37, 2006, 4)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (38, 2007, 4)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (39, 2008, 4)
INSERT [dbo].[SarkininCikisYili] ([CikisID], [SarkininCikisYili], [DonemID]) VALUES (40, 2009, 4)
GO
INSERT [dbo].[Turler] ([TurID], [SarkiTuru]) VALUES (1, N'AnadoluRock')
INSERT [dbo].[Turler] ([TurID], [SarkiTuru]) VALUES (2, N'Arabesk')
INSERT [dbo].[Turler] ([TurID], [SarkiTuru]) VALUES (3, N'HalkMuzigi')
INSERT [dbo].[Turler] ([TurID], [SarkiTuru]) VALUES (4, N'Pop')
INSERT [dbo].[Turler] ([TurID], [SarkiTuru]) VALUES (5, N'Rock')
INSERT [dbo].[Turler] ([TurID], [SarkiTuru]) VALUES (6, N'TürkHalkMüziği')
INSERT [dbo].[Turler] ([TurID], [SarkiTuru]) VALUES (7, N'TürkSanat')
INSERT [dbo].[Turler] ([TurID], [SarkiTuru]) VALUES (8, N'TürkSanatMüziği')
INSERT [dbo].[Turler] ([TurID], [SarkiTuru]) VALUES (9, N'Türkü')
GO
ALTER TABLE [dbo].[Albumler]  WITH CHECK ADD FOREIGN KEY([CikisID])
REFERENCES [dbo].[SarkininCikisYili] ([CikisID])
GO
ALTER TABLE [dbo].[Albumler]  WITH CHECK ADD FOREIGN KEY([SanatciID])
REFERENCES [dbo].[Sanatcilar] ([SanatciID])
GO
ALTER TABLE [dbo].[CalmaListeleri]  WITH CHECK ADD  CONSTRAINT [FK__CalmaList__Kulla__5441852A] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullaniciID])
GO
ALTER TABLE [dbo].[CalmaListeleri] CHECK CONSTRAINT [FK__CalmaList__Kulla__5441852A]
GO
ALTER TABLE [dbo].[CalmaListesiIcerik]  WITH CHECK ADD FOREIGN KEY([CalmaListesiID])
REFERENCES [dbo].[CalmaListeleri] ([CalmaListesiID])
GO
ALTER TABLE [dbo].[CalmaListesiIcerik]  WITH CHECK ADD FOREIGN KEY([SarkiID])
REFERENCES [dbo].[Sarkilar] ([SarkiID])
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK__Kullanici__Cinsi__5070F446] FOREIGN KEY([CinsiyetID])
REFERENCES [dbo].[Cinsiyet] ([CinsiyetID])
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK__Kullanici__Cinsi__5070F446]
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK__Kullanicil__ilID__5165187F] FOREIGN KEY([ilID])
REFERENCES [dbo].[il] ([ilID])
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK__Kullanicil__ilID__5165187F]
GO
ALTER TABLE [dbo].[Sarkilar]  WITH CHECK ADD FOREIGN KEY([AlbumID])
REFERENCES [dbo].[Albumler] ([AlbumID])
GO
ALTER TABLE [dbo].[Sarkilar]  WITH CHECK ADD FOREIGN KEY([BegenilmeID])
REFERENCES [dbo].[Begenilme] ([BegenilmeID])
GO
ALTER TABLE [dbo].[Sarkilar]  WITH CHECK ADD FOREIGN KEY([DonemID])
REFERENCES [dbo].[Donemler] ([DonemID])
GO
ALTER TABLE [dbo].[Sarkilar]  WITH CHECK ADD FOREIGN KEY([SanatciID])
REFERENCES [dbo].[Sanatcilar] ([SanatciID])
GO
ALTER TABLE [dbo].[Sarkilar]  WITH CHECK ADD FOREIGN KEY([TurID])
REFERENCES [dbo].[Turler] ([TurID])
GO
ALTER TABLE [dbo].[SarkininCikisYili]  WITH CHECK ADD FOREIGN KEY([DonemID])
REFERENCES [dbo].[Donemler] ([DonemID])
GO
USE [master]
GO
ALTER DATABASE [veritabaniproje] SET  READ_WRITE 
GO
