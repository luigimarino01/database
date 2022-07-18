--POPOLAMENTO TABELLA SEDE

INSERT INTO Sede(NomePalestra, Via, Cap, Citta, TessereDipendenti) VALUES('Fit For Smile', 'Via Pietro Donadio', '80021', 'Afragola',1);
INSERT INTO Sede(NomePalestra, Via, Cap, Citta, TessereDipendenti) VALUES('Mondo Fitness', 'Via Giovanni Rana', '80024', 'Cardito',0);
INSERT INTO Sede(NomePalestra, Via, Cap, Citta, TessereDipendenti) VALUES('Level Up Via Argine', 'Via Argine', '80147', 'Napoli',1);
INSERT INTO Sede(NomePalestra, Via, Cap, Citta, TessereDipendenti) VALUES('Performance', 'Via Nizza', '00198', 'Roma',0);

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
INSERT INTO Corso(NomeCorso,NomePalestra,DurataCorso,CapienzaCorso) VALUES('CrossFit', 'Performance', 60, 10);

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

INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00314','Fit For Smile','12530',TO_DATE('2022-07-11','YYYY-MM-DD'),2.50);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00831','Fit For Smile','23145',TO_DATE('2022-07-12','YYYY-MM-DD'),120.00);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00581','Fit For Smile','11531',TO_DATE('2022-07-10','YYYY-MM-DD'),3.00);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00854','Fit For Smile','12440',TO_DATE('2022-06-01','YYYY-MM-DD'),2.50);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00982','Mondo Fitness','12530',TO_DATE('2022-07-08','YYYY-MM-DD'),2.00);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00113','Mondo Fitness','42943',TO_DATE('2022-07-04','YYYY-MM-DD'),1.50);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00666','Mondo Fitness','12430',TO_DATE('2022-06-12','YYYY-MM-DD'),34.99);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00313','Performance','12533',TO_DATE('2022-05-22','YYYY-MM-DD'),34.99);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00343','Performance','12430',TO_DATE('2022-03-03','YYYY-MM-DD'),34.99);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00335','Performance','12430',TO_DATE('2022-07-05','YYYY-MM-DD'),34.99);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00336','Performance','12430',TO_DATE('2022-07-05','YYYY-MM-DD'),34.99);
INSERT INTO Vende(CodiceScontrino,NomePalestra,CodiceProdotto,DataVenditaProdotto,CostoProdotto) VALUES('00337','Performance','12430',TO_DATE('2022-07-05','YYYY-MM-DD'),34.99);

--POPOLAMENTO TABELLA PERSONA--


