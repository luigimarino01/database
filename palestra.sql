CREATE DATABASE Palestra;

CREATE TABLE Sede (
    NomePalestra varchar(50) NOT NULL,
    Via varchar(255),
    Cap varchar(10),
    Citta varchar(255),
    PRIMARY KEY(NomePalestra)
);

CREATE TABLE Abbonamento (
   TipoAbbonamento varchar(50) NOT NULL,
   NomePalestra varchar(50) NOT NULL,
   PrezzoAbbonamento float NOT NULL,
   FOREIGN KEY(NomePalestra) REFERENCES Sede(NomePalestra),
   PRIMARY KEY(TipoAbbonamento, NomePalestra)
);

CREATE TABLE Corso(
    NomeCorso varchar(50) NOT NULL,
    NomePalestra varchar(50) NOT NULL,
    DurataCorso int NOT NULL,
    CapienzaCorso int NOT NULL,
    FOREIGN KEY(NomePalestra) REFERENCES Sede(NomePalestra),
    PRIMARY KEY(NomeCorso, NomePalestra)
);

CREATE TABLE Servizio(
    NomeServizio varchar(50) NOT NULL,
    NomePalestra varchar(50) NOT NULL,
    CostoServizio float NOT NULL,
    FOREIGN KEY(NomePalestra) REFERENCES Sede(NomePalestra),
    PRIMARY KEY(NomeServizio, NomePalestra)
);

CREATE TABLE Prodotto(
    CodiceProdotto varchar(50) NOT NULL,
    NomeProdotto varchar(50) NOT NULL,
    PesoProdotto float,
    PRIMARY KEY(CodiceProdotto)
);

CREATE TABLE Vende(
    CodiceScontrino varchar(50) NOT NULL,
    NomePalestra varchar(50) NOT NULL,
    CodiceProdotto varchar(50) NOT NULL,
    DataVenditaProdotto date NOT NULL,
    CostoProdotto float NOT NULL,
    FOREIGN KEY(NomePalestra) REFERENCES Sede(NomePalestra),
    FOREIGN KEY(CodiceProdotto) REFERENCES Prodotto(CodiceProdotto),
    PRIMARY KEY(CodiceScontrino) 
);

CREATE TABLE Persona(
    CFPersona varchar(16) NOT NULL,
    NomePersona varchar(20) NOT NULL,
    CognomePersona varchar(20) NOT NULL,
    DataNascitaPersona date NOT NULL,
    PRIMARY KEY(CFPersona)
);

CREATE TABLE Proprietario(
    CFPersona varchar(16) NOT NULL,
    DataContrattoAcquisto date NOT NULL,
    FOREIGN KEY(CFPersona) REFERENCES Persona(CFPersona),
    PRIMARY KEY(CFPersona)
);

CREATE TABLE Appartiene(
     CFPersona varchar(16) NOT NULL,
     NomePalestra varchar(50) NOT NULL,
     FOREIGN KEY(CFPersona) REFERENCES Proprietario(CFPersona),
     FOREIGN KEY(NomePalestra) REFERENCES Sede(NomePalestra),
     PRIMARY KEY(CFPersona,NomePalestra)
);

CREATE TABLE Dipendente(
    CFPersona varchar(16) NOT NULL,
    NumeroTesseraDipendente varchar(50),
    FOREIGN KEY(CFPersona) REFERENCES Persona(CFPersona),
    PRIMARY KEY(CFPersona)
);

CREATE TABLE Segretario(
    CFPersona varchar(16) NOT NULL,
    FOREIGN KEY(CFPersona) REFERENCES Dipendente(CFPersona),
    PRIMARY KEY(CFPersona)
);

CREATE TABLE Istruttore(
    SpecializzazioneIstruttore varchar(30) NOT NULL,
    CFPersona varchar(16) NOT NULL,
    FOREIGN KEY(CFPersona) REFERENCES Dipendente(CFPersona),
    PRIMARY KEY(CFPersona)
);

CREATE TABLE Iscritto(
    NumeroTesseraIscritto varchar(50),
    CFPersona varchar(16) NOT NULL,
    FOREIGN KEY(CFPersona) REFERENCES Dipendente(CFPersona),
    PRIMARY KEY(CFPersona)
);

CREATE TABLE Contratto(
    CodiceContratto varchar(30) NOT NULL,
    DataStipulazioneContratto date NOT NULL,
    DataScadenzaContratto date NOT NULL,
    Stipendio float NOT NULL,
    CFPersona varchar(16) NOT NULL,
    FOREIGN KEY(CFPersona) REFERENCES Dipendente(CFPersona),
    PRIMARY KEY(CodiceContratto)
);

