USE [master]
GO
/****** Object:  Database [YemekTarifi]    Script Date: 12.01.2023 17:05:51 ******/
CREATE DATABASE [YemekTarifi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YemekTarifi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\YemekTarifi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'YemekTarifi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\YemekTarifi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [YemekTarifi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YemekTarifi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [YemekTarifi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YemekTarifi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YemekTarifi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YemekTarifi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YemekTarifi] SET ARITHABORT OFF 
GO
ALTER DATABASE [YemekTarifi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [YemekTarifi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [YemekTarifi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YemekTarifi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YemekTarifi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YemekTarifi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YemekTarifi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YemekTarifi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YemekTarifi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YemekTarifi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [YemekTarifi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YemekTarifi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YemekTarifi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YemekTarifi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YemekTarifi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YemekTarifi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [YemekTarifi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YemekTarifi] SET RECOVERY FULL 
GO
ALTER DATABASE [YemekTarifi] SET  MULTI_USER 
GO
ALTER DATABASE [YemekTarifi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [YemekTarifi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [YemekTarifi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [YemekTarifi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [YemekTarifi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [YemekTarifi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'YemekTarifi', N'ON'
GO
ALTER DATABASE [YemekTarifi] SET QUERY_STORE = OFF
GO
USE [YemekTarifi]
GO
/****** Object:  Table [dbo].[Table_Besinler]    Script Date: 12.01.2023 17:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Besinler](
	[BesinId] [int] NOT NULL,
	[BesinAd] [varchar](50) NULL,
	[BesinGram] [varchar](50) NULL,
	[BesinKalori] [varchar](50) NULL,
	[BesinKarbonhidrat] [varchar](50) NULL,
	[BesinProtein] [varchar](50) NULL,
	[BesinYag] [varchar](50) NULL,
 CONSTRAINT [PK_Table_Besinler] PRIMARY KEY CLUSTERED 
(
	[BesinId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Kategoriler]    Script Date: 12.01.2023 17:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Kategoriler](
	[KategoriId] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](50) NULL,
	[KategoriAdet] [int] NULL,
	[KategoriFotograf] [varchar](100) NULL,
 CONSTRAINT [PK_Table_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Login]    Script Date: 12.01.2023 17:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Login](
	[ID] [int] NOT NULL,
	[KULLANICI] [varchar](50) NULL,
	[SIFRE] [varchar](50) NULL,
 CONSTRAINT [PK_Table_Login] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Mesajlar]    Script Date: 12.01.2023 17:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Mesajlar](
	[MesajId] [int] IDENTITY(1,1) NOT NULL,
	[MesajAd] [varchar](30) NULL,
	[MesajMail] [varchar](50) NULL,
	[MesajIcerik] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Yemekler]    Script Date: 12.01.2023 17:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Yemekler](
	[YemekId] [int] IDENTITY(1,1) NOT NULL,
	[YemekAd] [varchar](50) NULL,
	[YemekMalzeme] [varchar](500) NULL,
	[YemekTarif] [varchar](max) NULL,
	[YemekFotograf] [varchar](100) NULL,
	[YemekTarih] [smalldatetime] NULL,
	[KategoriId] [int] NULL,
 CONSTRAINT [PK_Table_Yemekler] PRIMARY KEY CLUSTERED 
(
	[YemekId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12.01.2023 17:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (1, N'Muz', N'100', N'89', N'22.84', N'1.09', N'0.33')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (2, N'Peynir', N'100', N'224', N'3.68', N'14.9', N'16.55')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (3, N'Pirinç Pilavı', N'100', N'162', N'24.79', N'2.07', N'5.8')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (4, N'Yoğurt', N'100', N'61', N'4.66', N'3.47', N'3.25')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (5, N'Yulaf', N'100', N'351', N'57.25', N'11.35', N'5.8')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (6, N'Haşlanmış Yumurta', N'100', N'155', N'1.12', N'12.58', N'10.61')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (7, N'Tavuk Çorbası', N'100', N'55', N'3.42', N'3.97', N'1.96')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (8, N'Pankek', N'100', N'243', N'33.11', N'7.65', N'8.23')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (9, N'Elma', N'100', N'52', N'13.81', N'0.26', N'0.17')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (10, N'Mandalina', N'100', N'53', N'13.34', N'0.81', N'0.31')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (11, N'Salata', N'100', N'30', N'3.49', N'0.94', N'1.2')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (12, N'Patates Püresi', N'100', N'189', N'15.04', N'3.59', N'12.46')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (13, N'Domates Çorbası', N'100', N'32', N'4.35', N'0.91', N'1.1')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (14, N'Köfte', N'100', N'168', N'4.92', N'13.05', N'10.47')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (15, N'Ekmek', N'100', N'256', N'52.8', N'8.09', N'0.89')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (16, N'Türk Kahvesi', N'100', N'10', N'0.09', N'0.6', N'0.74')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (17, N'Helva', N'100', N'380', N'87.42', N'1.24', N'2.19')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (18, N'Nohut Yemeği', N'100', N'147', N'18.79', N'5.38', N'6.05')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (19, N'Pizza', N'100', N'186', N'30.51', N'5.84', N'4.33')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (20, N'Çikolata', N'100', N'528', N'57.9', N'4.4', N'35.1')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (21, N'Rus Salatası', N'100', N'110', N'9.98', N'2.31', N'6.83')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (22, N'Brokoli', N'100', N'26', N'2.51', N'3.3', N'0.2')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (23, N'Fındık', N'100', N'628', N'16.7', N'14.95', N'60.75')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (24, N'Ceviz', N'100', N'619', N'9.58', N'24.06', N'59.33')
INSERT [dbo].[Table_Besinler] ([BesinId], [BesinAd], [BesinGram], [BesinKalori], [BesinKarbonhidrat], [BesinProtein], [BesinYag]) VALUES (25, N'Kuru Üzüm', N'100', N'304', N'66.77', N'3', N'1.28')
GO
SET IDENTITY_INSERT [dbo].[Table_Kategoriler] ON 

INSERT [dbo].[Table_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriFotograf]) VALUES (1, N'Çorbalar', 2, NULL)
INSERT [dbo].[Table_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriFotograf]) VALUES (2, N'Sebze Yemekleri', 2, NULL)
INSERT [dbo].[Table_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriFotograf]) VALUES (3, N'Tavuk ve Et Yemekleri', 1, NULL)
INSERT [dbo].[Table_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriFotograf]) VALUES (4, N'Yulaf Çeşitleri', 1, NULL)
INSERT [dbo].[Table_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriFotograf]) VALUES (5, N'Makarnalar', 1, NULL)
INSERT [dbo].[Table_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriFotograf]) VALUES (6, N'İçecekler', 2, NULL)
SET IDENTITY_INSERT [dbo].[Table_Kategoriler] OFF
GO
INSERT [dbo].[Table_Login] ([ID], [KULLANICI], [SIFRE]) VALUES (1, N'Admin', N'1234')
INSERT [dbo].[Table_Login] ([ID], [KULLANICI], [SIFRE]) VALUES (2, N'User', N'1234')
INSERT [dbo].[Table_Login] ([ID], [KULLANICI], [SIFRE]) VALUES (3, N'Deneme', N'1234')
GO
SET IDENTITY_INSERT [dbo].[Table_Mesajlar] ON 

INSERT [dbo].[Table_Mesajlar] ([MesajId], [MesajAd], [MesajMail], [MesajIcerik]) VALUES (0, N'Zehra Karaca', N'zkaraca743@gmail.com', N'Deneme')
INSERT [dbo].[Table_Mesajlar] ([MesajId], [MesajAd], [MesajMail], [MesajIcerik]) VALUES (1, N'Zehra', N'zhrkrc743@gmail.com', N'Test')
INSERT [dbo].[Table_Mesajlar] ([MesajId], [MesajAd], [MesajMail], [MesajIcerik]) VALUES (2, N'Karaca', N'karaca@gmail.com', N'Mesaj')
INSERT [dbo].[Table_Mesajlar] ([MesajId], [MesajAd], [MesajMail], [MesajIcerik]) VALUES (3, N'Deneme', N'deneme', N'deneme')
INSERT [dbo].[Table_Mesajlar] ([MesajId], [MesajAd], [MesajMail], [MesajIcerik]) VALUES (4, N'Deneme', N'deneme', N'deneme')
SET IDENTITY_INSERT [dbo].[Table_Mesajlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Table_Yemekler] ON 

INSERT [dbo].[Table_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekFotograf], [YemekTarih], [KategoriId]) VALUES (1, N'LOKUM PIRASA TARİFİ', N'7 çorba kaşığı zeytinyağı, ½ kg. temizlenmiş pırasa, 2 adet havuç, 3 diş sarımsak, 1 adet soğan, 1 çorba kaşığı toz şeker, 1 çorba kaşığı un, 10-12 dal maydanoz, Tuz', N'1 adet soğanı piyazlık doğrayarak biraz tuzla birlikte ovun. 1 adet havucu tavla zarı büyüklüğünde küp küp doğrayın. Tencereye 6 çorba kaşığı zeytinyağı ekleyin ve önce soğanları ardından ince doğranmış 3 diş sarımsağı sonra olarak da havuçları ekleyip  1-2 dakika soteleyin. Temizlenmiş ½ kg pırasayı verevine keserek doğrayın ve tencereye ekleyip, karıştırın. Üzerine 1 çorba kaşığı toz şeker serpin, ağız tadınıza göre tuzunu ilave edip üzerini kapatacak kadar su koyun. Kısık ateşte tencerenin kapağını kapatarak 5-10 dakika pişirin.  Pırasaları kalın doğramadığımız için uzun sure pişmesine gerek kalmayacak. Son olarak ayrı bir sos tenceresinde 1 çorba kaşığı zeytinyağında, 1 çorba kaşığı unu rengi hafif dönene kadar kavurun. Yeşil rengini daha iyi çıkarması için 10-12 dal maydanozu havanda çok az tuzla dövün. Unlu meyaleyi ve maydanozları tenceredeki pırasa ile karıştırın. Servis tabağına alarak üzerine sızma zeytinyağı gezdirerek yerseniz tadına daha da varırsınız. Afiyet olsun.', NULL, CAST(N'2022-12-03T18:56:00' AS SmallDateTime), 2)
INSERT [dbo].[Table_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekFotograf], [YemekTarih], [KategoriId]) VALUES (2, N'YAĞSIZ ŞİNİTZEL TARİFİ', N'1 parça tavuk göğsü, 1 tane simit, 3 çorba kaşığı un, 1 yumurta, 2 çorba kaşığı krema, 1 tutam pul biber, 2 diş sarımsak, 2 çorba kaşığı zeytinyağı, 1 kapya biber, 1 kırmızı soğan, 5 tane kiraz domates, 6 tane tatlı sivri biber, 2 çorba kaşığı rende kaşar, 1 dilim burger peyniri, Tuz, Karabiber', N'1 simidi büyük parçalara gelişi güzel kesip airfryerda 180 derece 8 dakika kurutun. 1 parça tavuğun göğsünü enlemesine ortadan ikiye kesip inceltin. birer tutam tuz ve karabiberi her tarafına serpin. Simitzelin kaplamasını hazırlamak için 3 tane istasyona ihtiyacınız var. Birincisi için geniş bir tabağa 3 çorba kaşığı un ve birer tutam tuz ile karabiber döküp karıştırın. Başka bir tabağa 1 yumurtayı kırın, üzerine 2 çorba kaşığı kremayı ve 1 tutam tuz ve 1 tutam pul biber serpip iyice çırpın. Son olarak kuruttuğunuz simidi mutfak robotunda biraz iri taneli kalacak şekilde çekin ve bir tabağa koyun. 2 diş sarımsağı 1 tutam tuz ile ince bir şekilde kıyın ve üzerine 2 çorba kaşığı zeytinyağı ilave edip sarımsağın lezzeti yağa geçmesi için kenarda bekletin. Tavuğun yanında pişecek sebzeler için 1 kapya biberi kalın bir şekilde halka halka doğrayın. 1 kırmızı soğanı elma dilim kesin. Tavukları ilk olarak una, ardından yumurtaya ve son olarak da simide üzerinde boşluk kalmayacak şekilde kaplayın ve kaplarken çok bastırmayın. Üzerine sarımsaklı yağdan güzelce gezdirin ve bu haliyle direk airfryerın içine yerleştirin. Ardından geride kalan zeytinyağını doğradığınız soğan, kapya biber 5 tane kiraz domates ve 5 tane sivri biberin üzerine ekleyin. Sivri biberler dışında tüm sebzeleri tavuğun yanına yerleştirin. Sivri biberler diğer sebzelere göre daha hızlı piştiğinden biberleri 2-3 dakika sonra yerleştirin. Bu aşamada domates dışında diğer sebzelerden birer parça kenara ayırın ki üzerine güzel küçük bir garnitür yapabilin. Tavuk ve sebzeleri 180 derecede 7 dakika pişirin. Kenara ayırdığınız soğan, biber ve 1 dilim burger peynirini küp küp doğrayın. Tavuk pişince üzerine 2 çorba kaşığı rendelenmiş kaşar ve küp doğradığınız sebzeler ve burger peynirini yerleştirip 200 derecede 3 dakika daha pişirin. Afiyet olsun.', NULL, CAST(N'2022-12-03T19:17:00' AS SmallDateTime), 3)
INSERT [dbo].[Table_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekFotograf], [YemekTarih], [KategoriId]) VALUES (3, N'ŞEKERSİZ UNSUZ KURABİYE TARİFİ', N'1 su bardağından 2 parmak az (70 gr) yulaf ezmesi, 2 adet (70 gr), yumurta beyazı, 1 adet muz, 2 adet kuru incir, 4 adet kuru kayısı, 20 adet kuru üzüm, 10 adet çilek', N'Çileklerin suyunu almak için 2 kenarından kesip, içi kağıt havluya gelecek şekilde diziyoruz. Çileklerin ortalarını kullanmıyoruz. 1 adet muzu rendeleyin. 2 adet kuru inciri, 4 adet kuru kayısıyı ve 20 adet kuru üzümü, küçük küçük doğrayın. Çırpma kabında 2 yumurta beyazını çırpın. Ardından 1 su bardağından 2 parmak eksik yulaf ezmesini ve doğradığınız kuru meyveleri koyup karıştırın. Yağlı kağıt serilmiş tepside, kurabiye kalıbının içine 1 çorba kaşığı kurabiye hamurundan koyup üzerini bastırarak düzeltin. Yaklaşık 10 adet çıkacak. Hepsini dizdikten sonra her kurabiyenin üzerine 2 adet çilek koyun. Önceden ısıtılmış, 175 derecede altlı üstlü ve fansız çalışan fırının orta rafında 20 dakika pişirin. Afiyet olsun.', NULL, CAST(N'2022-12-03T19:21:00' AS SmallDateTime), 4)
INSERT [dbo].[Table_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekFotograf], [YemekTarih], [KategoriId]) VALUES (4, N'DOYURUCU YAZ İÇECEK TARİFİ', N'2+ 3/5 bardak (650 ml) süt, 5 çorba kaşığı yulaf, 4 çorba kaşığı bal, 3 çorba kaşığı tahin, 4 avuç fındık, Tercihe göre; 2 muz, 4 çorba kaşığı kakao, 300 gr donuk vişne', N'Blendıra 650 ml süt, 5 çorba kaşığı yulaf, 4 çorba kaşığı bal, 3 çorba kaşığı tahini koyun. Yulaflar iyice parçalanana kadar çekin. Bardağı balla gönlünüzce süsleyin ve içini doldurup afiyetle için. Fındıklı muzlu içecek için, karışıma 4 avuç fındık ve 2 muzu mutfak robotuna ekleyip iyice karışana kadar çekin. Kakaolu içecek için, karışıma 4 avuç fındık, 2 muz ve 4 çorba kaşığı kakao ekleyip robotta karışana kadar çekin. Vişneli içecek için, karışıma 300 gr donuk vişne ekleyip robotta karışana kadar çekin. Afiyet olsun.', NULL, CAST(N'2022-12-03T19:27:00' AS SmallDateTime), 6)
INSERT [dbo].[Table_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekFotograf], [YemekTarih], [KategoriId]) VALUES (13, N'AVOKADOLU SALATA TARİFİ', N'1 Yarım Avokado, 1 Adet Salatalık, 1 Sap Yeşil Soğan, 2 Sap Maydanoz, 2 Adet Çeri Domates, 5 Yaprak Roka, 0.5 Çorba Kaşığı Zeytinyağı, 1 Yemek Kaşığı Limon Suyu, 1 Bıçak Ucu Tuz (İyotsuz)', N'Olgunlaşmış avokadoyu ikiye bölün ve çekirdeğini çıkarın. Kabuğunu soyun ve dilimleyin. Tüm malzemeleri ince ince kesin. Bir kasede birleştirin. Limon suyu, zeytinyağı ekleyin ve bıçak ucu kadar tuzu serpin. Afiyet olsun.', NULL, CAST(N'2023-01-11T17:23:00' AS SmallDateTime), 2)
INSERT [dbo].[Table_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekFotograf], [YemekTarih], [KategoriId]) VALUES (14, N'DOMATES ÇORBASI TARİFİ', N'2 Çorba Kaşığı Zeytinyağı, 2 Çorba Kaşığı Buğday Unu, 5 Adet Domates, 1 Çorba Kaşığı Domates Salçası, 20 Gram Süt(Yarım Yağlı), 1 Tatlı Kaşığı Tuz, 5 Su Bardağı Su', N'2 çorba kaşığı zeytinyağı ile 2 yemek kaşığı unu biraz kavurun. 1 çorba kaşığı salça ile 5 adet rendelenmiş domates ekleyin. Topaklanırsa bu aşamada el blender ile karıştırın. Daha sonra 5 su bardağı su ekleyin. Koyulaşana kadar karıştırarak pişirin. Servis yaparken tencereye sütü ve tuzu ilave edin. Domates çorbası servise hazır. Afiyet olsun.', NULL, CAST(N'2023-01-11T17:28:00' AS SmallDateTime), 1)
INSERT [dbo].[Table_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekFotograf], [YemekTarih], [KategoriId]) VALUES (15, N'AKDENİZ MAKARNASI TARİFİ', N'6 Adet Zeytin, 2 Dilim (Orta) Beyaz Peynir, 6 Sap Yeşil Soğan, 1 Adet (Orta) Salatalık, 10 Adet Çeri Domates / Kiraz Domates, 2 Su Bardağı Tam Buğdaylı Makarna', N'Öncelikle makarnayı 8 dk haşlayın ve süzün. Diğer bütün malzemeleri ekleyip karıştırın. Baharatlayın. Akdeniz Makarna Salatası servise hazırdır. Afiyet Olsun.', NULL, CAST(N'2023-01-11T17:32:00' AS SmallDateTime), 5)
INSERT [dbo].[Table_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekFotograf], [YemekTarih], [KategoriId]) VALUES (16, N'KUŞKONMAZ ÇORBASI TARİFİ', N'1 Su Bardağı Süt(Yarım Yağlı), 4 Çorba Kaşığı Konserve Mısır, 2 Çorba Kaşığı Tereyağı, 1 Çay Kaşığı Tuz, 4 Çorba Kaşığı Zeytinyağı, 2 Su Bardağı Et Suyu, 1 Adet (Orta) Kuru Soğan, 2 Çorba Kaşığı Tam Buğday Unu0 Adet Kuşkonmaz (Pişmiş)', N'Kuşkonmazları soyun ve doğrayın, soğanları ise yemeklik doğrayın. Bir tencerede zeytinyağında soğanı kavurun ardından kuşkonmazları da tencereye ekleyerek kavurmaya devam edin. Sıcak suyu ve mısırı da tencereye ilave edip pişirin. Çorbanın terbiyesi için, küçük bir tencerede tereyağını eritin ardından unu ekleyerek karıştırın. Unun kokusu çıkana kadar işleme devam edin. Ardından soğuk sütü dökerek hızlıca çırpın. Kuşkonmazların piştiği tencereye terbiyeyi çırpma işlemine devam ederek dökün. Sonra et suyunu ve tuzu ekleyin. Kıvamı koyu ise istenilen kıvama gelene kadar su ile açılabilir. Afiyet olsun.', NULL, CAST(N'2023-01-11T17:41:00' AS SmallDateTime), 1)
INSERT [dbo].[Table_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekFotograf], [YemekTarih], [KategoriId]) VALUES (17, N'BAĞIŞIKLIĞI GÜÇLENDİREN TURUNCU İÇECEK TARİFİ', N'100 Gram Balkabağı, 1 Tatlı Kaşığı Bal, 0.5 Su Bardağı Soya Sütü, 1 Çay Kaşığı Tarçın, 10 Adet Badem (Kavrulmamış, Tuzsuz), 2 Adet (Orta) Havuç', N'Balkabaklı havuçlu soya sütü yapmak için önce 100 gram balkabağını haşlayın. Daha sonra haşladığınız balkabağını; 2 adet havuç, yarım su bardağı soya sütü, 10 adet badem, 1 çay kaşığı tarçın ve 1 tatlı kaşığı bal ile beraber blenderden geçirin. Afiyet olsun.', NULL, CAST(N'2023-01-11T17:45:00' AS SmallDateTime), 6)
SET IDENTITY_INSERT [dbo].[Table_Yemekler] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([ID], [Username], [Password]) VALUES (1, N'admin', N'123')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[Table_Kategoriler] ADD  CONSTRAINT [DF_Table_Kategoriler_KategoriAdet]  DEFAULT ((0)) FOR [KategoriAdet]
GO
ALTER TABLE [dbo].[Table_Yemekler] ADD  CONSTRAINT [DF_Table_Yemekler_YemekTarih]  DEFAULT (getdate()) FOR [YemekTarih]
GO
ALTER TABLE [dbo].[Table_Yemekler]  WITH CHECK ADD  CONSTRAINT [FK_Table_Yemekler_Table_Kategoriler] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Table_Kategoriler] ([KategoriId])
GO
ALTER TABLE [dbo].[Table_Yemekler] CHECK CONSTRAINT [FK_Table_Yemekler_Table_Kategoriler]
GO
USE [master]
GO
ALTER DATABASE [YemekTarifi] SET  READ_WRITE 
GO
