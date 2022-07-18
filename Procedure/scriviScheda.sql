CREATE OR REPLACE PROCEDURE ScriviScheda (CF1iscr in varchar, NumeroEsercizi in number) IS

    NomePal varchar (50); 
    CF2istr varchar (16); 
    CODICE int; 
    CODICEALPHA VARCHAR(4); 
    MESE DATE;
    SCADTMP DATE;
    CONTATORE int;
    NUMEROSERIE int;
    NUMERORIPETIZIONI int;
    ESERCIZIOTMP varchar(100);

BEGIN
    
       
    CONTATORE := 1;
    SELECT NomePalestra
    INTO NomePal
    FROM Sottoscrive
    WHERE CFPERSONA = CF1iscr AND DATASCADENZAABBONAMENTO > SYSDATE;
    

    
    CONTATORE := 2;
    SELECT ISTRUTTORE.CFPERSONA
    INTO CF2istr
    FROM CONTRATTO INNER JOIN ISTRUTTORE ON CONTRATTO.CFPERSONA = ISTRUTTORE.CFPERSONA
    WHERE NomePal = NomePalestra AND ISTRUTTORE.SPECIALIZZAZIONEISTRUTTORE = 'Sala';
    

    SELECT MAX(SCADENZASCHEDAALLENAMENTO) 
    INTO SCADTMP
    FROM SCHEDAALLENAMENTO 
    WHERE CFPERSONAISCRITTO = CF1iscr;


    CODICE := DBMS_RANDOM.VALUE(1000,9999);
    CODICEALPHA := TO_CHAR(CODICE);
    
    
    MESE := ADD_MONTHS(SYSDATE, 2);
    IF (SCADTMP < SYSDATE OR SCADTMP IS NULL)
        THEN INSERT INTO SCHEDAALLENAMENTO (CODICESCHEDAALLENAMENTO,SCADENZASCHEDAALLENAMENTO,CFPERSONAISCRITTO,CFPERSONAISTRUTTORE)
                    VALUES (CODICEALPHA,MESE,CF1iscr,CF2istr);
            FOR i IN 1..NumeroEsercizi LOOP
                NUMEROSERIE := DBMS_RANDOM.VALUE(2,4);
                NUMERORIPETIZIONI := DBMS_RANDOM.VALUE(6,12);
                SELECT NomeEsercizio
                INTO ESERCIZIOTMP
                FROM Esercizio
                ORDER BY DBMS_RANDOM.value FETCH NEXT 1 ROWS ONLY;
                INSERT INTO Contiene(Serie, Ripetizioni, NomeEsercizio, CodiceSchedaAllenamento) VALUES(NUMEROSERIE,NUMERORIPETIZIONI,ESERCIZIOTMP,CODICEALPHA);
            END LOOP;

    ELSE
    DBMS_OUTPUT.PUT_LINE('La persona ha una scheda in corso di validita.');   
     END IF;

                    
    


EXCEPTION
      WHEN NO_DATA_FOUND THEN
      IF(CONTATORE = 1) THEN 
      DBMS_OUTPUT.PUT_LINE('La persona non ha un abbonamento valido per la palestra.');      
      ELSIF (CONTATORE = 2) THEN DBMS_OUTPUT.PUT_LINE('Il personal trainer che scrive le schede non e presente.');
      END IF;
END;