CREATE TABLE Sottoscrive(
    DataSottoiscrizioneAbbonamento date NOT NULL,
    DataScadenzaAbbonamento date NOT NULL,
    CFPersona varchar(16) NOT NULL,
    TipoAbbonamento varchar(16) NOT NULL,
    NomePalestra varchar (50) NOT NULL,
    FOREIGN KEY(CFPersona) REFERENCES Iscritto(CFPersona),
    FOREIGN KEY(TipoAbbonamento,NomePalestra) REFERENCES Abbonamento(TipoAbbonamento,NomePalestra),
    PRIMARY KEY(CFPersona,NomePalestra,TipoAbbonamento,DataSottoiscrizioneAbbonamento)
);

CREATE TABLE Conduce(
    GiornoConduzione varchar(9) NOT NULL,
    OraConduzione int NOT NULL,
    CFPersona varchar(16) NOT NULL,
    NomeCorso varchar(50) NOT NULL,
    NomePalestra varchar (50) NOT NULL,
    FOREIGN KEY(CFPersona) REFERENCES Istruttore(CFPersona),
    FOREIGN KEY(NomeCorso,NomePalestra) REFERENCES Corso(NomeCorso,NomePalestra),
    PRIMARY KEY(GiornoConduzione,OraConduzione)
);

CREATE TABLE Accede(
    DataAccesso date NOT NULL,
    CostoServizio float NOT NULL,
    CFPersona varchar(16) NOT NULL,
    NomeServizio varchar(50) NOT NULL,
    NomePalestra varchar(50) NOT NULL,
    FOREIGN KEY(CFPersona) REFERENCES Iscritto(CFPersona),
    FOREIGN KEY(NomeServizio,NomePalestra) REFERENCES Servizio(NomeServizio,NomePalestra),
    PRIMARY KEY(DataAccesso,CFPersona,NomeServizio)
);

CREATE TABLE Prenotazione(
    CodicePrenotazione varchar(15) NOT NULL,
    DataPrenotazione date NOT NULL,
    CFPersona varchar(16) NOT NULL,
    NomeCorso varchar(50) NOT NULL,
    NomePalestra varchar(50) NOT NULL,
    FOREIGN KEY(NomeCorso,NomePalestra) REFERENCES Corso(NomeCorso,NomePalestra),
    FOREIGN KEY(CFPersona) REFERENCES Iscritto(CFPersona),
    PRIMARY KEY(CodicePrenotazione)
);

CREATE TABLE SchedaAllenamento(
    CodiceSchedaAllenamento varchar(15) NOT NULL,
    ScadenzaSchedaAllenamento date NOT NULL,
    CFPersonaIscritto varchar(16) NOT NULL,
    CFPersonaIstruttore varchar(16) NOT NULL,
    FOREIGN KEY(CFPersonaIscritto) REFERENCES Iscritto(CFPersona),
    FOREIGN KEY(CFPersonaIstruttore) REFERENCES Istruttore(CFPersona),
    PRIMARY KEY(CodiceSchedaAllenamento)
);

CREATE TABLE Esercizio(
    NomeEsercizio varchar(50) NOT NULL,
    GruppoMuscolare varchar(30) NOT NULL,
    PRIMARY KEY(NomeEsercizio)
);

CREATE TABLE Contiene(
    Serie int NOT NULL,
    Ripetizioni int NOT NULL,
    NomeEsercizio varchar(50) NOT NULL,
    CodiceSchedaAllenamento varchar(15) NOT NULL,
    FOREIGN KEY(NomeEsercizio) REFERENCES Esercizio(NomeEsercizio),
    FOREIGN KEY(CodiceSchedaAllenamento) REFERENCES SchedaAllenamento(CodiceSchedaAllenamento),
    PRIMARY KEY(NomeEsercizio, CodiceSchedaAllenamento)
);


--POPOLAMENTO TABELLA SEDE

INSERT INTO Sede(NomePalestra, Via, Cap, Citta) VALUES('Fit For Smile', 'Via Pietro Donadio', '80021', 'Afragola');
INSERT INTO Sede(NomePalestra, Via, Cap, Citta) VALUES('Mondo Fitness', 'Via Giovanni Rana', '80024', 'Cardito');
INSERT INTO Sede(NomePalestra, Via, Cap, Citta) VALUES('Level Up Via Argine', 'Via Argine', '80147', 'Napoli');
INSERT INTO Sede(NomePalestra, Via, Cap, Citta) VALUES('Spartani', 'Via Damiano Chiesa', '20026', 'Milano');
INSERT INTO Sede(NomePalestra, Via, Cap, Citta) VALUES('Performance', 'Via Nizza', '00198', 'Roma');

