CREATE DATABASE f_one

Use f_one
GO

SET DATEFORMAT ymd
GO


IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE table_name='kierowca')
DROP TABLE kierowca;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE table_name='zesp馧')
DROP TABLE zesp馧;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE table_name='wyigi')
DROP TABLE wyigi;

CREATE TABLE wyigi(
id_wyigu INT IDENTITY(1,1) PRIMARY KEY,
nazwa_wyigu   VARCHAR(30) NOT NULL,
)

INSERT INTO wyigi(nazwa_wyigu)
VALUES('GP Bahrainu');

INSERT INTO wyigi(nazwa_wyigu)
VALUES('GP Arabii Saudyjskiej');

INSERT INTO wyigi(nazwa_wyigu)
VALUES('GP Australii');

INSERT INTO wyigi(nazwa_wyigu)
VALUES('GP Miami');

INSERT INTO wyigi(nazwa_wyigu)
VALUES('GP Monako');

INSERT INTO wyigi(nazwa_wyigu)
VALUES('GP W這ch');

INSERT INTO wyigi(nazwa_wyigu)
VALUES('GP Kanady');

INSERT INTO wyigi(nazwa_wyigu)
VALUES('GP Wielkiej Brytanii');

SELECT * FROM wyigi;

CREATE TABLE zesp馧 (
id_zesp馧					 INT IDENTITY(1,1) PRIMARY KEY,
nazwa						 VARCHAR(50)		  NOT NULL,
bolid						 VARCHAR(10)		  NOT NULL,
silnik						 VARCHAR(30)		  NOT NULL,
imi獥szefa					 VARCHAR(15)		  NOT NULL,
nazwisko_szefa				 VARCHAR(25)		  NOT NULL,
ilo_tytu堯w_mistrzoswskich SMALLINT			  NOT NULL,
zdj璚ie						 IMAGE					NULL
);

INSERT INTO zesp馧(nazwa,bolid,silnik,imi獥szefa,nazwisko_szefa,ilo_tytu堯w_mistrzoswskich)
VALUES('Mercedes-AMG Petronas F1 Team','W13','Mercedes','Toto','Wolff','8');

INSERT INTO zesp馧(nazwa,bolid,silnik,imi獥szefa,nazwisko_szefa,ilo_tytu堯w_mistrzoswskich)
VALUES('Oracle Red Bull Racing','RB18','Red Bull Powertrains','Christian','Horner','4');

INSERT INTO zesp馧(nazwa,bolid,silnik,imi獥szefa,nazwisko_szefa,ilo_tytu堯w_mistrzoswskich)
VALUES('McLaren F1 Team','MCL36','Mercedes','Andreas','Seidl','8');

INSERT INTO zesp馧(nazwa,bolid,silnik,imi獥szefa,nazwisko_szefa,ilo_tytu堯w_mistrzoswskich)
VALUES('Scuderia Ferrari','F1-75','Ferrari','Mattia','Binotto','16');

INSERT INTO zesp馧(nazwa,bolid,silnik,imi獥szefa,nazwisko_szefa,ilo_tytu堯w_mistrzoswskich)
VALUES('Scuderia AlphaTauri','AT03','Red Bull Powertrains','Franz','Tost','0');

INSERT INTO zesp馧(nazwa,bolid,silnik,imi獥szefa,nazwisko_szefa,ilo_tytu堯w_mistrzoswskich)
VALUES('BWT Alpine F1 Team','A522','Renault','Otmar','Szafnauer','2');

INSERT INTO zesp馧(nazwa,bolid,silnik,imi獥szefa,nazwisko_szefa,ilo_tytu堯w_mistrzoswskich)
VALUES('Williams Racing','FW44','Mercedes','Jost','Capito','9');

INSERT INTO zesp馧(nazwa,bolid,silnik,imi獥szefa,nazwisko_szefa,ilo_tytu堯w_mistrzoswskich)
VALUES('Aston Martin Aramco Cognizant F1 Team','AMR22','Mercedes','Mike','Crack','0');

INSERT INTO zesp馧(nazwa,bolid,silnik,imi獥szefa,nazwisko_szefa,ilo_tytu堯w_mistrzoswskich)
VALUES('Alfa Romeo F1 Team ORLEN','C42','Ferrari','Fr嶮廨ic','Vasseur','0');

INSERT INTO zesp馧(nazwa,bolid,silnik,imi獥szefa,nazwisko_szefa,ilo_tytu堯w_mistrzoswskich)
VALUES('Haas F1 Team','VF-22','Ferrari','Guenther','Steiner','0');

UPDATE zesp馧 SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Merc.png', SINGLE_BLOB) a) WHERE id_zesp馧=1;

UPDATE zesp馧 SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\RBR.png', SINGLE_BLOB) a) WHERE id_zesp馧=2;

UPDATE zesp馧 SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Mcl.png', SINGLE_BLOB) a) WHERE id_zesp馧=3;

UPDATE zesp馧 SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Ferrari.png', SINGLE_BLOB) a) WHERE id_zesp馧=4;

UPDATE zesp馧 SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\AT.png', SINGLE_BLOB) a) WHERE id_zesp馧=5;

UPDATE zesp馧 SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Alp.png', SINGLE_BLOB) a) WHERE id_zesp馧=6;

UPDATE zesp馧 SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Will.png', SINGLE_BLOB) a) WHERE id_zesp馧=7;

UPDATE zesp馧 SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\AMR.png', SINGLE_BLOB) a) WHERE id_zesp馧=8;

