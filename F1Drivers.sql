Use f_one
GO

SET DATEFORMAT ymd
GO


IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE table_name='kierowca')
DROP TABLE kierowca;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE table_name='zesp�')
DROP TABLE zesp�;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE table_name='wy�cigi')
DROP TABLE wy�cigi;

CREATE TABLE wy�cigi(
id_wy�cigu INT IDENTITY(1,1) PRIMARY KEY,
nazwa_wy�cigu   VARCHAR(30) NOT NULL,
)

INSERT INTO wy�cigi(nazwa_wy�cigu)
VALUES('GP Bahrainu');

INSERT INTO wy�cigi(nazwa_wy�cigu)
VALUES('GP Arabii Saudyjskiej');

INSERT INTO wy�cigi(nazwa_wy�cigu)
VALUES('GP Australii');

INSERT INTO wy�cigi(nazwa_wy�cigu)
VALUES('GP Miami');

INSERT INTO wy�cigi(nazwa_wy�cigu)
VALUES('GP Monako');

INSERT INTO wy�cigi(nazwa_wy�cigu)
VALUES('GP W�och');

INSERT INTO wy�cigi(nazwa_wy�cigu)
VALUES('GP Kanady');

INSERT INTO wy�cigi(nazwa_wy�cigu)
VALUES('GP Wielkiej Brytanii');

SELECT * FROM wy�cigi;

CREATE TABLE zesp� (
id_zesp�					 INT IDENTITY(1,1) PRIMARY KEY,
nazwa						 VARCHAR(50)		  NOT NULL,
bolid						 VARCHAR(10)		  NOT NULL,
silnik						 VARCHAR(30)		  NOT NULL,
imi�_szefa					 VARCHAR(15)		  NOT NULL,
nazwisko_szefa				 VARCHAR(25)		  NOT NULL,
ilo��_tytu��w_mistrzoswskich SMALLINT			  NOT NULL,
zdj�cie						 IMAGE					NULL
);

INSERT INTO zesp�(nazwa,bolid,silnik,imi�_szefa,nazwisko_szefa,ilo��_tytu��w_mistrzoswskich)
VALUES('Mercedes-AMG Petronas F1 Team','W13','Mercedes','Toto','Wolff','8');

INSERT INTO zesp�(nazwa,bolid,silnik,imi�_szefa,nazwisko_szefa,ilo��_tytu��w_mistrzoswskich)
VALUES('Oracle Red Bull Racing','RB18','Red Bull Powertrains','Christian','Horner','4');

INSERT INTO zesp�(nazwa,bolid,silnik,imi�_szefa,nazwisko_szefa,ilo��_tytu��w_mistrzoswskich)
VALUES('McLaren F1 Team','MCL36','Mercedes','Andreas','Seidl','8');

INSERT INTO zesp�(nazwa,bolid,silnik,imi�_szefa,nazwisko_szefa,ilo��_tytu��w_mistrzoswskich)
VALUES('Scuderia Ferrari','F1-75','Ferrari','Mattia','Binotto','16');

INSERT INTO zesp�(nazwa,bolid,silnik,imi�_szefa,nazwisko_szefa,ilo��_tytu��w_mistrzoswskich)
VALUES('Scuderia AlphaTauri','AT03','Red Bull Powertrains','Franz','Tost','0');

INSERT INTO zesp�(nazwa,bolid,silnik,imi�_szefa,nazwisko_szefa,ilo��_tytu��w_mistrzoswskich)
VALUES('BWT Alpine F1 Team','A522','Renault','Otmar','Szafnauer','2');

INSERT INTO zesp�(nazwa,bolid,silnik,imi�_szefa,nazwisko_szefa,ilo��_tytu��w_mistrzoswskich)
VALUES('Williams Racing','FW44','Mercedes','Jost','Capito','9');

INSERT INTO zesp�(nazwa,bolid,silnik,imi�_szefa,nazwisko_szefa,ilo��_tytu��w_mistrzoswskich)
VALUES('Aston Martin Aramco Cognizant F1 Team','AMR22','Mercedes','Mike','Crack','0');

INSERT INTO zesp�(nazwa,bolid,silnik,imi�_szefa,nazwisko_szefa,ilo��_tytu��w_mistrzoswskich)
VALUES('Alfa Romeo F1 Team ORLEN','C42','Ferrari','Fr�d�ric','Vasseur','0');

INSERT INTO zesp�(nazwa,bolid,silnik,imi�_szefa,nazwisko_szefa,ilo��_tytu��w_mistrzoswskich)
VALUES('Haas F1 Team','VF-22','Ferrari','Guenther','Steiner','0');

UPDATE zesp� SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Merc.png', SINGLE_BLOB) a) WHERE id_zesp�=1;

UPDATE zesp� SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\RBR.png', SINGLE_BLOB) a) WHERE id_zesp�=2;

UPDATE zesp� SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Mcl.png', SINGLE_BLOB) a) WHERE id_zesp�=3;

UPDATE zesp� SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Ferrari.png', SINGLE_BLOB) a) WHERE id_zesp�=4;

UPDATE zesp� SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\AT.png', SINGLE_BLOB) a) WHERE id_zesp�=5;

UPDATE zesp� SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Alp.png', SINGLE_BLOB) a) WHERE id_zesp�=6;

UPDATE zesp� SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Will.png', SINGLE_BLOB) a) WHERE id_zesp�=7;

UPDATE zesp� SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\AMR.png', SINGLE_BLOB) a) WHERE id_zesp�=8;

