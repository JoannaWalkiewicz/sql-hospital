CREATE TABLE PACJENT (
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     imie VARCHAR(45),
    nazwisko VARCHAR(45),
    pesel VARCHAR(45), 
    PRIMARY KEY (id)
);
insert into PACJENT ( imie, nazwisko, pesel) values
('Piotr','Wojciechowski', '89012866363'),('Denis','Czerwinski','78112634464'), ('Kajetan','Mazurkiewicz', '65081819776'),('Adrian','Kot', '67093052761'), ('Gniewomir','Wojciechowski', '73022648877'), ('Damian','Szewczyk', '02241641268'), ('Ariel','Mazur', '78071868557'), ('Rafal','Gorski', '90070911623'), ('Amir','Nowak', '96042635117'), ('Lucjan','Kaczmarczyk', '57070147151'),('Lucja','Jaworska', '55061218468'), ('Dominika','Lis', '55042318332'), ('Czeslawa','Ostrowska', '50060667459'),('Konstancja','Wroblewska', '74041726593'), ('Ida','Glowacka', '51061476446'), ('Staniwslawa','Szczepanska', '56072425285'), ('Matylda','Graj', '04261667693'), ('Danuta','Krupa', '81021159735'), ('Zygmunt','Olszewski', '60011054447'), ('Slawomir','Pajac', '02211755818');

CREATE TABLE ODDZIAL (
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     nazwa VARCHAR(45),
    PRIMARY KEY (id)
);
insert into ODDZIAL (nazwa) values('Kardiologiczny'), ('Onkologiczny'), ('Anestezjologii'), ('Chirurgii'), ('Neurologiczny'), ('Pediatryczny'), ('Ginekologiczny'), ('Neonatologiczny'), ('Udarowy'), ('Neurologiczny'), ('Nefrologiczny'), ('Geriatrii'), ('Ratunkowy'), ('Polozniczy'), ('Ortopedyczny'), ('Ogolny'), ('Zakazny'), ('Rehabilitacyjny'), ('Otolaryngologii'), ('Okulistyki');


CREATE TABLE LEKARZ (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  imie VARCHAR(45) NOT NULL,
 nazwisko VARCHAR(45) NOT NULL,
 staz_pracy INT UNSIGNED NOT NULL,
 numer_wykonywania_zawodu VARCHAR(45),
 ODDZIAL_id INT UNSIGNED NOT NULL,
 CONSTRAINT `fk_oddzial` FOREIGN KEY (ODDZIAL_id) REFERENCES ODDZIAL(id),    
PRIMARY KEY(id)
);

INSERT INTO LEKARZ(imie, nazwisko, staz_pracy, numer_wykonywania_zawodu, ODDZIAL_id) VALUES ('Juliana','Witkowska',2, '3822827',1), ('Martyna','Bak',1, '9484936', 2), ('Amelia','Kolodziej',3, '1381778', 3), ('Kaja','Kaminska',4, '4912533', 4), ('Oliwia','Blaszczyk',3, '3478639', 5), ('Malwina','Gorecka',4,'6526057', 6), ('Matylda','Laskowska',6, '6526057', 7), ('Marian','Mroz',2, '8150678', 8), ('Dobromil','Witowski',9,'7380498', 9), ('Milan','Szewczyk',9, '9967982', 10), ('Gabriel','Jakubowski',7, '3758284', 11), ('Matylda','Pawelczyk',6, '3758284', 12), ('Olga','Kotecka',5, '3105945', 13), ('Bogumil','Nowak',11, '3725487', 14), ('Janina','Cieslak',1,'6445789', 15), ('Kajetan','SIkora',13, '6312045', 16), ('Alojzy','Czarnecki',10, '9195509', 17), ('Konrad','Kalinowski',2, '3385059', 18), ('Remigiusz','Wroblewski',3, '5386723', 19), ('Ignacy','Czerwinski',8, '6073113', 20);

CREATE TABLE SPECJALIZACJA (
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     nazwa VARCHAR(45),
    PRIMARY KEY (id)
);
insert into SPECJALIZACJA ( nazwa) values('Kardiolog'), ('Onkolog'), ('Anestezjolog'), ('Chirurg'), ('Neurolog'), ('Pediatra'), ('Ginekolog'), ('Neonatolog'), ('Alergolog'), ('Neurolog'), ('Nefrolog'), ('Geriatra'), ('Chirurg'), ('Polozna'), ('Ortopeda'), ('Iternista'), ('Wirusolog'), ('Rehabilitant'), ('Laryngolog'), ('Okulista');
CREATE TABLE RECEPCJONISTA(
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     imie VARCHAR(45),
     nazwisko VARCHAR(45),
    PRIMARY KEY (id)
);
insert into RECEPCJONISTA ( imie, nazwisko) values('Alan', 'Jakubowski'), ('Matylda', 'Kaminska'), ('Janusz', 'Witkowski'), ('Kewin', 'Maciejewski'), ('Lucja', 'Ziemowit'), ('Mieszko', 'Zakrzewski'), ('Konrad', 'Patyk'), ('Patrycja', 'Zawisza'), ('Boleslaw', 'Kucharski'), ('Maja', 'Baran'), ('Eugeniusz', 'Kubiak'), ('Anatol', 'Piasecki'), ('Dagmara', 'Gajewska'), ('Jola', 'Dudkiewicz'), ('Kazimierz', 'Wielki'), ('Patryk', 'Patyk'), ('Klementyna', 'Wozniak'), ('Aniela', 'Tomaszewska'), ('Zbigniew', 'Przybylski'), ('Kamil', 'Znajda');

