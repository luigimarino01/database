CREATE OR REPLACE TRIGGER Verificaabbonamento
BEFORE INSERT ON Sottoscrive
FOR EACH ROW
DECLARE 
    DataScad date;
    Contatore number;
    NONPUOSOTTOSCRIVERE EXCEPTION;
BEGIN
    SELECT COUNT(DataScadenzaAbbonamento) AS CONTATORE
    INTO Contatore
    FROM Sottoscrive
    WHERE CFPersona = :new.CFPersona;
    
    IF Contatore > 0
        THEN
            SELECT MAX(DataScadenzaAbbonamento)
            INTO DataScad
            FROM Sottoscrive
            WHERE CFPersona = :new.CFPersona;
            IF :new.DataSottoiscrizioneAbbonamento < DataScad
                THEN
                RAISE NONPUOSOTTOSCRIVERE;
            END IF;
    END IF;
    


EXCEPTION 
WHEN NONPUOSOTTOSCRIVERE THEN
RAISE_APPLICATION_ERROR(-20000,'La persona ha gia un abbonamento in corso per questa struttura');
END Verificaabbonamento;