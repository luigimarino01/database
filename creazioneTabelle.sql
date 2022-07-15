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
   FOREIGN KEY(NomePalestra) REFERENCES Sede(NomePalestra) ON DELETE CASCADE,
   PRIMARY KEY(TipoAbbonamento, NomePalestra)
   
);

CREATE TABLE Corso(
    NomeCorso varchar(50) NOT NULL,
    NomePalestra varchar(50) NOT NULL,
    DurataCorso int NOT NULL,
    CapienzaCorso int NOT NULL,
    FOREIGN KEY(NomePalestra) REFERENCES Sede(NomePalestra) ON DELETE CASCADE,
    PRIMARY KEY(NomeCorso, NomePalestra)
    
);

CREATE TABLE Servizio(
    NomeServizio varchar(50) NOT NULL,
    NomePalestra varchar(50) NOT NULL,
    CostoServizio float NOT NULL,
    FOREIGN KEY(NomePalestra) REFERENCES Sede(NomePalestra) ON DELETE CASCADE,
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
    FOREIGN KEY(CFPersona) REFERENCES Persona(CFPersona) ON DELETE CASCADE,
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
    FOREIGN KEY(CFPersona) REFERENCES Persona(CFPersona) ON DELETE CASCADE,
    PRIMARY KEY(CFPersona)
);

CREATE TABLE Segretario(
    CFPersona varchar(16) NOT NULL,
    FOREIGN KEY(CFPersona) REFERENCES Dipendente(CFPersona) ON DELETE CASCADE,
    PRIMARY KEY(CFPersona)
);

CREATE TABLE Istruttore(
    SpecializzazioneIstruttore varchar(30) NOT NULL,
    CFPersona varchar(16) NOT NULL,
    FOREIGN KEY(CFPersona) REFERENCES Dipendente(CFPersona) ON DELETE CASCADE,
    PRIMARY KEY(CFPersona)
);

CREATE TABLE Iscritto(
    NumeroTesseraIscritto varchar(50),
    CFPersona varchar(16) NOT NULL,
    FOREIGN KEY(CFPersona) REFERENCES Persona(CFPersona) ON DELETE CASCADE,
    PRIMARY KEY(CFPersona)
);

CREATE TABLE Contratto(
    CodiceContratto varchar(30) NOT NULL,
    NomePalestra varchar(50) NOT NULL,
    DataStipulazioneContratto date NOT NULL,
    DataScadenzaContratto date NOT NULL,
    Stipendio float NOT NULL,
    CFPersona varchar(16) NOT NULL,
    FOREIGN KEY(CFPersona) REFERENCES Dipendente(CFPersona),
    FOREIGN KEY(NomePalestra) REFERENCES Sede(NomePalestra),
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
    PRIMARY KEY(GiornoConduzione,OraConduzione,NomePalestra)
);

CREATE TABLE Accede(
    DataAccesso date NOT NULL,
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