CREATE TABLE CHOROBA(
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nazwa VARCHAR(45),
    numer VARCHAR(45),
    PRIMARY KEY (id)
);
insert into CHOROBA ( nazwa, numer) values('otepienie naczyniowe', 'F00'), ('skolioza', 'M41'), ('niewydolnosc nerek', 'N18'), ('rozyczka', 'B06'), ('Odra', 'B05'), ('miazdzyca', '170'), ('zatorowosc', '174'), ('polip nosa', 'J33'), ('rozedma', 'J43'), ('astma', 'j45'), ('torbiele', 'K09'), ('prochnica zebow', 'K02'), ('wrzod zoladka', 'K25'), ('przepuklina udowa', 'K41'), ('zapalenie przelyku', 'k20'), ('liszajec', 'L01'), ('luszczyca', 'L40'), ('martiwca kosci', 'M87'), ('zapalenie miesni', 'M60'), ('uszkodzenie barku', 'M75');

CREATE TABLE WIZYTA(
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     data_przyjecia DATETIME,
     data_wypisania DATETIME,
     data_stworzenia timestamp,
    PRIMARY KEY (id)
);
insert into WIZYTA ( data_przyjecia, data_wypisania, data_stworzenia) values
('2021-02-03', '2020-02-13',CURRENT_TIMESTAMP),('2020-09-20', '2020-09-23', CURRENT_TIMESTAMP),
('2021-07-15', '2020-07-25', CURRENT_TIMESTAMP),('2020-11-03', '2020-12-01', CURRENT_TIMESTAMP), 
('2020-04-05', '2020-01-25', CURRENT_TIMESTAMP), ('2020-09-09', '2020-09-19', CURRENT_TIMESTAMP), 
('2020-03-06', '2020-04-02', CURRENT_TIMESTAMP),('2020-01-07', '2020-02-18', CURRENT_TIMESTAMP), 
('2020-08-08', '2020-08-09', CURRENT_TIMESTAMP),('2020-04-07', '2020-05-13',CURRENT_TIMESTAMP), 
('2020-12-13', '2020-12-23', CURRENT_TIMESTAMP),('2020-01-01', '2020-01-11', CURRENT_TIMESTAMP), 
('2021-01-13', '2021-01-16', CURRENT_TIMESTAMP), ('2020-05-05', '2020-05-15', CURRENT_TIMESTAMP), 
('2021-01-03', '2021-01-13', CURRENT_TIMESTAMP), ('2020-10-13', '2020-11-13', CURRENT_TIMESTAMP), 
('2020-06-16', '2020-06-30', CURRENT_TIMESTAMP),('2020-07-17', '2020-07-27', CURRENT_TIMESTAMP),
('2020-06-07', '2020-06-17', CURRENT_TIMESTAMP),('2020-07-08', '2020-08-18', CURRENT_TIMESTAMP);

CREATE TABLE PACJENCI_ODBYWAJA_WIZYTY(
  PACJENT_id INT UNSIGNED NOT NULL,
  WIZYTA_id INT UNSIGNED NOT NULL,
 CONSTRAINT `fk_pacjent` FOREIGN KEY (PACJENT_id) REFERENCES PACJENT(id),    
CONSTRAINT `fk_wizyta` FOREIGN KEY (WIZYTA_id) REFERENCES WIZYTA(id)
);

INSERT INTO PACJENCI_ODBYWAJA_WIZYTY (PACJENT_id, WIZYTA_id) VALUES (1,3), (4,5), (6,7), (19,1), (11,2), (6,7), (4,3), (2,8), (9,5), (7,6), (12,3), (4,6), (2,5), (3,4), (6,5), (2,1), (17,3), (5,6), (3,2),(2,1);
CREATE TABLE WIZYTY_DOTYCZA_CHOROB(
 WIZYTA_id INT UNSIGNED NOT NULL,
 CHOROBA_id INT UNSIGNED NOT NULL,
 CONSTRAINT `fk_wizyta_c` FOREIGN KEY (WIZYTA_id) REFERENCES WIZYTA(id),    
CONSTRAINT `fk_choroba` FOREIGN KEY (CHOROBA_id) REFERENCES CHOROBA(id)
);

INSERT INTO WIZYTY_DOTYCZA_CHOROB (WIZYTA_id , CHOROBA_id ) VALUES (5,6), (3,9), (1,11), (8,7), (5,19), (11,8), (7,5), (4,6), (7,1), (14,13), (8,9), (17,3), (1,1), (5,7), (6,4), (3,2), (16,4), (3,6), (8,9),(9,16);

CREATE TABLE LEKARZE_OBSLUGUJA_WIZYTY(
 LEKARZ_id INT UNSIGNED NOT NULL,
 WIZYTA_id INT UNSIGNED NOT NULL,
CONSTRAINT `fk_lekarz_o` FOREIGN KEY (LEKARZ_id) REFERENCES LEKARZ(id),    
CONSTRAINT `fk_wizyta_o` FOREIGN KEY (WIZYTA_id) REFERENCES WIZYTA(id)
);

CREATE TABLE  RECEPCJONISCI_PRZYJMUJA_WIZYTY(
RECEPCJONISTA_id INT UNSIGNED NOT NULL,
WIZYTA_id INT UNSIGNED NOT NULL,
CONSTRAINT `fk_recepcjonista_p` FOREIGN KEY (RECEPCJONISTA_id) REFERENCES RECEPCJONISTA(id),    
CONSTRAINT `fk_wizyta_p` FOREIGN KEY (WIZYTA_id) REFERENCES WIZYTA(id)
);



)
