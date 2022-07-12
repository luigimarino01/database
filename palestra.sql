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
    CostoProdotto float NOT NULL,
    PRIMARY KEY(CodiceProdotto)
);

CREATE TABLE Vende(
    NomePalestra varchar(50) NOT NULL,
    CodiceProdotto varchar(50) NOT NULL,
    DataVenditaProdotto date NOT NULL,
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
    FOREIGN KEY(CFPersona) REFERENCES Persona(CFPersona)
);

CREATE TABLE Acquista(
    DataAcquistoProdotto date NOT NULL,
    CodiceProdotto varchar(50) NOT NULL,
    CFPersona varchar(16) NOT NULL,
    FOREIGN KEY(CodiceProdotto) REFERENCES Prodotto(CodiceProdotto),
    FOREIGN KEY(CFPersona) REFERENCES Persona(CFPersona),
    PRIMARY KEY(CodiceProdotto,CFPersona,DataAcquistoProdotto)
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
    TipoAbbonamento varchar(50) NOT NULL,
    NomePalestra varchar(50) NOT NULL,
    FOREIGN KEY(CFPersona) REFERENCES Iscritto(CFPersona),
    FOREIGN KEY(TipoAbbonamento) REFERENCES Abbonamento(TipoAbbonamento),
    FOREIGN KEY(NomePalestra) REFERENCES Abbonamento(NomePalestra)

);

CREATE TABLE Conduce(
    GiornoConduzione varchar(9) NOT NULL,
    OraConduzione int NOT NULL,
    CFPersona varchar(16) NOT NULL,
    NomeCorso varchar(50) NOT NULL,
    FOREIGN KEY(CFPersona) REFERENCES Istruttore(CFPersona),
    FOREIGN KEY(NomeCorso) REFERENCES Corso(NomeCorso),
    PRIMARY KEY(GiornoConduzione,OraConduzione)
);