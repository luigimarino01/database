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
