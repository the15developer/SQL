CREATE DATABASE TEST
USE TEST
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 01.12.2021 12:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[c_ID] [int] NOT NULL,
	[first_name] [varchar](100) NULL,
	[last_name] [varchar](100) NULL,
	[city] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[c_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KISILER]    Script Date: 01.12.2021 12:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KISILER](
	[ID] [int] NOT NULL,
	[SOYAD] [varchar](50) NULL,
	[AD] [varchar](40) NOT NULL,
	[ADRES] [varchar](100) NULL,
	[SEHIR] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KITAPLAR]    Script Date: 01.12.2021 12:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KITAPLAR](
	[NO] [int] NOT NULL,
	[ISIM] [varchar](100) NOT NULL,
	[YV_NO] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KITAPYAZAR]    Script Date: 01.12.2021 12:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KITAPYAZAR](
	[KNO] [int] NOT NULL,
	[YNO] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KonusmaKaydi]    Script Date: 01.12.2021 12:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KonusmaKaydi](
	[ID] [int] NOT NULL,
	[MusteriKey] [int] NOT NULL,
	[Yon] [int] NOT NULL,
	[Saniye] [int] NOT NULL,
	[Tarih] [smalldatetime] NULL,
 CONSTRAINT [PK_KonusmaKaydi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KYAZARLAR]    Script Date: 01.12.2021 12:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KYAZARLAR](
	[NO] [int] NOT NULL,
	[ISIM] [varchar](40) NOT NULL,
	[ULKE] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 01.12.2021 12:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[MusteriId] [int] NOT NULL,
	[MusteriAdi] [nchar](10) NULL,
	[Adres] [nchar](10) NULL,
	[Sehir] [nchar](10) NULL,
	[Puan] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Musteri_1] PRIMARY KEY CLUSTERED 
