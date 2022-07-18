CREATE OR REPLACE PROCEDURE AssunzioneoRinnovoContrattoIstruttore (CFDipendente in varchar,Specializzazione in varchar,  NomePal in  varchar, Duratainmesi in  int, Salario in float) IS 
SCADTMP date;
CONTATORE int;
TESSERA int;
TESSERARANDOM int;
TESSERARANDOMALPHA varchar(4);
CODICECONTRATTOTMP int;
CODICECONTRATTOALPHA  varchar(6);
CODICECONTRATTOATTUALE varchar(6);
CFTMP varchar(16);
MESE date;
GIORNO date;


BEGIN
    CODICECONTRATTOTMP := DBMS_RANDOM.VALUE(100000,999999);
    CODICECONTRATTOALPHA := TO_CHAR(CODICECONTRATTOTMP);
    MESE := ADD_MONTHS(SYSDATE, Duratainmesi);
    MESE := MESE+1;
    GIORNO := SYSDATE+1;

    
    CONTATORE := 1;
    SELECT CFPERSONA
    INTO CFTMP
    FROM PERSONA
    WHERE CFPERSONA = CFDIPENDENTE;

    CONTATORE := 2;
    SELECT CFPERSONA
    INTO CFTMP
    FROM DIPENDENTE
    WHERE CFPERSONA = CFDIPENDENTE;

    CONTATORE := 3;
    SELECT CFPERSONA
    INTO CFTMP
    FROM ISTRUTTORE
    WHERE CFPERSONA = CFDIPENDENTE;


    
    SELECT TESSEREDIPENDENTI
    INTO TESSERA
    FROM SEDE
    WHERE NomePalestra = NomePal;

    
    SELECT MAX(DATASCADENZACONTRATTO) 
    INTO SCADTMP
    FROM CONTRATTO 
    WHERE CFPERSONA = CFDipendente;

    CONTATORE := 4;
    SELECT CODICECONTRATTO
    INTO CODICECONTRATTOATTUALE
    FROM CONTRATTO 
    WHERE CFPERSONA = CFDipendente
    ORDER BY DATASCADENZACONTRATTO ASC FETCH NEXT 1 ROWS ONLY;
    


    
    IF(SCADTMP IS NULL)
    THEN  INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
          VALUES(CODICECONTRATTOALPHA,NOMEPAL,GIORNO,MESE,Salario,CFDipendente);
    ELSIF(SCADTMP < SYSDATE)
        THEN 
        INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
        VALUES(CODICECONTRATTOALPHA,NOMEPAL,SYSDATE,MESE,Salario,CFDipendente);
    ELSE
        UPDATE CONTRATTO
        SET DataScadenzaContratto = SYSDATE
        WHERE CodiceContratto = CODICECONTRATTOATTUALE;

        INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
        VALUES(CODICECONTRATTOALPHA,NOMEPAL,GIORNO,MESE,Salario,CFDipendente);
    END IF;




EXCEPTION
    WHEN NO_DATA_FOUND THEN
    IF(CONTATORE = 1) THEN 
        DBMS_OUTPUT.PUT_LINE('La persona non e all interno della banca dati, riprovare dopo il suo inserimento.');    
      ELSIF (CONTATORE = 2) THEN
        IF (TESSERA = 0) THEN
            INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES(CFDipendente,NULL);
            INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES(Specializzazione,CFDipendente);
            INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
            VALUES(CODICECONTRATTOALPHA,NOMEPAL,SYSDATE,MESE,Salario,CFDipendente);
        ELSIF(TESSERA = 1) THEN
            TESSERARANDOM := DBMS_RANDOM.VALUE(1000,9999);
            TESSERARANDOMALPHA := TO_CHAR(TESSERARANDOM);
            INSERT INTO Dipendente(CFPersona, NumeroTesseraDipendente) VALUES(CFDipendente,TESSERARANDOMALPHA);
            INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES(Specializzazione,CFDipendente);
            INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
            VALUES(CODICECONTRATTOALPHA,NOMEPAL,SYSDATE,MESE,Salario,CFDipendente);
        END IF;
        ELSIF(CONTATORE = 3) THEN
            INSERT INTO Istruttore(SpecializzazioneIstruttore,CFPersona) VALUES(Specializzazione,CFDipendente);
            INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
            VALUES(CODICECONTRATTOALPHA,NOMEPAL,SYSDATE,MESE,Salario,CFDipendente);
        ELSIF(CONTATORE = 4) THEN
            INSERT INTO Contratto(CodiceContratto,NomePalestra,DataStipulazioneContratto,DataScadenzaContratto,Stipendio,CFPersona)
            VALUES(CODICECONTRATTOALPHA,NOMEPAL,SYSDATE,MESE,Salario,CFDipendente);


    END IF;
END;
