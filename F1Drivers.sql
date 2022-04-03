Use f_one
GO

SET DATEFORMAT ymd
GO


IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE table_name='kierowca')
DROP TABLE kierowca;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE table_name='zespó³')
DROP TABLE zespó³;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE table_name='wyœcigi')
DROP TABLE wyœcigi;

CREATE TABLE wyœcigi(
id_wyœcigu INT IDENTITY(1,1) PRIMARY KEY,
nazwa_wyœcigu   VARCHAR(30) NOT NULL,
)

INSERT INTO wyœcigi(nazwa_wyœcigu)
VALUES('GP Bahrainu');

INSERT INTO wyœcigi(nazwa_wyœcigu)
VALUES('GP Arabii Saudyjskiej');

INSERT INTO wyœcigi(nazwa_wyœcigu)
VALUES('GP Australii');

INSERT INTO wyœcigi(nazwa_wyœcigu)
VALUES('GP Miami');

INSERT INTO wyœcigi(nazwa_wyœcigu)
VALUES('GP Monako');

INSERT INTO wyœcigi(nazwa_wyœcigu)
VALUES('GP W³och');

INSERT INTO wyœcigi(nazwa_wyœcigu)
VALUES('GP Kanady');

INSERT INTO wyœcigi(nazwa_wyœcigu)
VALUES('GP Wielkiej Brytanii');

SELECT * FROM wyœcigi;

CREATE TABLE zespó³ (
id_zespó³					 INT IDENTITY(1,1) PRIMARY KEY,
nazwa						 VARCHAR(50)		  NOT NULL,
bolid						 VARCHAR(10)		  NOT NULL,
silnik						 VARCHAR(30)		  NOT NULL,
imiê_szefa					 VARCHAR(15)		  NOT NULL,
nazwisko_szefa				 VARCHAR(25)		  NOT NULL,
iloœæ_tytu³ów_mistrzoswskich SMALLINT			  NOT NULL,
zdjêcie						 IMAGE					NULL
);

INSERT INTO zespó³(nazwa,bolid,silnik,imiê_szefa,nazwisko_szefa,iloœæ_tytu³ów_mistrzoswskich)
VALUES('Mercedes-AMG Petronas F1 Team','W13','Mercedes','Toto','Wolff','8');

INSERT INTO zespó³(nazwa,bolid,silnik,imiê_szefa,nazwisko_szefa,iloœæ_tytu³ów_mistrzoswskich)
VALUES('Oracle Red Bull Racing','RB18','Red Bull Powertrains','Christian','Horner','4');

INSERT INTO zespó³(nazwa,bolid,silnik,imiê_szefa,nazwisko_szefa,iloœæ_tytu³ów_mistrzoswskich)
VALUES('McLaren F1 Team','MCL36','Mercedes','Andreas','Seidl','8');

INSERT INTO zespó³(nazwa,bolid,silnik,imiê_szefa,nazwisko_szefa,iloœæ_tytu³ów_mistrzoswskich)
VALUES('Scuderia Ferrari','F1-75','Ferrari','Mattia','Binotto','16');

INSERT INTO zespó³(nazwa,bolid,silnik,imiê_szefa,nazwisko_szefa,iloœæ_tytu³ów_mistrzoswskich)
VALUES('Scuderia AlphaTauri','AT03','Red Bull Powertrains','Franz','Tost','0');

INSERT INTO zespó³(nazwa,bolid,silnik,imiê_szefa,nazwisko_szefa,iloœæ_tytu³ów_mistrzoswskich)
VALUES('BWT Alpine F1 Team','A522','Renault','Otmar','Szafnauer','2');

INSERT INTO zespó³(nazwa,bolid,silnik,imiê_szefa,nazwisko_szefa,iloœæ_tytu³ów_mistrzoswskich)
VALUES('Williams Racing','FW44','Mercedes','Jost','Capito','9');

INSERT INTO zespó³(nazwa,bolid,silnik,imiê_szefa,nazwisko_szefa,iloœæ_tytu³ów_mistrzoswskich)
VALUES('Aston Martin Aramco Cognizant F1 Team','AMR22','Mercedes','Mike','Crack','0');

INSERT INTO zespó³(nazwa,bolid,silnik,imiê_szefa,nazwisko_szefa,iloœæ_tytu³ów_mistrzoswskich)
VALUES('Alfa Romeo F1 Team ORLEN','C42','Ferrari','Frédéric','Vasseur','0');

INSERT INTO zespó³(nazwa,bolid,silnik,imiê_szefa,nazwisko_szefa,iloœæ_tytu³ów_mistrzoswskich)
VALUES('Haas F1 Team','VF-22','Ferrari','Guenther','Steiner','0');

UPDATE zespó³ SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Merc.png', SINGLE_BLOB) a) WHERE id_zespó³=1;

UPDATE zespó³ SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\RBR.png', SINGLE_BLOB) a) WHERE id_zespó³=2;

UPDATE zespó³ SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Mcl.png', SINGLE_BLOB) a) WHERE id_zespó³=3;

UPDATE zespó³ SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Ferrari.png', SINGLE_BLOB) a) WHERE id_zespó³=4;

UPDATE zespó³ SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\AT.png', SINGLE_BLOB) a) WHERE id_zespó³=5;

UPDATE zespó³ SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Alp.png', SINGLE_BLOB) a) WHERE id_zespó³=6;

UPDATE zespó³ SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Will.png', SINGLE_BLOB) a) WHERE id_zespó³=7;

UPDATE zespó³ SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\AMR.png', SINGLE_BLOB) a) WHERE id_zespó³=8;

