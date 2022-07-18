CREATE OR REPLACE TRIGGER Verificaprenotazione
BEFORE INSERT ON Prenotazione
FOR EACH ROW
DECLARE
    NomePal varchar(50);
    NONPUOPRENOTARE EXCEPTION;
BEGIN
    SELECT NomePalestra
    INTO NomePal
    FROM Sottoscrive
    WHERE CFPersona = :new.CFPersona AND DataScadenzaAbbonamento > SYSDATE;
    IF :new.NomePalestra != NomePal
        THEN
        RAISE NONPUOPRENOTARE;
    END IF;

EXCEPTION 
WHEN NONPUOPRENOTARE THEN
RAISE_APPLICATION_ERROR(-20000,'La persona non ha un abbonamento valido\in corso associato a questa palestra');
END Verificaprenotazione;