UPDATE zesp� SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Alfa.png', SINGLE_BLOB) a) WHERE id_zesp�=9;

UPDATE zesp� SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\haas.png', SINGLE_BLOB) a) WHERE id_zesp�=10;


SELECT * FROM zesp�;

CREATE TABLE kierowca (
id_kierowca			INT IDENTITY(1,1) PRIMARY KEY,
imie						 VARCHAR(15) NOT NULL,
nazwisko					 VARCHAR(25) NOT NULL,
kraj						 VARCHAR(25) NOT NULL,
nazwa_zesp�u				 INT REFERENCES zesp�(id_zesp�) NOT NULL,
numer_startowy				 SMALLINT	 NOT NULL,
data_urodzenia				 DATETIME    NOT NULL,
ilo��_start�w				 SMALLINT	 NOT NULL,
ilo��_pole_position			 SMALLINT	 NOT NULL,
ilo��_zwyci�stw				 SMALLINT	 NOT NULL,
ilo��_tytu��w_mistrzoswskich SMALLINT    NOT NULL,
ulubiony_wy�cig				 INT REFERENCES wy�cigi(id_wy�cigu) NOT NULL,
zdj�cie						 IMAGE		 NULL
);
GO

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Lewis','Hamilton','Wielka Brytania',1,'44','1985-01-07','290','103','103','7',8);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('George','Russell','Wielka Brytania',1,'63','1998-02-15','62','0','0','0',8);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Max','Verstappen','Holandia',2,'1','1997-09-30','143','13','21','1',1);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Sergio','Perez','Meksyk',2,'11','1990-01-26','216','1','2','0',5);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Lando','Norris','Wielka Brytania',3,'4','1999-11-13','62','1','0','0',8);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Daniel','Ricciardo','Australia',3,'3','1989-07-01','212','3','8','0',4);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Charles','Leclerc','Monako',4,'16','1997-10-16','83','10','3','0',5);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Carlos','Sainz','Hiszpania',4,'55','1994-09-01','143','0','0','0',2);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Pierre','Gasly','Francja',5,'10','1996-02-07','88','0','1','0',5);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Yuki','Tsunoda','Japonia',5,'22','2000-05-11','24','0','0','0',3);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Fernando','Alonso','Hiszpania',6,'14','1981-07-29','338','22','32','2',7);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Esteban','Ocon','Hiszpania',6,'31','1996-09-17','91','0','1','0',1);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Alex','Albon','Tajlandia',7,'23','1996-03-23','40','0','0','0',5);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Nicholas','Latifi','Kanada',7,'6','1995-06-29','41','0','0','0',8);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Sebastian','Vettel','Niemcy',8,'5','1987-07-03','280','57','53','4',2);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Lance','Stroll','Kanada',8,'18','1998-10-29','102','1','0','0',4);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Valtteri ','Bottas','Finlandia',9,'77','1989-08-28','180','20','10','0',7);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Guanyu','Zhou','Chiny',9,'24','1999-05-30','2','0','0','0',6);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Mick','Schumacher','Chiny',10,'47','1999-03-22','23','0','0','0',3);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zesp�u,numer_startowy,data_urodzenia,ilo��_start�w,ilo��_pole_position,ilo��_zwyci�stw,ilo��_tytu��w_mistrzoswskich,ulubiony_wy�cig)
VALUES('Kevin','Magnussen','Dania',10,'20','1992-10-05','122','0','0','0',1);

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\HAM.png', SINGLE_BLOB) a) WHERE numer_startowy=44;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\RUS.png', SINGLE_BLOB) a) WHERE numer_startowy=63;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\VER.png', SINGLE_BLOB) a) WHERE numer_startowy=1;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\PER.png', SINGLE_BLOB) a) WHERE numer_startowy=11;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\NOR.png', SINGLE_BLOB) a) WHERE numer_startowy=4;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\RIC.png', SINGLE_BLOB) a) WHERE numer_startowy=3;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\LEC.png', SINGLE_BLOB) a) WHERE numer_startowy=16;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\SAI.png', SINGLE_BLOB) a) WHERE numer_startowy=55;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\GAS.png', SINGLE_BLOB) a) WHERE numer_startowy=10;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\TSU.png', SINGLE_BLOB) a) WHERE numer_startowy=22;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\ALO.png', SINGLE_BLOB) a) WHERE numer_startowy=14;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\OCO.png', SINGLE_BLOB) a) WHERE numer_startowy=31;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\ALB.png', SINGLE_BLOB) a) WHERE numer_startowy=23;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\LAT.png', SINGLE_BLOB) a) WHERE numer_startowy=6;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\VET.png', SINGLE_BLOB) a) WHERE numer_startowy=5;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\STR.png', SINGLE_BLOB) a) WHERE numer_startowy=18;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\BOT.png', SINGLE_BLOB) a) WHERE numer_startowy=77;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\ZHO.png', SINGLE_BLOB) a) WHERE numer_startowy=24;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\MSC.png', SINGLE_BLOB) a) WHERE numer_startowy=47;

UPDATE kierowca SET zdj�cie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\MAG.png', SINGLE_BLOB) a) WHERE numer_startowy=20;

SELECT * FROM kierowca LEFT JOIN zesp� ON kierowca.nazwa_zesp�u= zesp�.id_zesp� LEFT JOIN wy�cigi on kierowca.ulubiony_wy�cig = wy�cigi.id_wy�cigu ORDER by id_zesp�;
