CREATE TRIGGER VerificaEta
BEFORE INSERT ON Dipendente
FOR EACH ROW
DECLARE
    CF VARCHAR(16);
    DN DATE;
    FUORIETA EXCEPTION;
BEGIN

    :new.CFPersona=CF;
    SELECT DataNascitaPersona 
    INTO DN
    FROM PERSONA 
    WHERE CFPersona = CF;

    IF (SYSDATE - DN) / 365.25 < 18
        RAISE FUORIETA;
    END IF;

EXCEPTION
    WHEN FUORIETA THEN
    :new.CFPersona :=NULL;
END VerificaEta;