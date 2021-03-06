CREATE USER TECNICO IDENTIFIED BY TECNICO; 
CREATE USER GESTOREPROPRIETARI IDENTIFIED BY GESTOREPROPRIETARI;
CREATE USER GESTOREDIPENDENTI IDENTIFIED BY GESTOREDIPENDENTI;
CREATE USER GESTOREISCRITTI IDENTIFIED BY GESTOREISCRITTI;
CREATE USER CLIENTE IDENTIFIED BY CLIENTE;


GRANT ALL PRIVILEGES TO GESTOREDB;


GRANT CONNECT, CREATE SESSION TO GESTOREPROPRIETARI;
GRANT SELECT,INSERT,UPDATE ON APPARTIENE TO GESTOREPROPRIETARI;
GRANT SELECT,INSERT,UPDATE ON PERSONA TO GESTOREPROPRIETARI;
GRANT SELECT,INSERT,UPDATE ON PROPRIETARIO TO GESTOREPROPRIETARI;


GRANT CONNECT, CREATE SESSION TO GESTOREDIPENDENTI;
GRANT EXECUTE ON AssunzioneoRinnovoContrattoIstruttore TO GESTOREDIPENDENTI;
GRANT EXECUTE ON eliminaCorsoInattivo TO GESTOREDIPENDENTI;
GRANT SELECT,INSERT,UPDATE ON PERSONA TO GESTOREDIPENDENTI;
GRANT SELECT,INSERT,UPDATE ON DIPENDENTE TO GESTOREDIPENDENTI;
GRANT SELECT,INSERT,UPDATE ON ISTRUTTORE TO GESTOREDIPENDENTI;
GRANT SELECT,INSERT,UPDATE ON SEGRETARIO TO GESTOREDIPENDENTI;
GRANT SELECT,INSERT,UPDATE ON CONTRATTO TO GESTOREDIPENDENTI;
GRANT SELECT,INSERT,UPDATE ON CONDUCE TO GESTOREDIPENDENTI;
GRANT SELECT,INSERT,UPDATE ON CORSO TO GESTOREDIPENDENTI;



GRANT CONNECT, CREATE SESSION TO GESTOREISCRITTI;
GRANT SELECT,INSERT,UPDATE ON PERSONA TO GESTOREISCRITTI;
GRANT SELECT,INSERT,UPDATE ON SOTTOSCRIVE TO GESTOREISCRITTI;
GRANT SELECT,INSERT,UPDATE ON ACQUISTA TO GESTOREISCRITTI;
GRANT SELECT,INSERT,UPDATE ON ISCRITTO TO GESTOREISCRITTI;
GRANT SELECT,INSERT,UPDATE ON ACCEDE TO GESTOREISCRITTI;
GRANT SELECT,INSERT,UPDATE ON PRENOTAZIONE TO GESTOREISCRITTI;
GRANT SELECT,INSERT,UPDATE ON SCHEDAALLENAMENTO TO GESTOREISCRITTI;
GRANT SELECT,INSERT,UPDATE ON CONTIENE TO GESTOREISCRITTI;

GRANT CONNECT, CREATE SESSION TO CLIENTE;
GRANT EXECUTE ON iscrittiMigliori TO GESTOREISCRITTI;
GRANT EXECUTE ON ScriviScheda TO GESTOREISCRITTI;
GRANT SELECT ON ABBONAMENTO TO CLIENTE;
GRANT SELECT ON ACCEDE TO CLIENTE;
GRANT SELECT ON CONDUCE TO CLIENTE;
GRANT SELECT ON CONTIENE TO CLIENTE;
GRANT SELECT ON CONTRATTO TO CLIENTE;
GRANT SELECT ON CORSO TO CLIENTE;
GRANT SELECT ON DIPENDENTE TO CLIENTE;
GRANT SELECT ON ISCRITTO TO CLIENTE;
GRANT SELECT ON ISTRUTTORE TO CLIENTE;
GRANT SELECT ON PERSONA TO CLIENTE;
GRANT SELECT ON PRENOTAZIONE TO CLIENTE;
GRANT SELECT ON PRODOTTO TO CLIENTE;
GRANT SELECT ON PROPRIETARIO TO CLIENTE;
GRANT SELECT ON SCHEDAALLENAMENTO TO CLIENTE;
GRANT SELECT ON SEGRETARIO TO CLIENTE;
GRANT SELECT ON SERVIZIO TO CLIENTE;
GRANT SELECT ON SOTTOSCRIVE TO CLIENTE;
GRANT SELECT ON VENDE TO CLIENTE;











