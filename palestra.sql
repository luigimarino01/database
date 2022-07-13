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
    NomePalestra varchar(50) NOT NULL,
    CodiceProdotto varchar(50) NOT NULL,
    DataVenditaProdotto date NOT NULL,
    CostoProdotto float NOT NULL,
    FOREIGN KEY(NomePalestra) REFERENCES Sede(NomePalestra),
    FOREIGN KEY(CodiceProdotto) REFERENCES Prodotto(CodiceProdotto),
    PRIMARY KEY(NomePalestra,CodiceProdotto) 
);

CREATE TABLE Persona(
    CFPersona varchar(16) NOT NULL,
    NomePersona varchar(20) NOT NULL,
    CognomePersone varchar(20) NOT NULL,
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