(
	[MusteriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri_Konusma]    Script Date: 01.12.2021 12:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri_Konusma](
	[MusteriKey] [int] NOT NULL,
	[Ad] [varchar](20) NULL,
	[Soyad] [varchar](50) NULL,
	[TelNo] [char](10) NULL,
	[Adres] [varchar](50) NULL,
 CONSTRAINT [PK_Musteri] PRIMARY KEY CLUSTERED 
(
	[MusteriKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONEL]    Script Date: 01.12.2021 12:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONEL](
	[PER_NO] [int] NOT NULL,
	[ISIM] [varchar](40) NOT NULL,
	[SOYISIM] [varchar](100) NULL,
	[YAS] [int] NULL,
	[CINSIYET] [char](1) NOT NULL,
	[KENT] [varchar](40) NULL,
	[ULKE] [varchar](40) NULL,
	[MAAS] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparis]    Script Date: 01.12.2021 12:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparis](
	[SiparisId] [int] NOT NULL,
	[MusteriId] [int] NULL,
	[SiparisTarihi] [datetime] NULL,
 CONSTRAINT [PK_Siparis] PRIMARY KEY CLUSTERED 
(
	[SiparisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiparisDetay]    Script Date: 01.12.2021 12:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiparisDetay](
	[SiparisDetayId] [int] NOT NULL,
	[SiparisId] [int] NULL,
	[UrunAdi] [nchar](10) NULL,
	[Miktar] [decimal](2, 0) NULL,
 CONSTRAINT [PK_SiparisDetay] PRIMARY KEY CLUSTERED 
(
	[SiparisDetayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UYELER]    Script Date: 01.12.2021 12:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UYELER](
	[UYE_ADI] [varchar](50) NOT NULL,
	[ISIM] [varchar](30) NULL,
	[SOYISIM] [varchar](50) NULL,
	[E_POSTA] [varchar](50) NULL,
	[CINSIYET] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YAYINEVLERI]    Script Date: 01.12.2021 12:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YAYINEVLERI](
	[NO] [int] NOT NULL,
	[ISIM] [varchar](10) NULL,
	[SEHIR] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YAZARLAR]    Script Date: 01.12.2021 12:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YAZARLAR](
	[YAZAR_NO] [int] NOT NULL,
	[ISIM] [varchar](40) NOT NULL,
	[SOYISIM] [varchar](100) NULL,
	[ULKE] [varchar](50) NULL,
	[DOGUM_YILI] [int] NULL,
	[OLUM_YILI] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([c_ID], [first_name], [last_name], [city]) VALUES (101, N'Sebastian', N'Volk', N'Frankfurt')
GO
INSERT [dbo].[Accounts] ([c_ID], [first_name], [last_name], [city]) VALUES (102, N'Beate', N'Mueller', N'Hamburg')
GO
INSERT [dbo].[Accounts] ([c_ID], [first_name], [last_name], [city]) VALUES (103, N'John', N'Walker', N'Washington')
GO
INSERT [dbo].[Accounts] ([c_ID], [first_name], [last_name], [city]) VALUES (104, N'Britney', N'Sears', N'Holywood')
GO
INSERT [dbo].[Accounts] ([c_ID], [first_name], [last_name], [city]) VALUES (105, N'Sarah', N'Schmidt', N'Mainz')
GO
INSERT [dbo].[Accounts] ([c_ID], [first_name], [last_name], [city]) VALUES (106, N'George', N'Lewis', N'New Jersey')
GO
INSERT [dbo].[Accounts] ([c_ID], [first_name], [last_name], [city]) VALUES (107, N'Jian-xin', N'Wang', N'Peking')
GO
INSERT [dbo].[Accounts] ([c_ID], [first_name], [last_name], [city]) VALUES (108, N'Katrina', N'Khan', N'Bolywood')
GO
INSERT [dbo].[KISILER] ([ID], [SOYAD], [AD], [ADRES], [SEHIR]) VALUES (1, N'Has', N'Okan', N'Kadiköy 10', N'Istanbul')
GO
INSERT [dbo].[KISILER] ([ID], [SOYAD], [AD], [ADRES], [SEHIR]) VALUES (2, N'Sevim', N'Tugrul', N'Bakirköy23', N'Istanbul')
GO
INSERT [dbo].[KISILER] ([ID], [SOYAD], [AD], [ADRES], [SEHIR]) VALUES (3, N'Pitircik', N'Kerem', N'Sincan 20', N'Ankara')
GO
INSERT [dbo].[KITAPLAR] ([NO], [ISIM], [YV_NO]) VALUES (1, N'5 dakikada Java', 1)
GO
INSERT [dbo].[KITAPLAR] ([NO], [ISIM], [YV_NO]) VALUES (2, N'5 bilemedin 6 saatte SQL', 1)
GO
INSERT [dbo].[KITAPLAR] ([NO], [ISIM], [YV_NO]) VALUES (3, N'Hakiki SQL', 2)
GO
INSERT [dbo].[KITAPYAZAR] ([KNO], [YNO]) VALUES (1, 2)
GO
INSERT [dbo].[KITAPYAZAR] ([KNO], [YNO]) VALUES (2, 3)
GO
INSERT [dbo].[KITAPYAZAR] ([KNO], [YNO]) VALUES (3, 1)
GO
INSERT [dbo].[KITAPYAZAR] ([KNO], [YNO]) VALUES (3, 2)
GO
INSERT [dbo].[KonusmaKaydi] ([ID], [MusteriKey], [Yon], [Saniye], [Tarih]) VALUES (1, 1, 1, 200, CAST(N'2015-01-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[KonusmaKaydi] ([ID], [MusteriKey], [Yon], [Saniye], [Tarih]) VALUES (2, 1, 1, 80, CAST(N'2015-02-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[KonusmaKaydi] ([ID], [MusteriKey], [Yon], [Saniye], [Tarih]) VALUES (3, 1, 3, 85, CAST(N'2015-03-02T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[KonusmaKaydi] ([ID], [MusteriKey], [Yon], [Saniye], [Tarih]) VALUES (4, 2, 1, 120, CAST(N'2015-04-05T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[KonusmaKaydi] ([ID], [MusteriKey], [Yon], [Saniye], [Tarih]) VALUES (5, 2, 1, 35, CAST(N'2015-05-03T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[KonusmaKaydi] ([ID], [MusteriKey], [Yon], [Saniye], [Tarih]) VALUES (6, 2, 2, 65, CAST(N'2015-06-07T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[KonusmaKaydi] ([ID], [MusteriKey], [Yon], [Saniye], [Tarih]) VALUES (7, 2, 3, 90, CAST(N'2015-08-12T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[KonusmaKaydi] ([ID], [MusteriKey], [Yon], [Saniye], [Tarih]) VALUES (8, 2, 2, 65, CAST(N'2015-08-15T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[KonusmaKaydi] ([ID], [MusteriKey], [Yon], [Saniye], [Tarih]) VALUES (9, 3, 1, 34, CAST(N'2015-01-12T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[KonusmaKaydi] ([ID], [MusteriKey], [Yon], [Saniye], [Tarih]) VALUES (10, 3, 1, 90, CAST(N'2015-03-28T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[KonusmaKaydi] ([ID], [MusteriKey], [Yon], [Saniye], [Tarih]) VALUES (11, 3, 2, 900, CAST(N'2015-06-14T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[KYAZARLAR] ([NO], [ISIM], [ULKE]) VALUES (1, N'Nihat Veritabani', N'Türkiye')
GO
INSERT [dbo].[KYAZARLAR] ([NO], [ISIM], [ULKE]) VALUES (2, N'Muharrem Nesnel', N'Türkiye')
GO
INSERT [dbo].[KYAZARLAR] ([NO], [ISIM], [ULKE]) VALUES (3, N'Taylan Esquel', N'Meksika')
GO
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAdi], [Adres], [Sehir], [Puan]) VALUES (1, N'Ali       ', N'Esenler   ', N'Konya     ', CAST(200 AS Decimal(18, 0)))
GO
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAdi], [Adres], [Sehir], [Puan]) VALUES (2, N'Mehmet    ', N'Kampüs    ', N'Konya     ', CAST(0 AS Decimal(18, 0)))
GO
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAdi], [Adres], [Sehir], [Puan]) VALUES (3, N'Nuri      ', N'Fatih     ', N'Istanbul  ', CAST(100 AS Decimal(18, 0)))
GO
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAdi], [Adres], [Sehir], [Puan]) VALUES (4, N'Ayse      ', N'Esenyurt  ', N'Istanbul  ', CAST(0 AS Decimal(18, 0)))
GO
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAdi], [Adres], [Sehir], [Puan]) VALUES (5, N'Faruk     ', N'Çankaya   ', N'Ankara    ', CAST(0 AS Decimal(18, 0)))
GO
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAdi], [Adres], [Sehir], [Puan]) VALUES (6, N'Selman    ', N'Yamanlar  ', N'Ankara    ', CAST(300 AS Decimal(18, 0)))
GO
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAdi], [Adres], [Sehir], [Puan]) VALUES (7, N'Hüseyin   ', N'Kızılören ', N'Ankara    ', CAST(0 AS Decimal(18, 0)))
GO
INSERT [dbo].[Musteri_Konusma] ([MusteriKey], [Ad], [Soyad], [TelNo], [Adres]) VALUES (1, N'Seher', N'Yeli', N'5555432151', N'Konya/Meram')
GO
INSERT [dbo].[Musteri_Konusma] ([MusteriKey], [Ad], [Soyad], [TelNo], [Adres]) VALUES (2, N'Mehmet Sabri', N'Tuncer', N'5055432145', N'Ankara/Gölbasi')
GO
INSERT [dbo].[Musteri_Konusma] ([MusteriKey], [Ad], [Soyad], [TelNo], [Adres]) VALUES (3, N'Metin', N'Iki', N'5341257845', N'Adana/Merkez')
GO
INSERT [dbo].[PERSONEL] ([PER_NO], [ISIM], [SOYISIM], [YAS], [CINSIYET], [KENT], [ULKE], [MAAS]) VALUES (1, N'Ahmet', N'Yilmaz', 20, N'E', N'Ankara', N'Türkiye', 2000)
GO
INSERT [dbo].[PERSONEL] ([PER_NO], [ISIM], [SOYISIM], [YAS], [CINSIYET], [KENT], [ULKE], [MAAS]) VALUES (2, N'Mehmet', N'Efe', 22, N'E', N'Bolu', N'Türkiye', 1800)
GO
INSERT [dbo].[PERSONEL] ([PER_NO], [ISIM], [SOYISIM], [YAS], [CINSIYET], [KENT], [ULKE], [MAAS]) VALUES (3, N'Ayse', N'Can', 23, N'K', N'Istanbul', N'Türkiye', 2500)
GO
INSERT [dbo].[PERSONEL] ([PER_NO], [ISIM], [SOYISIM], [YAS], [CINSIYET], [KENT], [ULKE], [MAAS]) VALUES (4, N'Fatma', N'Ak', 35, N'K', N'Ankara', N'Türkiye', 2800)
GO
INSERT [dbo].[PERSONEL] ([PER_NO], [ISIM], [SOYISIM], [YAS], [CINSIYET], [KENT], [ULKE], [MAAS]) VALUES (5, N'John', N'Smith', 45, N'E', N'New York', N'ABD', 3500)
GO
INSERT [dbo].[PERSONEL] ([PER_NO], [ISIM], [SOYISIM], [YAS], [CINSIYET], [KENT], [ULKE], [MAAS]) VALUES (6, N'Ellen', N'Smith', 40, N'K', N'New York', N'ABD', 3000)
GO
INSERT [dbo].[PERSONEL] ([PER_NO], [ISIM], [SOYISIM], [YAS], [CINSIYET], [KENT], [ULKE], [MAAS]) VALUES (7, N'Hans', N'Müller', 30, N'E', N'Berlin', N'Almanya', 4000)
GO
INSERT [dbo].[PERSONEL] ([PER_NO], [ISIM], [SOYISIM], [YAS], [CINSIYET], [KENT], [ULKE], [MAAS]) VALUES (8, N'Frank', N'Cesanne', 35, N'E', N'Paris', N'Fransa', 3700)
GO
INSERT [dbo].[PERSONEL] ([PER_NO], [ISIM], [SOYISIM], [YAS], [CINSIYET], [KENT], [ULKE], [MAAS]) VALUES (9, N'Abbas', N'Demir', 26, N'E', N'Adana', N'Türkiye', 1500)
GO
INSERT [dbo].[Siparis] ([SiparisId], [MusteriId], [SiparisTarihi]) VALUES (1, 1, CAST(N'2019-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Siparis] ([SiparisId], [MusteriId], [SiparisTarihi]) VALUES (2, 1, CAST(N'2019-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Siparis] ([SiparisId], [MusteriId], [SiparisTarihi]) VALUES (3, 2, CAST(N'2019-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Siparis] ([SiparisId], [MusteriId], [SiparisTarihi]) VALUES (4, 2, CAST(N'2019-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Siparis] ([SiparisId], [MusteriId], [SiparisTarihi]) VALUES (5, 2, CAST(N'2019-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Siparis] ([SiparisId], [MusteriId], [SiparisTarihi]) VALUES (6, 3, CAST(N'2019-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Siparis] ([SiparisId], [MusteriId], [SiparisTarihi]) VALUES (7, 4, CAST(N'2019-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Siparis] ([SiparisId], [MusteriId], [SiparisTarihi]) VALUES (8, 5, CAST(N'2019-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Siparis] ([SiparisId], [MusteriId], [SiparisTarihi]) VALUES (9, 6, CAST(N'2019-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Siparis] ([SiparisId], [MusteriId], [SiparisTarihi]) VALUES (10, 7, CAST(N'2019-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Siparis] ([SiparisId], [MusteriId], [SiparisTarihi]) VALUES (11, 7, CAST(N'2019-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[SiparisDetay] ([SiparisDetayId], [SiparisId], [UrunAdi], [Miktar]) VALUES (1, 1, N'Elma      ', CAST(2 AS Decimal(2, 0)))
GO
INSERT [dbo].[SiparisDetay] ([SiparisDetayId], [SiparisId], [UrunAdi], [Miktar]) VALUES (2, 1, N'Mouse     ', CAST(3 AS Decimal(2, 0)))
GO
INSERT [dbo].[SiparisDetay] ([SiparisDetayId], [SiparisId], [UrunAdi], [Miktar]) VALUES (3, 1, N'Kiraz     ', CAST(1 AS Decimal(2, 0)))
GO
INSERT [dbo].[SiparisDetay] ([SiparisDetayId], [SiparisId], [UrunAdi], [Miktar]) VALUES (4, 2, N'Kagit     ', CAST(12 AS Decimal(2, 0)))
GO
INSERT [dbo].[SiparisDetay] ([SiparisDetayId], [SiparisId], [UrunAdi], [Miktar]) VALUES (5, 3, N'Mouse     ', CAST(11 AS Decimal(2, 0)))
GO
INSERT [dbo].[SiparisDetay] ([SiparisDetayId], [SiparisId], [UrunAdi], [Miktar]) VALUES (6, 4, N'PC        ', CAST(1 AS Decimal(2, 0)))
GO
INSERT [dbo].[SiparisDetay] ([SiparisDetayId], [SiparisId], [UrunAdi], [Miktar]) VALUES (7, 5, N'Laptop    ', CAST(1 AS Decimal(2, 0)))
GO
INSERT [dbo].[SiparisDetay] ([SiparisDetayId], [SiparisId], [UrunAdi], [Miktar]) VALUES (8, 6, N'Mouse     ', CAST(3 AS Decimal(2, 0)))
GO
INSERT [dbo].[SiparisDetay] ([SiparisDetayId], [SiparisId], [UrunAdi], [Miktar]) VALUES (9, 6, N'Pil       ', CAST(4 AS Decimal(2, 0)))
GO
INSERT [dbo].[SiparisDetay] ([SiparisDetayId], [SiparisId], [UrunAdi], [Miktar]) VALUES (10, 7, N'Masa      ', CAST(2 AS Decimal(2, 0)))
GO
INSERT [dbo].[SiparisDetay] ([SiparisDetayId], [SiparisId], [UrunAdi], [Miktar]) VALUES (11, 8, N'Koltuk    ', CAST(2 AS Decimal(2, 0)))
GO
INSERT [dbo].[SiparisDetay] ([SiparisDetayId], [SiparisId], [UrunAdi], [Miktar]) VALUES (12, 9, N'Sepet     ', CAST(40 AS Decimal(2, 0)))
GO
INSERT [dbo].[SiparisDetay] ([SiparisDetayId], [SiparisId], [UrunAdi], [Miktar]) VALUES (13, 10, N'Kalem     ', CAST(3 AS Decimal(2, 0)))
GO
INSERT [dbo].[SiparisDetay] ([SiparisDetayId], [SiparisId], [UrunAdi], [Miktar]) VALUES (14, 11, N'Ceket     ', CAST(3 AS Decimal(2, 0)))
GO
INSERT [dbo].[SiparisDetay] ([SiparisDetayId], [SiparisId], [UrunAdi], [Miktar]) VALUES (15, 11, N'Corap     ', CAST(5 AS Decimal(2, 0)))
GO
INSERT [dbo].[UYELER] ([UYE_ADI], [ISIM], [SOYISIM], [E_POSTA], [CINSIYET]) VALUES (N'hrzafer', N'Harun Resit', N'Zafer', N'hrzafer@hrzafer.com', N'E')
GO
INSERT [dbo].[UYELER] ([UYE_ADI], [ISIM], [SOYISIM], [E_POSTA], [CINSIYET]) VALUES (N'derya-z', N'Derya', N'Zaimoglu', N'derya.z@derya.com', N'K')
GO
INSERT [dbo].[UYELER] ([UYE_ADI], [ISIM], [SOYISIM], [E_POSTA], [CINSIYET]) VALUES (N'meryem1990', N'Meryem', N'Arkadas', N'meryem1990@nospam.co', N'K')
GO
INSERT [dbo].[UYELER] ([UYE_ADI], [ISIM], [SOYISIM], [E_POSTA], [CINSIYET]) VALUES (N'eaydin', N'Emir', N'Aydin', N'ea@biracayipadam.com', N'E')
GO
INSERT [dbo].[UYELER] ([UYE_ADI], [ISIM], [SOYISIM], [E_POSTA], [CINSIYET]) VALUES (N'lazkizi', N'Deniz', N'Çaka', N'lazkizi@karadenizli.com', N'K')
GO
INSERT [dbo].[UYELER] ([UYE_ADI], [ISIM], [SOYISIM], [E_POSTA], [CINSIYET]) VALUES (N'deniz88', N'Deniz', N'Zarifoglu', N'd.zarifoglu@zarifoglu.com', N'E')
GO
INSERT [dbo].[YAYINEVLERI] ([NO], [ISIM], [SEHIR]) VALUES (1, N'A', N'Ankara')
GO
INSERT [dbo].[YAYINEVLERI] ([NO], [ISIM], [SEHIR]) VALUES (2, N'B', N'Istanbul')
GO
INSERT [dbo].[YAYINEVLERI] ([NO], [ISIM], [SEHIR]) VALUES (1, N'c', N'Izmir')
GO
INSERT [dbo].[YAZARLAR] ([YAZAR_NO], [ISIM], [SOYISIM], [ULKE], [DOGUM_YILI], [OLUM_YILI]) VALUES (1, N'Lev', N'Tolstoy', N'Rusya', 1828, 1910)
GO
INSERT [dbo].[YAZARLAR] ([YAZAR_NO], [ISIM], [SOYISIM], [ULKE], [DOGUM_YILI], [OLUM_YILI]) VALUES (2, N'Fyodor', N'Dostoyevski', N'Rusya', 1821, 1881)
GO
INSERT [dbo].[YAZARLAR] ([YAZAR_NO], [ISIM], [SOYISIM], [ULKE], [DOGUM_YILI], [OLUM_YILI]) VALUES (3, N'Victor', N'Hugo', N'Fransa', 1802, 1885)
GO
INSERT [dbo].[YAZARLAR] ([YAZAR_NO], [ISIM], [SOYISIM], [ULKE], [DOGUM_YILI], [OLUM_YILI]) VALUES (4, N'Alev', N'Alatli', N'Türkiye', 1944, NULL)
GO
ALTER TABLE [dbo].[KonusmaKaydi]  WITH CHECK ADD  CONSTRAINT [FK_KonusmaKaydi_Musteri] FOREIGN KEY([MusteriKey])
REFERENCES [dbo].[Musteri_Konusma] ([MusteriKey])
GO
ALTER TABLE [dbo].[KonusmaKaydi] CHECK CONSTRAINT [FK_KonusmaKaydi_Musteri]
GO
ALTER TABLE [dbo].[Siparis]  WITH CHECK ADD  CONSTRAINT [FK_Siparis_Siparis] FOREIGN KEY([SiparisId])
REFERENCES [dbo].[Siparis] ([SiparisId])
GO
ALTER TABLE [dbo].[Siparis] CHECK CONSTRAINT [FK_Siparis_Siparis]
GO



create proc SP_PERSONEL_EKLE 
(
@PER_NO int, 
@CINSIYET char(1), 
@ISIM varchar(20), 
@MAAS int, 
@YAS int
)
AS
BEGIN
insert into PERSONEL (PER_NO, CINSIYET, ISIM, MAAS, YAS) values ( @PER_NO, @CINSIYET, @ISIM, @MAAS, @YAS )
END

EXEC SP_PERSONEL_EKLE 10, 'K', 'Aylin', 2700, 23


create proc SP_PERSONELSIL ( @MINMAAS int, @MAXMAAS int)
AS
BEGIN
delete from PERSONEL where CINSIYET = 'E' and MAAS between @MINMAAS AND @MAXMAAS
end

EXEC SP_PERSONELSIL 1800, 2800


select * from KITAPLAR

select * from KITAPYAZAR


select * from KYAZARLAR


create proc SP_ENCOKKITABIOLANYAZAR_KITAPEKLE (@ISIM varchar(100), @KITAPNO int, @YAYINEVIID int)
AS
BEGIN

INSERT into KITAPLAR values (@KITAPNO, @ISIM, @YAYINEVIID)

insert into KITAPYAZAR values (@KITAPNO, (select T.YNO from (select YNO,COUNT(*) as yazar_basina_kitap from KITAPYAZAR group by YNO) as T where T.yazar_basina_kitap = (select MAX(T.yazar_basina_kitap) from ( select YNO,COUNT(*) as yazar_basina_kitap from KITAPYAZAR group by YNO ) as T) )  )

END

EXEC SP_ENCOKKITABIOLANYAZAR_KITAPEKLE 'Umarim Tekrar Calisacaktir', 5, 2





create proc SP_KITAPEKLE (@ISIM varchar(100), @KITAPNO int, @YAYINEVIID int)
as 
begin
insert into KITAPLAR values (@KITAPNO, @ISIM, @YAYINEVIID )
insert into KITAPYAZAR values (@KITAPNO, (select T.YNO from (select YNO,COUNT(*) as yazar_basina_kitap from KITAPYAZAR group by YNO) as T where T.yazar_basina_kitap = (select MAX(T.yazar_basina_kitap) from ( select YNO,COUNT(*) as yazar_basina_kitap from KITAPYAZAR group by YNO ) as T) )  )


end



create proc SP_ENCOKKITABIOLANYAZAR_KITAPEKLE (@ISIM varchar(100), @KITAPNO int, @YAYINEVIID int)
AS
BEGIN

EXEC SP_KITAPEKLE @ISIM, @KITAPNO, @YAYINEVIID

END

insert into KITAPYAZAR values (@KITAPNO, (select T.YNO from (select YNO,COUNT(*) as yazar_basina_kitap from KITAPYAZAR group by YNO) as T where T.yazar_basina_kitap = (select MAX(T.yazar_basina_kitap) from ( select YNO,COUNT(*) as yazar_basina_kitap from KITAPYAZAR group by YNO ) as T) )  )

exec SP_ENCOKKITABIOLANYAZAR_KITAPEKLE 'Haydi', 6, 1


select * from UYELER

create proc SP_UYEGUNCELLE
as 
begin
UPDATE UYELER
end


create proc SP_UYEGUNCELLE2
as
begin

UPDATE UYELER
SET 
UYE_ADI = UPPER(LEFT(UYE_ADI,1)) + RIGHT(UYE_ADI, LEN(UYE_ADI)-1)

end

exec  SP_UYEGUNCELLE2

select UPPER(LEFT(UYE_ADI,1)) + RIGHT(UYE_ADI, LEN(UYE_ADI)-1) as istenen from UYELER



-- fonksiyonlar

create function KARE_AL (@number int)
returns int

as
begin
return @number*@number
end

select dbo.KARE_AL(16)


create function FAKT_HESAPLA (@number int)
returns int

as
begin
declare @sonuc int = 1
declare @i int = 1

while(@i<=@number)
begin
set @sonuc = @sonuc*@i
set @i+=1
end

return @sonuc
end


select dbo.FAKT_HESAPLA(6)


create function KITABIN_YAZAR_SAYISINI_BUL (@kitap_ismi varchar(100))
returns int
as
begin

return (select T.yazar_sayisi from (select KNO, COUNT(*) as yazar_sayisi from KITAPYAZAR GROUP BY KNO) as T where KNO = ( select NO from KITAPLAR where ISIM = @kitap_ismi))

end


select dbo.KITABIN_YAZAR_SAYISINI_BUL('5 dakikada Java') 



select * from KITAPLAR
select * from YAYINEVLERI




create function YAYINEVI_KITAP_SAYISINI_BUL(@yv_isim varchar(10))
returns int
as
begin
return (select T.kac_kitap from (select Y.ISIM, count(*) as kac_kitap from KITAPLAR K join YAYINEVLERI Y on K.YV_NO = Y.NO group by Y.ISIM) as T where T.ISIM = @yv_isim)
end

select dbo.YAYINEVI_KITAP_SAYISINI_BUL('A')


create function KUVVET_HESAPLA (@taban int, @us int)
returns int
as
begin
declare @i int =0, @sonuc int = 1

if(@us = 0)
return 1

if(@us>0)
while(@i<@us)
begin
set @sonuc=@sonuc*@taban
set @i+=1
end

return @sonuc
end

select dbo.KUVVET_HESAPLA(16,2)






select * from PERSONEL order by maas asc

create function PERSONELI_MAASLI_GETIR (@min int, @max int)
returns TABLE 
as
return

select PER_NO, ISIM, MAAS from PERSONEL WHERE MAAS BETWEEN @min and @max

select * from dbo.PERSONELI_MAASLI_GETIR(3000, 5000) order by maas asc