--POPOLAMENTO TABELLA ABBONAMENTO

INSERT INTO Abbonamento(TipoAbbonamento, NomePalestra, PrezzoAbbonamento) VALUES('Mensile', 'Fit For Smile', 45.00);
INSERT INTO Abbonamento(TipoAbbonamento, NomePalestra, PrezzoAbbonamento) VALUES('Trimestrale', 'Fit For Smile', 120.00);
INSERT INTO Abbonamento(TipoAbbonamento, NomePalestra, PrezzoAbbonamento) VALUES('Annuale', 'Fit For Smile', 350.00);
INSERT INTO Abbonamento(TipoAbbonamento, NomePalestra, PrezzoAbbonamento) VALUES('Mensile', 'Mondo Fitness', 20.00);
INSERT INTO Abbonamento(TipoAbbonamento, NomePalestra, PrezzoAbbonamento) VALUES('Semestrale', 'Mondo Fitness', 80.00);
INSERT INTO Abbonamento(TipoAbbonamento, NomePalestra, PrezzoAbbonamento) VALUES('Annuale', 'Mondo Fitness', 145.00);
INSERT INTO Abbonamento(TipoAbbonamento, NomePalestra, PrezzoAbbonamento) VALUES('Semestrale', 'Level Up Via Argine', 75.00);
INSERT INTO Abbonamento(TipoAbbonamento, NomePalestra, PrezzoAbbonamento) VALUES('Annuale', 'Level Up Via Argine', 100.00);
INSERT INTO Abbonamento(TipoAbbonamento, NomePalestra, PrezzoAbbonamento) VALUES('Mensile', 'Performance', 50.00);
INSERT INTO Abbonamento(TipoAbbonamento, NomePalestra, PrezzoAbbonamento) VALUES('Trimestrale', 'Performance', 120.00);
INSERT INTO Abbonamento(TipoAbbonamento, NomePalestra, PrezzoAbbonamento) VALUES('Semestrale', 'Performance', 200.00);
INSERT INTO Abbonamento(TipoAbbonamento, NomePalestra, PrezzoAbbonamento) VALUES('Annuale', 'Performance', 350.00);

--POPOLAMENTO TABELLA CORSO--

INSERT INTO Corso(NomeCorso,NomePalestra,DurataCorso,CapienzaCorso) VALUES('Fit Boxe', 'Fit For Smile', 90, 30);
INSERT INTO Corso(NomeCorso,NomePalestra,DurataCorso,CapienzaCorso) VALUES('Zumba', 'Fit For Smile', 60, 50);
INSERT INTO Corso(NomeCorso,NomePalestra,DurataCorso,CapienzaCorso) VALUES('CrossFit', 'Fit For Smile', 60, 15);
INSERT INTO Corso(NomeCorso,NomePalestra,DurataCorso,CapienzaCorso) VALUES('Pilates', 'Fit For Smile', 45, 80);
INSERT INTO Corso(NomeCorso,NomePalestra,DurataCorso,CapienzaCorso) VALUES('Yoga', 'Fit For Smile', 90, 30);
INSERT INTO Corso(NomeCorso,NomePalestra,DurataCorso,CapienzaCorso) VALUES('Zumba', 'Mondo Fitness', 30, 15);
INSERT INTO Corso(NomeCorso,NomePalestra,DurataCorso,CapienzaCorso) VALUES('Pilates', 'Mondo Fitness', 60, 20);
INSERT INTO Corso(NomeCorso,NomePalestra,DurataCorso,CapienzaCorso) VALUES('Kick Boxing', 'Mondo Fitness', 90, 10);
INSERT INTO Corso(NomeCorso,NomePalestra,DurataCorso,CapienzaCorso) VALUES('CrossFit', 'Level Up Via Argine', 60, 40);
INSERT INTO Corso(NomeCorso,NomePalestra,DurataCorso,CapienzaCorso) VALUES('Zumba', 'Performance', 45, 15);
INSERT INTO Corso(NomeCorso,NomePalestra,DurataCorso,CapienzaCorso) VALUES('Pilates', 'Performance', 60, 20);
INSERT INTO Corso(NomeCorso,NomePalestra,DurataCorso,CapienzaCorso) VALUES('Kick Boxing', 'Performance', 90, 10);
INSERT INTO Corso(NomeCorso,NomePalestra,DurataCorso,CapienzaCorso) VALUES('Boxe', 'Performance', 60, 10);
INSERT INTO Corso(NomeCorso,NomePalestra,DurataCorso,CapienzaCorso) VALUES('Crossfit', 'Performance', 60, 10);