--PROPRIETARI
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('BJKBBG63M46G859U','Bernardo','Barbato',TO_DATE('1970-02-14','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('RFPMMZ77M03F826F','Raffaele','Perrotta',TO_DATE('1969-08-12','YYYY-MM-DD'));

INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('WSOVND60D03B840T','Walter','Visconti',TO_DATE('1980-06-01','YYYY-MM-DD'));

INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('GCRFLC57D52C449F','Giovanna','Clerici',TO_DATE('1964-01-01','YYYY-MM-DD'));

INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('MXHDLM75C44L247C','Mattia','Destro',TO_DATE('1972-04-03','YYYY-MM-DD'));

--SEGRETARI
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('VGRGSD53R12A668L','Valeria','Russo',TO_DATE('1995-05-13','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('WSMPHG89B59I108V','Simona','Perrotta',TO_DATE('1998-07-17','YYYY-MM-DD'));

INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FFDCGU00D17F148H','Flavia','Ruggiero',TO_DATE('2000-09-11','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('KTYQMD89B13H043H','Antonia','Quinto',TO_DATE('1989-01-31','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('NNPVDM57M53G331M','Nicola','Vivaldi',TO_DATE('1999-08-15','YYYY-MM-DD'));

INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('HVULBD91T51E825R','Angelo','Riccio',TO_DATE('1984-07-17','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('THZYSS30R46C649S','Tommaso','Sansone',TO_DATE('1996-02-13','YYYY-MM-DD'));

INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FCFDRM47H12I002A','Francesca','Perrotta',TO_DATE('1997-04-11','YYYY-MM-DD'));

--ISTRUTTORI
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FCFDRM47H82I002A','Anselma','Trevisani',TO_DATE('1977-12-05','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FCFDRM47H12I003A','Samuele','Costa',TO_DATE('1988-04-11','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('DLFDRM47H12I002B','Patrizio','Genovese',TO_DATE('1997-05-13','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FCFDTF47H12I032C','Galdino','Endrizzi',TO_DATE('2000-01-28','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FCFDTF47H12I067C','Nicola','Frattesi',TO_DATE('1997-03-28','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('ADFDTF47H12I064A','Giovanna','Rullo',TO_DATE('1991-05-11','YYYY-MM-DD'));




INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FCFDRG47H12I042A','Elio','Riccio',TO_DATE('1999-09-13','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FCHFDM47H12I421E','Bertoldo','Falasconi',TO_DATE('1980-11-26','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FFFEEM47H12I052R','Ercole','Pinto',TO_DATE('1997-08-03','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FWREEM47H12I162Z','Francesca','Caputo',TO_DATE('1988-01-01','YYYY-MM-DD'));


INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FCORMA47H12I002A','Elsa','Autiero',TO_DATE('1992-12-25','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FCAMME47H12I002A','Eleonora','Marino',TO_DATE('1979-12-31','YYYY-MM-DD'));


INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FCFDER47H12I002A','Andrea','Casale',TO_DATE('1999-07-17','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FCFNFT97H12I002A','Davide','Verza',TO_DATE('2001-09-10','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('DWFDRM41H12I002A','Vincenzo','Ferragamo',TO_DATE('1986-10-09','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FCFDRM88E93I002A','Pasquale','Polito',TO_DATE('1986-04-23','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FCFDAE37H12I002A','Stefano','Pollicino',TO_DATE('1999-07-12','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('ELGDAE37H12I092Z','Elena','Grimaldi',TO_DATE('1992-07-15','YYYY-MM-DD'));

--ISCRITTI

INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('XNZPNJ70A05H359U','Alessandra','Russo',TO_DATE('2000-08-12','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('BGDFJG84D14H091Y','Alessio','Dante',TO_DATE('1999-07-13','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('QYSMBY70C64A784T','Alviero','Vitale',TO_DATE('1997-07-15','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('HYMRMV85P59C536T','Almiro','Ventola',TO_DATE('1993-07-15','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('WMQTWI68D62F336E','Antonio','Esposito',TO_DATE('1960-05-22','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('KFGGGQ87E49B249U','Antonio','Pianese',TO_DATE('2007-03-24','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('BPTXDN37P61I058Y','Antonio','Gargiulo',TO_DATE('2003-01-11','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('BTLZFX93P16C346Z','Arturo','Gennarelli',TO_DATE('2005-02-12','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FTNSJH69D19B502O','Azzurra','Diana',TO_DATE('2000-10-11','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('BRJHNB58D02L075B','Azzurra','Gallo',TO_DATE('1997-11-11','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('CQGBXU46C05H839J','Cassandra','Santi',TO_DATE('2001-08-09','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('QRLSST65S26D824C','Alessandra','Cinquegrana',TO_DATE('1982-01-02','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('MKHYWB91D53I320V','Nicola','Marino',TO_DATE('1987-08-18','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('CMLNLE41L70F284N','Giovanni','Autiero',TO_DATE('1987-12-30','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('DRLVBD37L23H118C','Teresa','Ruggiero',TO_DATE('1991-05-30','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('XPZBNS41T22D012N','Alberto','Di Lorenzo',TO_DATE('1976-02-06','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('SMJDHK74T61Z342B','Asia','Meret',TO_DATE('2004-04-25','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('ZPDYPN62L48H196E','Elvira','Garofalo',TO_DATE('1995-05-28','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('ZTFDSS30A12B896Q','Elena','De Laurentis',TO_DATE('1995-10-25','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('FVPTMN90H56F087U','Nunzia','Rana',TO_DATE('1968-06-07','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('PPGBBC86B59C866Z','Vincenzo','Starace',TO_DATE('1981-05-01','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('BPNQVB94S10H034R','Assunta','Insigne',TO_DATE('1997-11-08','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('PRBPFT76R69H302O','Federico','Politano',TO_DATE('2002-10-18','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('VSRSLY79H54E350A','Gianfranco','Spalletti',TO_DATE('1973-12-11','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('DHGGJO37L63H343W','Ernesto','Allegri',TO_DATE('1969-03-07','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('YNHFSJ76P01C297J','Pasquale','Conte',TO_DATE('1994-08-23','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('CSDKRF55C48D422O','Franco','Donnarumma',TO_DATE('1983-04-15','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('PJNFBU58C49A619P','Bartolo','Sarri',TO_DATE('1999-11-30','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('NSVLPJ78T45B612T','Gioele','Esposito',TO_DATE('1997-06-13','YYYY-MM-DD'));
INSERT INTO Persona(CFPersona,NomePersona,CognomePersona,DataNascitaPersona) VALUES('YVGHMH50A69A400N','Alessandra','Rotundi',TO_DATE('1999-07-12','YYYY-MM-DD'));


--RIEMPIMENTO TABELLA PROPRIETARI
INSERT INTO Proprietario(CFPersona,DataContrattoAcquisto) VALUES('BJKBBG63M46G859U',TO_DATE('2010-02-06','YYYY-MM-DD'));
INSERT INTO Proprietario(CFPersona,DataContrattoAcquisto) VALUES('RFPMMZ77M03F826F',TO_DATE('2010-02-06','YYYY-MM-DD'));


INSERT INTO Proprietario(CFPersona,DataContrattoAcquisto) VALUES('WSOVND60D03B840T',TO_DATE('2015-01-05','YYYY-MM-DD'));

INSERT INTO Proprietario(CFPersona,DataContrattoAcquisto) VALUES('GCRFLC57D52C449F',TO_DATE('2019-08-28','YYYY-MM-DD'));

INSERT INTO Proprietario(CFPersona,DataContrattoAcquisto) VALUES('MXHDLM75C44L247C',TO_DATE('2021-04-09','YYYY-MM-DD'));



--RIEMPIMENTO TABELLA DIPENDENTI LATO SEGRETARI
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('VGRGSD53R12A668L','0314');
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('WSMPHG89B59I108V','0413');

INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FFDCGU00D17F148H',NULL);
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('KTYQMD89B13H043H',NULL);
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('NNPVDM57M53G331M',NULL);

INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('HVULBD91T51E825R','3941');
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('THZYSS30R46C649S','3914');

INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FCFDRM47H12I002A',NULL);

--RIEMPIMENTO TABELLA DIPENDENTI LATO ISTRUTTORI
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FCFDRM47H82I002A','0001');
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FCFDRM47H12I003A','0002');
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('DLFDRM47H12I002B','0003');
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FCFDTF47H12I032C','0004');
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FCFDTF47H12I067C','0005');
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('ADFDTF47H12I064A','0006');






INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FCFDRG47H12I042A',NULL);
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FCHFDM47H12I421E',NULL);
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FFFEEM47H12I052R',NULL);
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FWREEM47H12I162Z',NULL);




INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FCORMA47H12I002A','0011');
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FCAMME47H12I002A','0012');


INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FCFDER47H12I002A',NULL);
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FCFNFT97H12I002A',NULL);
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('DWFDRM41H12I002A',NULL);
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FCFDRM88E93I002A',NULL);
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('FCFDAE37H12I002A',NULL);
INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES('ELGDAE37H12I092Z',NULL);






--RIEMPIMENTO TABELLA SEGRETARI
INSERT INTO Segretario(CFPersona) VALUES('VGRGSD53R12A668L');
INSERT INTO Segretario(CFPersona) VALUES('WSMPHG89B59I108V');

INSERT INTO Segretario(CFPersona) VALUES('FFDCGU00D17F148H');
INSERT INTO Segretario(CFPersona) VALUES('KTYQMD89B13H043H');
INSERT INTO Segretario(CFPersona) VALUES('NNPVDM57M53G331M');

INSERT INTO Segretario(CFPersona) VALUES('HVULBD91T51E825R');
INSERT INTO Segretario(CFPersona) VALUES('THZYSS30R46C649S');

INSERT INTO Segretario(CFPersona) VALUES('FCFDRM47H12I002A');


--RIEMPIMENTO TABELLA ISTRUTTORI

INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('Zumba','FCFDRM47H82I002A');
INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('Fit Boxe','FCFDRM47H12I003A');
INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('CrossFit','DLFDRM47H12I002B');
INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('Pilates','FCFDTF47H12I032C');
INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('Yoga','FCFDTF47H12I067C');
INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('Sala','ADFDTF47H12I064A');





INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('Kick Boxing','FCFDRG47H12I042A');
INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('Pilates','FCHFDM47H12I421E');
INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('Zumba','FFFEEM47H12I052R');
INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('Sala','FWREEM47H12I162Z');


INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('CrossFit','FCORMA47H12I002A');
INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('Sala','FCAMME47H12I002A');


INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('Pilates','FCFDER47H12I002A');
INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('Zumba','FCFNFT97H12I002A');
INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('Boxe','DWFDRM41H12I002A');
INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('Kick Boxing','FCFDRM88E93I002A');
INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('CrossFit','FCFDAE37H12I002A');
INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES('Sala','ELGDAE37H12I092Z');


--RIEMPIMENTO TABELLA ISCRITTI
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0001','XNZPNJ70A05H359U');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0002','BGDFJG84D14H091Y');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0003','QYSMBY70C64A784T');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0004','HYMRMV85P59C536T');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0005','WMQTWI68D62F336E');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0006','KFGGGQ87E49B249U');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0007','BPTXDN37P61I058Y');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0008','BTLZFX93P16C346Z');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0009','FTNSJH69D19B502O');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0010','BRJHNB58D02L075B');


INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0001','CQGBXU46C05H839J');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0002','QRLSST65S26D824C');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0003','MKHYWB91D53I320V');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0004','CMLNLE41L70F284N');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0005','DRLVBD37L23H118C');

INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES(NULL,'XPZBNS41T22D012N');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES(NULL,'SMJDHK74T61Z342B');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES(NULL,'ZPDYPN62L48H196E');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES(NULL,'ZTFDSS30A12B896Q');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES(NULL,'FVPTMN90H56F087U');


INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0099','PPGBBC86B59C866Z');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0098','BPNQVB94S10H034R');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0097','PRBPFT76R69H302O');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0096','VSRSLY79H54E350A');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0095','DHGGJO37L63H343W');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0094','YNHFSJ76P01C297J');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0093','CSDKRF55C48D422O');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0092','PJNFBU58C49A619P');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0091','NSVLPJ78T45B612T');
INSERT INTO Iscritto(NumeroTesseraIscritto,CFPersona) VALUES('0090','YVGHMH50A69A400N');



--POPOLAMENTO TABELLA APPARTIENE
INSERT INTO Appartiene(CFPersona, NomePalestra) VALUES('RFPMMZ77M03F826F','Fit For Smile');
INSERT INTO Appartiene(CFPersona, NomePalestra) VALUES('BJKBBG63M46G859U','Fit For Smile');

INSERT INTO Appartiene(CFPersona, NomePalestra) VALUES('WSOVND60D03B840T','Mondo Fitness');

INSERT INTO Appartiene(CFPersona, NomePalestra) VALUES('GCRFLC57D52C449F','Level Up Via Argine');

INSERT INTO Appartiene(CFPersona, NomePalestra) VALUES('MXHDLM75C44L247C','Performance');


--POPOLAMENTO TABELLA ESERCIZIO
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Chest press', 'Pettorali');
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Panca piana', 'Pettorali');
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Panca inclinata', 'Pettorali');
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Croci manubri', 'Pettorali');

INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Curl manubri', 'Bicipiti');
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Hammer manubri', 'Bicipiti');
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Curl bilanciere', 'Bicipiti');
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Concentrato manubri', 'Bicipiti');

INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Dips', 'Tricipiti');
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('French press', 'Tricipiti');
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Kick back', 'Tricipiti');

INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Alzate laterali', 'Spalle');
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Spinta in alto', 'Spalle');
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Military press', 'Spalle');

INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Lat machine', 'Dorsali');
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Trazioni', 'Dorsali');
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Rematore bilanciere', 'Dorsali');


INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Squat', 'Gambe');
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Leg press', 'Gambe');
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Leg extention', 'Gambe');
INSERT INTO Esercizio(NomeEsercizio, GruppoMuscolare) VALUES('Leg curl', 'Gambe');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2021-06-12','YYYY-MM-DD'),TO_DATE('2021-09-12','YYYY-MM-DD'),'XNZPNJ70A05H359U','Trimestrale','Fit For Smile');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2021-10-03','YYYY-MM-DD'),TO_DATE('2022-10-03','YYYY-MM-DD'),'XNZPNJ70A05H359U','Annuale','Fit For Smile');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-05-10','YYYY-MM-DD'),TO_DATE('2023-05-10','YYYY-MM-DD'),'BGDFJG84D14H091Y','Annuale','Fit For Smile');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-07-10','YYYY-MM-DD'),TO_DATE('2022-08-10','YYYY-MM-DD'),'QYSMBY70C64A784T','Mensile','Fit For Smile');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-05-05','YYYY-MM-DD'),TO_DATE('2022-08-05','YYYY-MM-DD'),'HYMRMV85P59C536T','Trimestrale','Fit For Smile');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2021-02-05','YYYY-MM-DD'),TO_DATE('2021-05-05','YYYY-MM-DD'),'WMQTWI68D62F336E','Trimestrale','Fit For Smile');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-06-01','YYYY-MM-DD'),TO_DATE('2023-06-01','YYYY-MM-DD'),'WMQTWI68D62F336E','Annuale','Fit For Smile');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-07-10','YYYY-MM-DD'),TO_DATE('2022-08-10','YYYY-MM-DD'),'KFGGGQ87E49B249U','Mensile','Fit For Smile');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-07-12','YYYY-MM-DD'),TO_DATE('2022-08-12','YYYY-MM-DD'),'BPTXDN37P61I058Y','Mensile','Fit For Smile');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-06-01','YYYY-MM-DD'),TO_DATE('2023-06-01','YYYY-MM-DD'),'BTLZFX93P16C346Z','Annuale','Fit For Smile');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-06-10','YYYY-MM-DD'),TO_DATE('2022-09-10','YYYY-MM-DD'),'FTNSJH69D19B502O','Trimestrale','Fit For Smile');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-07-13','YYYY-MM-DD'),TO_DATE('2022-08-13','YYYY-MM-DD'),'BRJHNB58D02L075B','Mensile','Fit For Smile');


INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-07-13','YYYY-MM-DD'),TO_DATE('2022-08-13','YYYY-MM-DD'),'CQGBXU46C05H839J','Mensile','Mondo Fitness');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-04-11','YYYY-MM-DD'),TO_DATE('2022-10-11','YYYY-MM-DD'),'QRLSST65S26D824C','Semestrale','Mondo Fitness');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2021-09-05','YYYY-MM-DD'),TO_DATE('2022-09-05','YYYY-MM-DD'),'MKHYWB91D53I320V','Annuale','Mondo Fitness');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-06-25','YYYY-MM-DD'),TO_DATE('2022-07-25','YYYY-MM-DD'),'CMLNLE41L70F284N','Mensile','Mondo Fitness');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-06-10','YYYY-MM-DD'),TO_DATE('2022-07-10','YYYY-MM-DD'),'DRLVBD37L23H118C','Mensile','Mondo Fitness');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-07-11','YYYY-MM-DD'),TO_DATE('2022-01-11','YYYY-MM-DD'),'DRLVBD37L23H118C','Semestrale','Mondo Fitness');


 INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-01-01','YYYY-MM-DD'),TO_DATE('2022-07-01','YYYY-MM-DD'),'XPZBNS41T22D012N','Semestrale','Level Up Via Argine');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-06-01','YYYY-MM-DD'),TO_DATE('2022-12-01','YYYY-MM-DD'),'XPZBNS41T22D012N','Semestrale','Level Up Via Argine');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-01-05','YYYY-MM-DD'),TO_DATE('2023-01-05','YYYY-MM-DD'),'SMJDHK74T61Z342B','Annuale','Level Up Via Argine');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2021-07-11','YYYY-MM-DD'),TO_DATE('2022-07-11','YYYY-MM-DD'),'ZPDYPN62L48H196E','Annuale','Level Up Via Argine');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-01-11','YYYY-MM-DD'),TO_DATE('2023-01-11','YYYY-MM-DD'),'ZTFDSS30A12B896Q','Annuale','Level Up Via Argine');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2021-12-10','YYYY-MM-DD'),TO_DATE('2022-06-10','YYYY-MM-DD'),'FVPTMN90H56F087U','Semestrale','Level Up Via Argine');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-05-10','YYYY-MM-DD'),TO_DATE('2022-11-10','YYYY-MM-DD'),'FVPTMN90H56F087U','Semestrale','Level Up Via Argine');



INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-07-12','YYYY-MM-DD'),TO_DATE('2022-08-12','YYYY-MM-DD'),'PPGBBC86B59C866Z','Mensile','Performance');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-07-13','YYYY-MM-DD'),TO_DATE('2022-10-13','YYYY-MM-DD'),'BPNQVB94S10H034R','Trimestrale','Performance');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-05-10','YYYY-MM-DD'),TO_DATE('2022-11-10','YYYY-MM-DD'),'PRBPFT76R69H302O','Semestrale','Performance');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-04-12','YYYY-MM-DD'),TO_DATE('2022-05-12','YYYY-MM-DD'),'VSRSLY79H54E350A','Mensile','Performance');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-06-15','YYYY-MM-DD'),TO_DATE('2022-12-06','YYYY-MM-DD'),'VSRSLY79H54E350A','Semestrale','Performance');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2021-12-05','YYYY-MM-DD'),TO_DATE('2022-06-12','YYYY-MM-DD'),'DHGGJO37L63H343W','Semestrale','Performance');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-06-12','YYYY-MM-DD'),TO_DATE('2023-06-12','YYYY-MM-DD'),'DHGGJO37L63H343W','Annuale','Performance');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2021-09-01','YYYY-MM-DD'),TO_DATE('2022-09-01','YYYY-MM-DD'),'YNHFSJ76P01C297J','Annuale','Performance');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-07-10','YYYY-MM-DD'),TO_DATE('2022-08-10','YYYY-MM-DD'),'CSDKRF55C48D422O','Mensile','Performance');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-06-28','YYYY-MM-DD'),TO_DATE('2022-07-28','YYYY-MM-DD'),'PJNFBU58C49A619P','Mensile','Performance');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-05-03','YYYY-MM-DD'),TO_DATE('2023-05-03','YYYY-MM-DD'),'NSVLPJ78T45B612T','Annuale','Performance');
INSERT INTO Sottoscrive(DataSottoiscrizioneAbbonamento,DataScadenzaAbbonamento,CFPersona,TipoAbbonamento,NomePalestra)
    VALUES(TO_DATE('2022-06-13','YYYY-MM-DD'),TO_DATE('2022-12-13','YYYY-MM-DD'),'YVGHMH50A69A400N','Semestrale','Performance');