UPDATE zesp馧 SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Alfa.png', SINGLE_BLOB) a) WHERE id_zesp馧=9;

UPDATE zesp馧 SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\haas.png', SINGLE_BLOB) a) WHERE id_zesp馧=10;


SELECT * FROM zesp馧;

CREATE TABLE kierowca (
id_kierowca			INT IDENTITY(1,1) PRIMARY KEY,
imie						 VARCHAR(15) NOT NULL,
nazwisko					 VARCHAR(25) NOT NULL,
kraj						 VARCHAR(25) NOT NULL,
nazwa_zesp馧u				 INT REFERENCES zesp馧(id_zesp馧) NOT NULL,
numer_startowy				 SMALLINT	 NOT NULL,
data_urodzenia				 DATETIME    NOT NULL,
ilo_start闚				 SMALLINT	 NOT NULL,
ilo_pole_position			 SMALLINT	 NOT NULL,
ilo_zwyci瘰tw				 SMALLINT	 NOT NULL,
ilo_tytu堯w_mistrzoswskich SMALLINT    NOT NULL,
ulubiony_wyig				 INT REFERENCES wyigi(id_wyigu) NOT NULL,
zdj璚ie						 IMAGE		 NULL
);
GO

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Lewis','Hamilton','Wielka Brytania',1,'44','1985-01-07','290','103','103','7',8);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('George','Russell','Wielka Brytania',1,'63','1998-02-15','62','0','0','0',8);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Max','Verstappen','Holandia',2,'1','1997-09-30','143','13','21','1',1);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Sergio','Perez','Meksyk',2,'11','1990-01-26','216','1','2','0',5);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Lando','Norris','Wielka Brytania',3,'4','1999-11-13','62','1','0','0',8);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Daniel','Ricciardo','Australia',3,'3','1989-07-01','212','3','8','0',4);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Charles','Leclerc','Monako',4,'16','1997-10-16','83','10','3','0',5);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Carlos','Sainz','Hiszpania',4,'55','1994-09-01','143','0','0','0',2);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Pierre','Gasly','Francja',5,'10','1996-02-07','88','0','1','0',5);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Yuki','Tsunoda','Japonia',5,'22','2000-05-11','24','0','0','0',3);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Fernando','Alonso','Hiszpania',6,'14','1981-07-29','338','22','32','2',7);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Esteban','Ocon','Hiszpania',6,'31','1996-09-17','91','0','1','0',1);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Alex','Albon','Tajlandia',7,'23','1996-03-23','40','0','0','0',5);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Nicholas','Latifi','Kanada',7,'6','1995-06-29','41','0','0','0',8);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Sebastian','Vettel','Niemcy',8,'5','1987-07-03','280','57','53','4',2);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Lance','Stroll','Kanada',8,'18','1998-10-29','102','1','0','0',4);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Valtteri ','Bottas','Finlandia',9,'77','1989-08-28','180','20','10','0',7);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Guanyu','Zhou','Chiny',9,'24','1999-05-30','2','0','0','0',6);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Mick','Schumacher','Chiny',10,'47','1999-03-22','23','0','0','0',3);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp馧u,numer_startowy,data_urodzenia,ilo_start闚,ilo_pole_position,ilo_zwyci瘰tw,ilo_tytu堯w_mistrzoswskich,ulubiony_wyig)
VALUES('Kevin','Magnussen','Dania',10,'20','1992-10-05','122','0','0','0',1);

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\HAM.png', SINGLE_BLOB) a) WHERE numer_startowy=44;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\RUS.png', SINGLE_BLOB) a) WHERE numer_startowy=63;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\VER.png', SINGLE_BLOB) a) WHERE numer_startowy=1;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\PER.png', SINGLE_BLOB) a) WHERE numer_startowy=11;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\NOR.png', SINGLE_BLOB) a) WHERE numer_startowy=4;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\RIC.png', SINGLE_BLOB) a) WHERE numer_startowy=3;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\LEC.png', SINGLE_BLOB) a) WHERE numer_startowy=16;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\SAI.png', SINGLE_BLOB) a) WHERE numer_startowy=55;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\GAS.png', SINGLE_BLOB) a) WHERE numer_startowy=10;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\TSU.png', SINGLE_BLOB) a) WHERE numer_startowy=22;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\ALO.png', SINGLE_BLOB) a) WHERE numer_startowy=14;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\OCO.png', SINGLE_BLOB) a) WHERE numer_startowy=31;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\ALB.png', SINGLE_BLOB) a) WHERE numer_startowy=23;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\LAT.png', SINGLE_BLOB) a) WHERE numer_startowy=6;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\VET.png', SINGLE_BLOB) a) WHERE numer_startowy=5;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\STR.png', SINGLE_BLOB) a) WHERE numer_startowy=18;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\BOT.png', SINGLE_BLOB) a) WHERE numer_startowy=77;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\ZHO.png', SINGLE_BLOB) a) WHERE numer_startowy=24;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\MSC.png', SINGLE_BLOB) a) WHERE numer_startowy=47;

UPDATE kierowca SET zdj璚ie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\MAG.png', SINGLE_BLOB) a) WHERE numer_startowy=20;

SELECT * FROM kierowca LEFT JOIN zesp馧 ON kierowca.nazwa_zesp馧u= zesp馧.id_zesp馧 LEFT JOIN wyigi on kierowca.ulubiony_wyig = wyigi.id_wyigu ORDER by id_zesp馧;