--POPOLAMENTO TABELLA SERVIZIO--

INSERT INTO Servizio( NomeServizio,NomePalestra,CostoServizio) VALUES ('SPA','Fit For Smile',50.00);
INSERT INTO Servizio( NomeServizio,NomePalestra,CostoServizio) VALUES ('Piscina','Fit For Smile',35.00);
INSERT INTO Servizio( NomeServizio,NomePalestra,CostoServizio) VALUES ('Ristorante','Fit For Smile',40.00);
INSERT INTO Servizio( NomeServizio,NomePalestra,CostoServizio) VALUES ('Piscina','Mondo Fitness',20.00);
INSERT INTO Servizio( NomeServizio,NomePalestra,CostoServizio) VALUES ('Sauna','Mondo Fitness',15.00);
INSERT INTO Servizio( NomeServizio,NomePalestra,CostoServizio) VALUES ('Acque Termali','Performance',50.00);
INSERT INTO Servizio( NomeServizio,NomePalestra,CostoServizio) VALUES ('Massaggio','Performance',35.00);
INSERT INTO Servizio( NomeServizio,NomePalestra,CostoServizio) VALUES ('Piscina','Performance',45.00);
INSERT INTO Servizio( NomeServizio,NomePalestra,CostoServizio) VALUES ('Ristorante','Performance',70.00);

--POPOLAMENTO TABELLA PRODOTTO--

INSERT INTO Prodotto(CodiceProdotto,NomeProdotto,PesoProdotto) VALUES('12530','Gatorade',500.00);
INSERT INTO Prodotto(CodiceProdotto,NomeProdotto,PesoProdotto) VALUES('12533','Acqua',500.00);
INSERT INTO Prodotto(CodiceProdotto,NomeProdotto,PesoProdotto) VALUES('12430','Creatine',500.00);
INSERT INTO Prodotto(CodiceProdotto,NomeProdotto,PesoProdotto) VALUES('11530','Biscotto Proteico',NULL);
INSERT INTO Prodotto(CodiceProdotto,NomeProdotto,PesoProdotto) VALUES('11531','Barretta Proteica',NULL);
INSERT INTO Prodotto(CodiceProdotto,NomeProdotto,PesoProdotto) VALUES('12770','Powerade',500.00);
INSERT INTO Prodotto(CodiceProdotto,NomeProdotto,PesoProdotto) VALUES('17820','CocaCola',330.00);
INSERT INTO Prodotto(CodiceProdotto,NomeProdotto,PesoProdotto) VALUES('23145','Whey Proteine',1000.00);
INSERT INTO Prodotto(CodiceProdotto,NomeProdotto,PesoProdotto) VALUES('42943','Fanta',330.00);
INSERT INTO Prodotto(CodiceProdotto,NomeProdotto,PesoProdotto) VALUES('46523','Energade',1000.00);
INSERT INTO Prodotto(CodiceProdotto,NomeProdotto,PesoProdotto) VALUES('12440','Monster',500.00);
INSERT INTO Prodotto(CodiceProdotto,NomeProdotto,PesoProdotto) VALUES('12543','Amminoacide',500.00);

--POPOLAMENTO TABELLA VENDE--

INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00314','Fit For Smile','12530','2022-07-11',2.50);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00831','Fit For Smile','23145','2022-07-12',120.00);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00581','Fit For Smile','11531','2022-07-10',3.00);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00854','Fit For Smile','12440','2022-06-01',2.50);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00982','Mondo Fitness','12530','2022-07-08',2.00);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00113','Mondo Fitness','42943','2022-07-04',1.50);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00666','Mondo Fitness','12430','2022-06-12',34.99);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00313','Performance','12533','2022-05-22',34.99);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00343','Performance','12430','2022-03-03',34.99);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00335','Performance','12430','2022-07-05',34.99);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00336','Performance','12430','2022-07-05',34.99);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00337','Performance','12430','2022-07-05',34.99);

--POPOLAMENTO TABELLA PERSONA--


--PROPRIETARI
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('BJKBBG63M46G859U','Bernardo','Barbato','1970-02-14');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('RFPMMZ77M03F826F','Raffaele','Perrotta','1969-08-12');

INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('WSOVND60D03B840T','Walter','Visconti','1980-06-01');

INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('GCRFLC57D52C449F','Giovanna','Clerici','1964-01-01');

INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('MXHDLM75C44L247C','Mattia','Destro','1972-04-03');

--SEGRETARI
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('VGRGSD53R12A668L','Valeria','Russo','1995-05-13');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('WSMPHG89B59I108V','Simona','Perrotta','1998-07-17');

INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FFDCGU00D17F148H','Flavia','Ruggiero','2000-09-11');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('KTYQMD89B13H043H','Antonia','Quinto','1989-01-31');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('NNPVDM57M53G331M','Nicola','Vivaldi','1999-08-15');

INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('HVULBD91T51E825R','Angelo','Riccio','1984-07-17');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('THZYSS30R46C649S','Tommaso','Sansone','1996-02-13');

INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FCFDRM47H12I002A','Francesca','Perrotta','1997-04-11');

--ISTRUTTORI
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FCFDRM47H12I002A','Anselma','Trevisani','1977-12-05');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FCFDRM47H12I003A','Samuele','Costa','1988-04-11');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('DLFDRM47H12I002B','Patrizio','Genovese','1997-05-13');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FCFDTF47H12I032C','Galdino','Endrizzi','2000-01-28');



INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FCFDRG47H12I042A','Elio','Riccio','1999-09-13');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FCHFDM47H12I421E','Bertoldo','Falasconi','1980-11-26');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FFFEEM47H12I052R','Ercole','Pinto','1997-08-03');


INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FCORMA47H12I002A','Elsa','Autiero','1992-12-25');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FCAMME47H12I002A','Eleonora','Marino','1979-12-31');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FCFDER47H12I002A','Andrea','Casale','1999-07-17');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FCFNFT97H12I002A','Davide','Verza','2001-09-10');



INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('DWFDRM41H12I002A','Vincenzo','Ferragamo','1986-10-09');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FCFDRM88E93I002A','Pasquale','Polito','1986-04-23');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FCFDAE37H12I002A','Stefano','Pollicino','1999-07-12');

--ISCRITTI

INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('XNZPNJ70A05H359U','Alessandra','Russo','2000-08-12');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('BGDFJG84D14H091Y','Alessio','Dante','1999-07-13');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('QYSMBY70C64A784T','Alviero','Vitale','1997-07-15');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('HYMRMV85P59C536T','Almiro','Ventola','1993-07-15');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('WMQTWI68D62F336E','Antonio','Esposito','1960-05-22');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('KFGGGQ87E49B249U','Antonio','Pianese','2007-03-24');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('BPTXDN37P61I058Y','Antonio','Gargiulo','2003-01-11');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('BTLZFX93P16C346Z','Arturo','Gennarelli','2005-02-12');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FTNSJH69D19B502O','Azzurra','Diana','2000-10-11');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('BRJHNB58D02L075B','Azzurra','Gallo','1997-11-11');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('CQGBXU46C05H839J','Cassandra','Santi','2001-08-09');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('QRLSST65S26D824C','Alessandra','Cinquegrana','1982-01-02');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('MKHYWB91D53I320V','Nicola','Marino','1987-08-18');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('CMLNLE41L70F284N','Giovanni','Autiero','1987-12-30');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('DRLVBD37L23H118C','Teresa','Ruggiero','1991-05-30');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('XPZBNS41T22D012N','Alberto','Di Lorenzo','1976-02-06');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('SMJDHK74T61Z342B','Asia','Meret','2004-04-25');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('ZPDYPN62L48H196E','Elvira','Garofalo','1995-05-28');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('ZTFDSS30A12B896Q','Elena','De Laurentis','1995-10-25');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('FVPTMN90H56F087U','Nunzia','Rana','1968-06-07');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('PPGBBC86B59C866Z','Vincenzo','Starace','1981-05-01');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('BPNQVB94S10H034R','Assunta','Insigne','1997-11-08');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('PRBPFT76R69H302O','Federico','Politano','2002-10-18');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('VSRSLY79H54E350A','Gianfranco','Spalletti','1973-12-11');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('DHGGJO37L63H343W','Ernesto','Allegri','1969-03-07');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('YNHFSJ76P01C297J','Pasquale','Conte','1994-08-23');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('CSDKRF55C48D422O','Franco','Donnarumma','1983-04-15');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('PJNFBU58C49A619P','Bartolo','Sarri','1999-11-30');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('NSVLPJ78T45B612T','Gioele','Esposito','1997-06-13');
INSERT INTO Persona(CFPersona,NomePersona,CognomePersone,DataNascitaPersona) VALUES('YVGHMH50A69A400N','Alessandra','Rotundi','1999-07-12');