--POPOLAMENTO TABELLA CONTRATTO SEGRETARI
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('001293','Fit For Smile',TO_DATE('2019-10-21','YYYY-MM-DD'),TO_DATE('2021-10-21','YYYY-MM-DD'),1200.00,'VGRGSD53R12A668L');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('001294','Fit For Smile',TO_DATE('2021-10-22','YYYY-MM-DD'),TO_DATE('2024-11-22','YYYY-MM-DD'),1350.00,'VGRGSD53R12A668L');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('001295','Fit For Smile',TO_DATE('2020-01-20','YYYY-MM-DD'),TO_DATE('2022-10-31','YYYY-MM-DD'),1350.00,'WSMPHG89B59I108V');

INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('64284','Mondo Fitness',TO_DATE('2019-10-04','YYYY-MM-DD'),TO_DATE('2023-10-04','YYYY-MM-DD'),1100.00,'FFDCGU00D17F148H');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('64285','Mondo Fitness',TO_DATE('2020-04-01','YYYY-MM-DD'),TO_DATE('2022-08-01','YYYY-MM-DD'),1000.00,'KTYQMD89B13H043H');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('64286','Mondo Fitness',TO_DATE('2022-05-21','YYYY-MM-DD'),TO_DATE('2023-05-21','YYYY-MM-DD'),900.00,'NNPVDM57M53G331M');

INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('19284','Level Up Via Argine',TO_DATE('2020-03-28','YYYY-MM-DD'),TO_DATE('2020-09-30','YYYY-MM-DD'),600.00,'HVULBD91T51E825R');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('19288','Level Up Via Argine',TO_DATE('2020-10-01','YYYY-MM-DD'),TO_DATE('2022-10-01','YYYY-MM-DD'),1100.00,'HVULBD91T51E825R');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('19285','Level Up Via Argine',TO_DATE('2022-10-21','YYYY-MM-DD'),TO_DATE('2023-10-21','YYYY-MM-DD'),1000.00,'THZYSS30R46C649S');

INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('55423','Performance',TO_DATE('2021-07-02','YYYY-MM-DD'),TO_DATE('2022-02-02','YYYY-MM-DD'),500.00,'FCFDRM47H12I002A');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('55424','Performance',TO_DATE('2022-02-05','YYYY-MM-DD'),TO_DATE('2025-02-05','YYYY-MM-DD'),900.00,'FCFDRM47H12I002A');    

--POPOLAMENTO TABELLA CONTRATTO ISTRUTTORI

INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('001390','Fit For Smile',TO_DATE('2021-12-02','YYYY-MM-DD'),TO_DATE('2022-12-02','YYYY-MM-DD'),900.00,'FCFDRM47H82I002A');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('001391','Fit For Smile',TO_DATE('2020-02-05','YYYY-MM-DD'),TO_DATE('2025-02-05','YYYY-MM-DD'),900.00,'FCFDRM47H12I003A');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('001392','Fit For Smile',TO_DATE('2019-01-05','YYYY-MM-DD'),TO_DATE('2023-02-25','YYYY-MM-DD'),1000.00,'DLFDRM47H12I002B');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('001393','Fit For Smile',TO_DATE('2021-02-05','YYYY-MM-DD'),TO_DATE('2022-12-14','YYYY-MM-DD'),700.00,'FCFDTF47H12I032C');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('001394','Fit For Smile',TO_DATE('2022-05-09','YYYY-MM-DD'),TO_DATE('2024-02-23','YYYY-MM-DD'),900.00,'FCFDTF47H12I067C');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('001395','Fit For Smile',TO_DATE('2022-03-17','YYYY-MM-DD'),TO_DATE('2022-09-17','YYYY-MM-DD'),500.00,'ADFDTF47H12I064A');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('64294','Mondo Fitness',TO_DATE('2018-10-15','YYYY-MM-DD'),TO_DATE('2020-06-12','YYYY-MM-DD'),900.00,'FCFDRG47H12I042A');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('64298','Mondo Fitness',TO_DATE('2020-06-15','YYYY-MM-DD'),TO_DATE('2023-04-17','YYYY-MM-DD'),1200.00,'FCFDRG47H12I042A');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('64295','Mondo Fitness',TO_DATE('2022-02-16','YYYY-MM-DD'),TO_DATE('2022-08-18','YYYY-MM-DD'),1100.00,'FCHFDM47H12I421E');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('64296','Mondo Fitness',TO_DATE('2021-02-05','YYYY-MM-DD'),TO_DATE('2024-03-27','YYYY-MM-DD'),800.00,'FFFEEM47H12I052R');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('64297','Mondo Fitness',TO_DATE('2020-02-05','YYYY-MM-DD'),TO_DATE('2022-09-13','YYYY-MM-DD'),750.00,'FWREEM47H12I162Z');

INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('19384','Level Up Via Argine',TO_DATE('2022-02-05','YYYY-MM-DD'),TO_DATE('2025-02-05','YYYY-MM-DD'),1000.00,'FCORMA47H12I002A');                                    
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('19385','Level Up Via Argine',TO_DATE('2020-05-07','YYYY-MM-DD'),TO_DATE('2023-10-25','YYYY-MM-DD'),1000.00,'FCAMME47H12I002A');

INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('55523','Performance',TO_DATE('2021-05-16','YYYY-MM-DD'),TO_DATE('2022-05-15','YYYY-MM-DD'),1200.00,'FCFDER47H12I002A');    
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('55524','Performance',TO_DATE('2021-05-16','YYYY-MM-DD'),TO_DATE('2023-09-28','YYYY-MM-DD'),1300.00,'FCFNFT97H12I002A');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('55525','Performance',TO_DATE('2022-02-05','YYYY-MM-DD'),TO_DATE('2022-10-02','YYYY-MM-DD'),800.00,'DWFDRM41H12I002A');                                    
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('55526','Performance',TO_DATE('2022-03-02','YYYY-MM-DD'),TO_DATE('2023-05-16','YYYY-MM-DD'),850.00,'FCFDRM88E93I002A');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('55527','Performance',TO_DATE('2021-10-18','YYYY-MM-DD'),TO_DATE('2022-09-15','YYYY-MM-DD'),900.00,'FCFDAE37H12I002A');
INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
    VALUES('55528','Performance',TO_DATE('2022-06-29','YYYY-MM-DD'),TO_DATE('2025-06-29','YYYY-MM-DD'),1100.00,'ELGDAE37H12I092Z');


    --POPOLAMENTO TABELLA SCHEDA ALLENAMENTO
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0001',TO_DATE('2022-07-10','YYYY-MM-DD'),'XNZPNJ70A05H359U','ADFDTF47H12I064A');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0004',TO_DATE('2022-10-10','YYYY-MM-DD'),'XNZPNJ70A05H359U','ADFDTF47H12I064A');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0002',TO_DATE('2022-10-15','YYYY-MM-DD'),'BGDFJG84D14H091Y','ADFDTF47H12I064A');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0003',TO_DATE('2022-10-22','YYYY-MM-DD'),'QYSMBY70C64A784T','ADFDTF47H12I064A');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0005',TO_DATE('2022-10-04','YYYY-MM-DD'),'HYMRMV85P59C536T','ADFDTF47H12I064A');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0006',TO_DATE('2022-10-09','YYYY-MM-DD'),'WMQTWI68D62F336E','ADFDTF47H12I064A');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0007',TO_DATE('2022-06-09','YYYY-MM-DD'),'KFGGGQ87E49B249U','ADFDTF47H12I064A');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0008',TO_DATE('2022-08-09','YYYY-MM-DD'),'KFGGGQ87E49B249U','ADFDTF47H12I064A');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0009',TO_DATE('2022-10-05','YYYY-MM-DD'),'BPTXDN37P61I058Y','ADFDTF47H12I064A');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0010',TO_DATE('2022-10-12','YYYY-MM-DD'),'BTLZFX93P16C346Z','ADFDTF47H12I064A');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0011',TO_DATE('2022-10-19','YYYY-MM-DD'),'FTNSJH69D19B502O','ADFDTF47H12I064A');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0012',TO_DATE('2022-10-27','YYYY-MM-DD'),'BRJHNB58D02L075B','ADFDTF47H12I064A');




INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0043',TO_DATE('2022-03-12','YYYY-MM-DD'),'CQGBXU46C05H839J','FWREEM47H12I162Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0017',TO_DATE('2022-04-12','YYYY-MM-DD'),'CQGBXU46C05H839J','FWREEM47H12I162Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0041',TO_DATE('2022-05-12','YYYY-MM-DD'),'CQGBXU46C05H839J','FWREEM47H12I162Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0035',TO_DATE('2022-08-05','YYYY-MM-DD'),'CQGBXU46C05H839J','FWREEM47H12I162Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0018',TO_DATE('2022-07-28','YYYY-MM-DD'),'QRLSST65S26D824C','FWREEM47H12I162Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0071',TO_DATE('2022-06-20','YYYY-MM-DD'),'MKHYWB91D53I320V','FWREEM47H12I162Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0020',TO_DATE('2022-07-20','YYYY-MM-DD'),'MKHYWB91D53I320V','FWREEM47H12I162Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0019',TO_DATE('2022-07-29','YYYY-MM-DD'),'CMLNLE41L70F284N','FWREEM47H12I162Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0033',TO_DATE('2022-08-01','YYYY-MM-DD'),'DRLVBD37L23H118C','FWREEM47H12I162Z');



INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0099',TO_DATE('2022-09-01','YYYY-MM-DD'),'XPZBNS41T22D012N','FCAMME47H12I002A');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0097',TO_DATE('2022-08-21','YYYY-MM-DD'),'SMJDHK74T61Z342B','FCAMME47H12I002A');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0098',TO_DATE('2022-08-11','YYYY-MM-DD'),'ZPDYPN62L48H196E','FCAMME47H12I002A');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0048',TO_DATE('2022-07-30','YYYY-MM-DD'),'ZTFDSS30A12B896Q','FCAMME47H12I002A');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0100',TO_DATE('2022-08-21','YYYY-MM-DD'),'FVPTMN90H56F087U','FCAMME47H12I002A');




INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0101',TO_DATE('2022-08-11','YYYY-MM-DD'),'PPGBBC86B59C866Z','ELGDAE37H12I092Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0111',TO_DATE('2022-07-31','YYYY-MM-DD'),'BPNQVB94S10H034R','ELGDAE37H12I092Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0122',TO_DATE('2022-08-03','YYYY-MM-DD'),'PRBPFT76R69H302O','ELGDAE37H12I092Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0133',TO_DATE('2022-08-04','YYYY-MM-DD'),'VSRSLY79H54E350A','ELGDAE37H12I092Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0444',TO_DATE('2022-08-15','YYYY-MM-DD'),'DHGGJO37L63H343W','ELGDAE37H12I092Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0155',TO_DATE('2022-07-29','YYYY-MM-DD'),'YNHFSJ76P01C297J','ELGDAE37H12I092Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0666',TO_DATE('2022-07-30','YYYY-MM-DD'),'CSDKRF55C48D422O','ELGDAE37H12I092Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0392',TO_DATE('2022-08-10','YYYY-MM-DD'),'PJNFBU58C49A619P','ELGDAE37H12I092Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0888',TO_DATE('2022-06-20','YYYY-MM-DD'),'NSVLPJ78T45B612T','ELGDAE37H12I092Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0199',TO_DATE('2022-08-01','YYYY-MM-DD'),'NSVLPJ78T45B612T','ELGDAE37H12I092Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0121',TO_DATE('2022-07-10','YYYY-MM-DD'),'YVGHMH50A69A400N','ELGDAE37H12I092Z');
INSERT INTO Schedaallenamento(CodiceSchedaAllenamento,ScadenzaSchedaAllenamento,CFPersonaIscritto,CFPersonaIstruttore)
    VALUES('0142',TO_DATE('2022-08-15','YYYY-MM-DD'),'YVGHMH50A69A400N','ELGDAE37H12I092Z');


--POPOLAMENTO TABELLA CONTIENE
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,8,'Chest press','0001');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Curl bilanciere','0001');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'French press','0001');


INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,8,'Chest press','0002');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Curl bilanciere','0002');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Squat','0002');


INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,8,'Chest press','0003');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Curl bilanciere','0003');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Kick back','0003');


INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,8,'Chest press','0004');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Curl bilanciere','0004');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Panca piana','0004');


INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,8,'Chest press','0005');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Curl bilanciere','0005');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Kick back','0005');


INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Kick back','0006');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Panca piana','0006');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Curl bilanciere','0006');


INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Kick back','0007');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Panca piana','0007');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Curl bilanciere','0007');


INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,8,'Chest press','0008');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Curl bilanciere','0008');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Kick back','0008');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,8,'Chest press','0009');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Curl bilanciere','0009');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Panca piana','0009');


 INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,8,'Chest press','0010');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Curl bilanciere','0010');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Panca piana','0011');
 INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,8,'Chest press','0011');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Curl bilanciere','0011');


INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,8,'Chest press','0012');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Curl bilanciere','0012');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Kick back','0012');




INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Panca inclinata','0018');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg press','0018');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Dips','0018');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Rematore bilanciere','0018');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Military press','0018');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg extention','0018');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Panca inclinata','0019');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg press','0019');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Dips','0019');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Rematore bilanciere','0019');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Military press','0019');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg extention','0019');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Panca inclinata','0020');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg press','0020');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Dips','0020');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Rematore bilanciere','0020');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Military press','0020');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg extention','0020');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Panca inclinata','0033');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg press','0033');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Dips','0033');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Rematore bilanciere','0033');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Military press','0033');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg extention','0033');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Panca inclinata','0035');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg press','0035');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Dips','0035');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Rematore bilanciere','0035');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Military press','0035');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg extention','0035');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Panca inclinata','0041');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg press','0041');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Dips','0041');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Rematore bilanciere','0041');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Military press','0041');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg extention','0041');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Panca inclinata','0043');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg press','0043');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Dips','0043');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Rematore bilanciere','0043');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Military press','0043');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg extention','0043');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Panca inclinata','0071');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg press','0071');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Dips','0071');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Rematore bilanciere','0071');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Military press','0071');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg extention','0071');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Panca inclinata','0017');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg press','0017');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Dips','0017');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Rematore bilanciere','0017');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Military press','0017');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg extention','0017');




INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Lat machine','0048');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,8,'Concentrato manubri','0048');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,10,'Croci manubri','0048');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg curl','0048');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,6,'Trazioni','0048');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Spinta in alto','0048');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Military press','0048');


INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Lat machine','0097');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,8,'Concentrato manubri','0097');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,10,'Croci manubri','0097');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg curl','0097');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,6,'Trazioni','0097');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Spinta in alto','0097');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Military press','0097');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Lat machine','0098');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,8,'Concentrato manubri','0098');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,10,'Croci manubri','0098');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg curl','0098');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,6,'Trazioni','0098');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Spinta in alto','0098');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Military press','0098');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Lat machine','0099');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,8,'Concentrato manubri','0099');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,10,'Croci manubri','0099');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg curl','0099');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,6,'Trazioni','0099');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Spinta in alto','0099');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Military press','0099');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Lat machine','0100');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,8,'Concentrato manubri','0100');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,10,'Croci manubri','0100');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Leg curl','0100');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,6,'Trazioni','0100');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Spinta in alto','0100');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,10,'Military press','0100');



INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Hammer manubri','0142');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Curl manubri','0142');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Dips','0142');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Leg press','0142');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Rematore bilanciere','0142');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Panca inclinata','0142');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Hammer manubri','0444');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Curl manubri','0444');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Dips','0444');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Leg press','0444');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Rematore bilanciere','0444');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Panca inclinata','0444');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Hammer manubri','0155');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Curl manubri','0155');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Dips','0155');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Leg press','0155');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Rematore bilanciere','0155');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Panca inclinata','0155');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Hammer manubri','0666');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Curl manubri','0666');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Dips','0666');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Leg press','0666');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Rematore bilanciere','0666');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Panca inclinata','0666');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Hammer manubri','0888');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Curl manubri','0888');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Dips','0888');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Leg press','0888');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Rematore bilanciere','0888');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Panca inclinata','0888');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Hammer manubri','0133');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Curl manubri','0133');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Dips','0133');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Leg press','0133');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Rematore bilanciere','0133');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Panca inclinata','0133');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Hammer manubri','0122');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Curl manubri','0122');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Dips','0122');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Leg press','0122');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Rematore bilanciere','0122');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Panca inclinata','0122');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Hammer manubri','0121');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Curl manubri','0121');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Dips','0121');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Leg press','0121');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Rematore bilanciere','0121');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Panca inclinata','0121');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Hammer manubri','0111');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Curl manubri','0111');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Dips','0111');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Leg press','0111');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Rematore bilanciere','0111');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Panca inclinata','0111');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Hammer manubri','0392');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Curl manubri','0392');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Dips','0392');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Leg press','0392');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Rematore bilanciere','0392');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Panca inclinata','0392');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Hammer manubri','0199');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Curl manubri','0199');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Dips','0199');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Leg press','0199');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Rematore bilanciere','0199');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Panca inclinata','0199');

INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Hammer manubri','0101');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(3,12,'Curl manubri','0101');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Dips','0101');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Leg press','0101');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Rematore bilanciere','0101');
INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento)
    VALUES(4,12,'Panca inclinata','0101');

--POPOLAMENTO TABELLA PRENOTAZIONE

INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0001',TO_DATE('2022-07-11','YYYY-MM-DD'),'BGDFJG84D14H091Y','Zumba','Fit For Smile');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0002',TO_DATE('2022-07-13','YYYY-MM-DD'),'BGDFJG84D14H091Y','Pilates','Fit For Smile');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0003',TO_DATE('2022-07-11','YYYY-MM-DD'),'KFGGGQ87E49B249U','Zumba','Fit For Smile');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0004',TO_DATE('2022-07-09','YYYY-MM-DD'),'BGDFJG84D14H091Y','Fit Boxe','Fit For Smile');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0005',TO_DATE('2022-07-08','YYYY-MM-DD'),'FTNSJH69D19B502O','Yoga','Fit For Smile');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0006',TO_DATE('2022-07-14','YYYY-MM-DD'),'BRJHNB58D02L075B','CrossFit','Fit For Smile');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0007',TO_DATE('2022-07-15','YYYY-MM-DD'),'WMQTWI68D62F336E','Pilates','Fit For Smile');



INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0099',TO_DATE('2022-07-01','YYYY-MM-DD'),'SMJDHK74T61Z342B','CrossFit','Level Up Via Argine');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0100',TO_DATE('2022-07-01','YYYY-MM-DD'),'ZTFDSS30A12B896Q','CrossFit','Level Up Via Argine');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0111',TO_DATE('2022-07-04','YYYY-MM-DD'),'ZTFDSS30A12B896Q','CrossFit','Level Up Via Argine');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0112',TO_DATE('2022-07-06','YYYY-MM-DD'),'FVPTMN90H56F087U','CrossFit','Level Up Via Argine');


INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0600',TO_DATE('2022-07-18','YYYY-MM-DD'),'VSRSLY79H54E350A','Kick Boxing','Performance');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0602',TO_DATE('2022-07-13','YYYY-MM-DD'),'NSVLPJ78T45B612T','Zumba','Performance');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0603',TO_DATE('2022-07-16','YYYY-MM-DD'),'PJNFBU58C49A619P','Boxe','Performance');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0604',TO_DATE('2022-07-16','YYYY-MM-DD'),'YVGHMH50A69A400N','Boxe','Performance');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0601',TO_DATE('2022-07-14','YYYY-MM-DD'),'FVPTMN90H56F087U','CrossFit','Performance');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0605',TO_DATE('2022-07-13','YYYY-MM-DD'),'NSVLPJ78T45B612T','Zumba','Performance');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0606',TO_DATE('2022-07-16','YYYY-MM-DD'),'PJNFBU58C49A619P','Boxe','Performance');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0607',TO_DATE('2022-07-16','YYYY-MM-DD'),'YVGHMH50A69A400N','Boxe','Performance');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0608',TO_DATE('2022-07-21','YYYY-MM-DD'),'YVGHMH50A69A400N','Boxe','Performance');



INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0700',TO_DATE('2022-07-13','YYYY-MM-DD'),'QRLSST65S26D824C','Kick Boxing','Mondo Fitness');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0701',TO_DATE('2022-07-13','YYYY-MM-DD'),'MKHYWB91D53I320V','Kick Boxing','Mondo Fitness');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0702',TO_DATE('2022-07-18','YYYY-MM-DD'),'CMLNLE41L70F284N','Zumba','Mondo Fitness');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0703',TO_DATE('2022-07-18','YYYY-MM-DD'),'CQGBXU46C05H839J','Zumba','Mondo Fitness');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0704',TO_DATE('2022-07-23','YYYY-MM-DD'),'DRLVBD37L23H118C','Pilates','Mondo Fitness');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0705',TO_DATE('2022-07-23','YYYY-MM-DD'),'CMLNLE41L70F284N','Pilates','Mondo Fitness');
INSERT INTO Prenotazione(CodicePrenotazione, DataPrenotazione, CFPersona, NomeCorso, NomePalestra)
    VALUES('0706',TO_DATE('2022-07-23','YYYY-MM-DD'),'QRLSST65S26D824C','Pilates','Mondo Fitness');





--POPOLAMENTO TABELLA CONDUCE
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Lunedi','16','FCFDRM47H82I002A','Zumba','Fit For Smile');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Mercoledi','18','FCFDRM47H82I002A','Zumba','Fit For Smile');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Venerdi','15','FCFDRM47H82I002A','Zumba','Fit For Smile');

INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Lunedi','09','FCFDTF47H12I032C','Pilates','Fit For Smile');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Mercoledi','10','FCFDTF47H12I032C','Pilates','Fit For Smile');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Venerdi','18','FCFDTF47H12I032C','Pilates','Fit For Smile');

INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Martedi','17','FCFDRM47H12I003A','Fit Boxe','Fit For Smile');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Giovedi','17','FCFDRM47H12I003A','Fit Boxe','Fit For Smile');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Sabato','17','FCFDRM47H12I003A','Fit Boxe','Fit For Smile');

INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Lunedi','11','FCFDTF47H12I067C','Yoga','Fit For Smile');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Venerdi','19','FCFDTF47H12I067C','Yoga','Fit For Smile');

INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Martedi','12','DLFDRM47H12I002B','CrossFit','Fit For Smile');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Giovedi','12','DLFDRM47H12I002B','CrossFit','Fit For Smile');




INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Lunedi','18','FCORMA47H12I002A','CrossFit','Level Up Via Argine');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Mercoledi','18','FCORMA47H12I002A','CrossFit','Level Up Via Argine');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Venerdi','18','FCORMA47H12I002A','CrossFit','Level Up Via Argine');




INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Martedi','18','FCFDAE37H12I002A','CrossFit','Performance');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Giovedi','18','FCFDAE37H12I002A','CrossFit','Performance');

INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Lunedi','21','FCFDRM88E93I002A','Kick Boxing','Performance');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Mercoledi','21','FCFDRM88E93I002A','Kick Boxing','Performance');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Venerdi','21','FCFDRM88E93I002A','Kick Boxing','Performance');

INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Lunedi','10','FCFNFT97H12I002A','Zumba','Performance');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Mercoledi','10','FCFNFT97H12I002A','Zumba','Performance');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Venerdi','10','FCFNFT97H12I002A','Zumba','Performance');

INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Lunedi','19','DWFDRM41H12I002A','Boxe','Performance');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Giovedi','19','DWFDRM41H12I002A','Boxe','Performance');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Sabato','19','DWFDRM41H12I002A','Boxe','Performance');

INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Martedi','15','FCFDER47H12I002A','Pilates','Performance');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Giovedi','15','FCFDER47H12I002A','Pilates','Performance');
    

INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Lunedi','21','FCFDRG47H12I042A','Kick Boxing','Mondo Fitness');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Mercoledi','21','FCFDRG47H12I042A','Kick Boxing','Mondo Fitness');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Venerdi','21','FCFDRG47H12I042A','Kick Boxing','Mondo Fitness');

INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Martedi','15','FCHFDM47H12I421E','Pilates','Mondo Fitness');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Giovedi','15','FCHFDM47H12I421E','Pilates','Mondo Fitness');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Sabato','15','FCHFDM47H12I421E','Pilates','Mondo Fitness');

INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Lunedi','10','FFFEEM47H12I052R','Zumba','Mondo Fitness');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Mercoledi','10','FFFEEM47H12I052R','Zumba','Mondo Fitness');
INSERT INTO Conduce(GiornoConduzione, OraConduzione, CFPersona, NomeCorso, NomePalestra)
    VALUES('Venerdi','10','FFFEEM47H12I052R','Zumba','Mondo Fitness');


--POPOLAMENTO TABELLA ACCEDE
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-13','YYYY-MM-DD'),'BGDFJG84D14H091Y','Piscina','Fit For Smile');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-11','YYYY-MM-DD'),'KFGGGQ87E49B249U','Piscina','Fit For Smile');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-10','YYYY-MM-DD'),'XNZPNJ70A05H359U','Piscina','Fit For Smile');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-03','YYYY-MM-DD'),'BGDFJG84D14H091Y','Piscina','Fit For Smile');

INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-12','YYYY-MM-DD'),'WMQTWI68D62F336E','Ristorante','Fit For Smile');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-13','YYYY-MM-DD'),'XNZPNJ70A05H359U','Ristorante','Fit For Smile');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-14','YYYY-MM-DD'),'BTLZFX93P16C346Z','Ristorante','Fit For Smile');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-14','YYYY-MM-DD'),'QYSMBY70C64A784T','Ristorante','Fit For Smile');


INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-06','YYYY-MM-DD'),'XNZPNJ70A05H359U','SPA','Fit For Smile');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-06-10','YYYY-MM-DD'),'QYSMBY70C64A784T','SPA','Fit For Smile');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-06-22','YYYY-MM-DD'),'WMQTWI68D62F336E','SPA','Fit For Smile');


INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-06-29','YYYY-MM-DD'),'MKHYWB91D53I320V','Piscina','Mondo Fitness');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-06-22','YYYY-MM-DD'),'QRLSST65S26D824C','Piscina','Mondo Fitness');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-03','YYYY-MM-DD'),'CQGBXU46C05H839J','Piscina','Mondo Fitness');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-01','YYYY-MM-DD'),'CMLNLE41L70F284N','Piscina','Mondo Fitness');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-06-26','YYYY-MM-DD'),'DRLVBD37L23H118C','Piscina','Mondo Fitness');

INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-06-13','YYYY-MM-DD'),'DRLVBD37L23H118C','Sauna','Mondo Fitness');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-06-15','YYYY-MM-DD'),'CMLNLE41L70F284N','Sauna','Mondo Fitness');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-04','YYYY-MM-DD'),'MKHYWB91D53I320V','Sauna','Mondo Fitness');



INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-04','YYYY-MM-DD'),'YVGHMH50A69A400N','Ristorante','Performance');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-04','YYYY-MM-DD'),'BPNQVB94S10H034R','Ristorante','Performance');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-10','YYYY-MM-DD'),'CSDKRF55C48D422O','Ristorante','Performance');

INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-12','YYYY-MM-DD'),'DHGGJO37L63H343W','Massaggio','Performance');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-01','YYYY-MM-DD'),'YNHFSJ76P01C297J','Massaggio','Performance');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-03','YYYY-MM-DD'),'NSVLPJ78T45B612T','Massaggio','Performance');

INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-06-27','YYYY-MM-DD'),'VSRSLY79H54E350A','Piscina','Performance');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-13','YYYY-MM-DD'),'PRBPFT76R69H302O','Piscina','Performance');

INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-06-29','YYYY-MM-DD'),'DHGGJO37L63H343W','Acque Termali','Performance');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-02','YYYY-MM-DD'),'BPNQVB94S10H034R','Acque Termali','Performance');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-08','YYYY-MM-DD'),'NSVLPJ78T45B612T','Acque Termali','Performance');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-09','YYYY-MM-DD'),'YVGHMH50A69A400N','Acque Termali','Performance');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-07-09','YYYY-MM-DD'),'PRBPFT76R69H302O','Acque Termali','Performance');
INSERT INTO Accede(DataAccesso,CFPersona,NomeServizio,NomePalestra)
    VALUES(TO_DATE('2022-05-10','YYYY-MM-DD'),'PRBPFT76R69H302O','Acque Termali','Performance');
