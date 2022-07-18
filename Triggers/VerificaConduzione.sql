CREATE OR REPLACE TRIGGER Verificaconduzione
BEFORE INSERT ON Conduce
FOR EACH ROW
DECLARE
    NomePal varchar(50);
    NONPUOCONDURRE EXCEPTION;
BEGIN
    SELECT NomePalestra 
    INTO NomePal
    FROM Contratto 
    WHERE CFPersona = :new.CFPersona AND DataScadenzaContratto > SYSDATE;

    IF :new.NomePalestra != NomePal
        THEN
        RAISE NONPUOCONDURRE;
    END IF;

EXCEPTION 
WHEN NONPUOCONDURRE THEN
RAISE_APPLICATION_ERROR(-20000,'Istruttore non associato a questa palestra');
END Verificaconduzione;
