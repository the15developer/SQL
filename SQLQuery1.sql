-- TRUNCATE TABLE KITAPLAR
-- TRUNCATE TABLE KYAZARLAR
USE VERITABANILAB
--Tablolar? olu?turma

CREATE TABLE [dbo].[KYAZARLAR](
	[ID] [int] NOT NULL,
	[ISIM] [varchar](40) NOT NULL,
	[ULKE] [varchar](30) NULL,
	[YAS] [int] NULL,
	[KAZANC] [int] NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[KITAPLAR](
	[ID] [int] NOT NULL,
	[ISIM] [varchar](100) NOT NULL,
	[YZ_ID] [int] NOT NULL,
	[Kategori] [nvarchar](100) NULL,
	[BASKI_SAYISI] [int] NULL
) ON [PRIMARY]



--Veri Ekleme

INSERT INTO KITAPLAR (ID, ISIM,	YZ_ID,	Kategori,	BASKI_SAYISI) VALUES(1, '5 Haftada Java',	1,	'Egitim',	3)
INSERT INTO KITAPLAR (ID, ISIM,	YZ_ID,	Kategori,	BASKI_SAYISI) VALUES(2, '5 Haftada SQL',	1,	'Egitim',	2) 
INSERT INTO KITAPLAR (ID, ISIM,	YZ_ID,	Kategori,	BASKI_SAYISI) VALUES(3, 'Hakiki SQL',	2,	'Egitim',	5) 

INSERT INTO KITAPLAR (ID, ISIM,	YZ_ID,	Kategori,	BASKI_SAYISI) VALUES(4, 'Siyahsiz Geceler',	3,	'Roman',	10) 
INSERT INTO KITAPLAR (ID, ISIM,	YZ_ID,	Kategori,	BASKI_SAYISI) VALUES(5, 'Bir Basina Papatya Bah?elerinde',	6,	'Biyografi',	4) 
INSERT INTO KITAPLAR (ID, ISIM,	YZ_ID,	Kategori,	BASKI_SAYISI) VALUES(6, 'D?n Seni Unutur mu?',	5,	'Kisisel Gelisim',	5) 
INSERT INTO KITAPLAR (ID, ISIM,	YZ_ID,	Kategori,	BASKI_SAYISI) VALUES(7, 'Okyanusun Sarkisi',	3,	'Roman',	8) 
INSERT INTO KITAPLAR (ID, ISIM,	YZ_ID,	Kategori,	BASKI_SAYISI) VALUES(8, 'Her G?n Yeniden Dogmak',	5,	'Kisisel Gelisim',	3) 
INSERT INTO KITAPLAR (ID, ISIM,	YZ_ID,	Kategori,	BASKI_SAYISI) VALUES(9, 'S?rd?r?lebilir Hayat',	4,	'Kisisel Gelisim',	4) 
INSERT INTO KITAPLAR (ID, ISIM,	YZ_ID,	Kategori,	BASKI_SAYISI) VALUES(10, 'Beni En Iyi Kim Tanir?',	4,	'Biyografi',	5) 



INSERT INTO KYAZARLAR (ID, ISIM, ULKE, YAS, KAZANC) VALUES(1,	'Muharrem Nesnel',	'T?rkiye',	33,	10)
INSERT INTO KYAZARLAR (ID, ISIM, ULKE, YAS, KAZANC) VALUES(2,	'Taylan Esquel',	'Meksika',	46,	3)
INSERT INTO KYAZARLAR (ID, ISIM, ULKE, YAS, KAZANC) VALUES(3,	'Ginseo Calivera',	'?talya',	52,	32)
INSERT INTO KYAZARLAR (ID, ISIM, ULKE, YAS, KAZANC) VALUES(4,	'Paul Harrington',	'ABD',	35,	15)
INSERT INTO KYAZARLAR (ID, ISIM, ULKE, YAS, KAZANC) VALUES(5,	'Mevl?t Akceylan',	'T?rkiye',	39,	21)
INSERT INTO KYAZARLAR (ID, ISIM, ULKE, YAS, KAZANC) VALUES(6,	'Necla ?igdem',	'T?rkiye',	26,	6)

select * from KITAPLAR

select * from KYAZARLAR

-- fazla yazar

select * from KYAZARLAR as K where K.ID IN ( select KT.YZ_ID from KITAPLAR as KT where KT.Kategori = 'Roman' OR KT.Kategori = 'Biyografi') 

select * from KYAZARLAR where ID IN ( select YZ_ID from KITAPLAR where Kategori = 'Roman' OR Kategori = 'Biyografi') 


-- tek bir yazar

select * from KYAZARLAR as K where K.ID = ( select KT.YZ_ID from KITAPLAR as KT where KT.Kategori = 'Roman' AND KT.BASKI_SAYISI = '8')

select * from KYAZARLAR where ID = ( select YZ_ID from KITAPLAR where Kategori = 'Roman' AND BASKI_SAYISI = '8')

-------

select * from KITAPLAR where YZ_ID = ( select ID from KYAZARLAR where ULKE = 'ABD')

--------

select Kategori, SUM(BASKI_SAYISI) as ToplamBaski 
from KITAPLAR 
where YZ_ID IN ( select ID from KYAZARLAR where YAS > 35 ) 
GROUP BY Kategori,
ORDER BY ToplamBaski

select * from KITAPLAR where YZ_ID IN ( 2, 3, 5)

-----

select K.ISIM, K.Kategori FROM ( select * from KITAPLAR where BASKI_SAYISI >= 5 ) as K where K.Kategori = 'Roman' 

-- equivalent --

select ISIM, Kategori from KITAPLAR where BASKI_SAYISI >= 5 AND Kategori = 'Roman'

-----











