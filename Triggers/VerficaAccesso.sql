CREATE OR REPLACE TRIGGER Verificaaccesso
BEFORE INSERT ON Accede
FOR EACH ROW
DECLARE
    NomePal varchar(50);
    NONPUOACCEDERE EXCEPTION;
BEGIN
    SELECT NomePalestra
    INTO NomePal
    FROM Sottoscrive
    WHERE CFPersona = :new.CFPersona AND DataScadenzaAbbonamento > SYSDATE;
    IF :new.NomePalestra != NomePal
        THEN
        RAISE NONPUOACCEDERE;
    END IF;

EXCEPTION 
WHEN NONPUOACCEDERE THEN
RAISE_APPLICATION_ERROR(-20000,'La persona non ha un abbonamento valido\in corso associato a questa palestra');
END Verificaaccesso;