UPDATE zespó³ SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\Alfa.png', SINGLE_BLOB) a) WHERE id_zespó³=9;

UPDATE zespó³ SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\TEAM\haas.png', SINGLE_BLOB) a) WHERE id_zespó³=10;


SELECT * FROM zespó³;

CREATE TABLE kierowca (
id_kierowca			INT IDENTITY(1,1) PRIMARY KEY,
imie						 VARCHAR(15) NOT NULL,
nazwisko					 VARCHAR(25) NOT NULL,
kraj						 VARCHAR(25) NOT NULL,
nazwa_zespó³u				 INT REFERENCES zespó³(id_zespó³) NOT NULL,
numer_startowy				 SMALLINT	 NOT NULL,
data_urodzenia				 DATETIME    NOT NULL,
iloœæ_startów				 SMALLINT	 NOT NULL,
iloœæ_pole_position			 SMALLINT	 NOT NULL,
iloœæ_zwyciêstw				 SMALLINT	 NOT NULL,
iloœæ_tytu³ów_mistrzoswskich SMALLINT    NOT NULL,
ulubiony_wyœcig				 INT REFERENCES wyœcigi(id_wyœcigu) NOT NULL,
zdjêcie						 IMAGE		 NULL
);
GO

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Lewis','Hamilton','Wielka Brytania',1,'44','1985-01-07','290','103','103','7',8);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('George','Russell','Wielka Brytania',1,'63','1998-02-15','62','0','0','0',8);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Max','Verstappen','Holandia',2,'1','1997-09-30','143','13','21','1',1);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Sergio','Perez','Meksyk',2,'11','1990-01-26','216','1','2','0',5);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Lando','Norris','Wielka Brytania',3,'4','1999-11-13','62','1','0','0',8);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Daniel','Ricciardo','Australia',3,'3','1989-07-01','212','3','8','0',4);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Charles','Leclerc','Monako',4,'16','1997-10-16','83','10','3','0',5);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Carlos','Sainz','Hiszpania',4,'55','1994-09-01','143','0','0','0',2);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Pierre','Gasly','Francja',5,'10','1996-02-07','88','0','1','0',5);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Yuki','Tsunoda','Japonia',5,'22','2000-05-11','24','0','0','0',3);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Fernando','Alonso','Hiszpania',6,'14','1981-07-29','338','22','32','2',7);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Esteban','Ocon','Hiszpania',6,'31','1996-09-17','91','0','1','0',1);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Alex','Albon','Tajlandia',7,'23','1996-03-23','40','0','0','0',5);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Nicholas','Latifi','Kanada',7,'6','1995-06-29','41','0','0','0',8);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Sebastian','Vettel','Niemcy',8,'5','1987-07-03','280','57','53','4',2);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Lance','Stroll','Kanada',8,'18','1998-10-29','102','1','0','0',4);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Valtteri ','Bottas','Finlandia',9,'77','1989-08-28','180','20','10','0',7);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Guanyu','Zhou','Chiny',9,'24','1999-05-30','2','0','0','0',6);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Mick','Schumacher','Chiny',10,'47','1999-03-22','23','0','0','0',3);

INSERT INTO kierowca(imie,nazwisko,kraj,nazwa_zespó³u,numer_startowy,data_urodzenia,iloœæ_startów,iloœæ_pole_position,iloœæ_zwyciêstw,iloœæ_tytu³ów_mistrzoswskich,ulubiony_wyœcig)
VALUES('Kevin','Magnussen','Dania',10,'20','1992-10-05','122','0','0','0',1);

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\HAM.png', SINGLE_BLOB) a) WHERE numer_startowy=44;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\RUS.png', SINGLE_BLOB) a) WHERE numer_startowy=63;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\VER.png', SINGLE_BLOB) a) WHERE numer_startowy=1;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\PER.png', SINGLE_BLOB) a) WHERE numer_startowy=11;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\NOR.png', SINGLE_BLOB) a) WHERE numer_startowy=4;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\RIC.png', SINGLE_BLOB) a) WHERE numer_startowy=3;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\LEC.png', SINGLE_BLOB) a) WHERE numer_startowy=16;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\SAI.png', SINGLE_BLOB) a) WHERE numer_startowy=55;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\GAS.png', SINGLE_BLOB) a) WHERE numer_startowy=10;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\TSU.png', SINGLE_BLOB) a) WHERE numer_startowy=22;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\ALO.png', SINGLE_BLOB) a) WHERE numer_startowy=14;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\OCO.png', SINGLE_BLOB) a) WHERE numer_startowy=31;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\ALB.png', SINGLE_BLOB) a) WHERE numer_startowy=23;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\LAT.png', SINGLE_BLOB) a) WHERE numer_startowy=6;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\VET.png', SINGLE_BLOB) a) WHERE numer_startowy=5;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\STR.png', SINGLE_BLOB) a) WHERE numer_startowy=18;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\BOT.png', SINGLE_BLOB) a) WHERE numer_startowy=77;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\ZHO.png', SINGLE_BLOB) a) WHERE numer_startowy=24;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\MSC.png', SINGLE_BLOB) a) WHERE numer_startowy=47;

UPDATE kierowca SET zdjêcie=(SELECT BulkColumn FROM OPENROWSET (BULK 'C:\img\DVR\MAG.png', SINGLE_BLOB) a) WHERE numer_startowy=20;

SELECT * FROM kierowca LEFT JOIN zespó³ ON kierowca.nazwa_zespó³u= zespó³.id_zespó³ LEFT JOIN wyœcigi on kierowca.ulubiony_wyœcig = wyœcigi.id_wyœcigu ORDER by id_zespó³;
