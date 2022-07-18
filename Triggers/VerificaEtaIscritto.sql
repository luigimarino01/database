CREATE OR REPLACE TRIGGER VerificaEtaIscritto
BEFORE INSERT ON Iscritto
FOR EACH ROW
DECLARE
    DN DATE;
    MINORENNE EXCEPTION;
    MAGGIORENNE EXCEPTION;
BEGIN
    SELECT DataNascitaPersona 
    INTO DN
    FROM PERSONA 
    WHERE CFPersona = :new.CFPersona;

    IF (SYSDATE - DN) / 365.25 < 16
        THEN
        RAISE MINORENNE;
    END IF;

EXCEPTION 
WHEN MINORENNE THEN
RAISE_APPLICATION_ERROR(-20000,'Gli iscritti devono avere almeno sedici anni');


END VerificaEtaIscritto;
