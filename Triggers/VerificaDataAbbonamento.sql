CREATE OR REPLACE TRIGGER Verificadataabbonamento
BEFORE INSERT ON Sottoscrive
FOR EACH ROW
DECLARE 
    NONPUOSOTTOSCRIVERE EXCEPTION;
BEGIN
    
    IF :new.DataScadenzaAbbonamento < :new.DataSottoiscrizioneAbbonamento
    THEN
    RAISE NONPUOSOTTOSCRIVERE;
    END IF;


EXCEPTION 
WHEN NONPUOSOTTOSCRIVERE THEN
RAISE_APPLICATION_ERROR(-20000,'Controllare le date inserite, errore.');
END Verificadataabbonamento;