CREATE DATABASE veriTabani

CREATE TABLE Personel(
             PersonelID int NOT NULL PRIMARY KEY, 
			 TCKN char(11) NOT NULL,
			 Adi varchar(30) NOT NULL,
			 Maas decimal NOT NULL DEFAULT(0),
			 Cinsiyet char(1) NULL)

ALTER TABLE Personel
ADD Ulke varchar (20) NULL, Kent varchar (20) NULL, yas int NULL

ALTER TABLE Personel
DROP COLUMN TCKN


INSERT INTO Personel 
VALUES ( 1, 'Ahmet', 1500, 'E',  'Turkiye', 'Ankara', 20)

INSERT INTO Personel 
VALUES ( 2, 'Mehmet', 1800, 'E',  'Turkiye', 'Bolu', 22)

INSERT INTO Personel 
VALUES ( 3, 'Ayse', 2500, 'K',  'Turkiye', 'Istanbul', 23)

INSERT INTO Personel 
VALUES ( 4, 'Fatma', 2800, 'K',  'Turkiye', 'Ankara', 35)

INSERT INTO Personel 
VALUES ( 5, 'John', 3500, 'E',  'ABD', 'New York', 45)


INSERT INTO Personel 
VALUES ( 6, 'Ellen', 3800, 'K',  'ABD', 'New York', 40)


INSERT INTO Personel 
VALUES ( 7, 'Frank', 3200, 'E',  'Fransa', 'Paris', 30)


INSERT INTO Personel 
VALUES ( 8, 'Hans', 4000, 'E',  'Almanya', 'Berlin', 20)

INSERT INTO Personel 
VALUES ( 9, 'Can', 2200, 'E',  'Turkiye', 'Adana', 20)


UPDATE Personel
SET yas=27
WHERE Adi='Can'

UPDATE Personel
SET yas=37
WHERE Adi='Hans'

Update Personel
SET yas = NULL
where Adi ='Hans'

select * from Personel

select AVG(maas) as ort_maas from Personel

select count( Distinct Ulke) as sayi from Personel

select max(yas) enyasli from Personel


-- GROUP BY IFADELERI

select Distinct Ulke from Personel 

select Ulke from Personel group by Ulke


-- yukardaki 2 ornek ayni sonucu veriyor

select Ulke, Kent, AVG(maas) from Personel group by Ulke, Kent

select * from Personel


select Count(*), Ulke, Kent from Personel group by Ulke, Kent

select Ulke, Cinsiyet, AVG(yas) as ort_yas, COUNT(*) as sayi from Personel Group By Ulke, Cinsiyet

select Ulke, Cinsiyet, AVG(yas), COUNT(*) from Personel where maas >2000 group by ulke, cinsiyet


-- group by ve having ifadeleri 

select Kent, Count(*) from Personel group by Kent having count(*) >1

insert into Personel values ( 10, 'Mira', 2900, 'K', 'Romanya', 'Bukres', 25 )

Update Personel
set maas=3200 where Adi='Mira'

select Ulke, AVG(maas), Count(*) from Personel where Cinsiyet='K' group by Ulke having AVG(maas) > 2000

select * from Personel


select Kent from Personel group by Kent order by Kent desc





















