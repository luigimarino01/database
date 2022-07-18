CREATE OR REPLACE TRIGGER Verificascheda
BEFORE INSERT ON Schedaallenamento
FOR EACH ROW
DECLARE
    NomePalIstruttore varchar(50);
    NomePalIscritto varchar(50);
    NONPUOSCRIVERE EXCEPTION;
BEGIN
    SELECT NomePalestra
    INTO NomePalIstruttore
    FROM Contratto
    WHERE CFPersona = :new.CFPersonaIstruttore AND DataScadenzaContratto > SYSDATE;
    
    SELECT NomePalestra
    INTO NomePalIscritto
    FROM Sottoscrive
    WHERE CFPersona = :new.CFPersonaIscritto AND DataScadenzaAbbonamento > SYSDATE;

    IF NomePalIstruttore != NomePalIscritto
    THEN
    RAISE NONPUOSCRIVERE;
    END IF;

EXCEPTION 
WHEN NONPUOSCRIVERE THEN
RAISE_APPLICATION_ERROR(-20000,'La persona e il coach non fanno parte della stessa palestra attualmente');
END Verificascheda;