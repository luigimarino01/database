SELECT DISTINCT SCADENZASCHEDAALLENAMENTO,DISTINCT CFPERSONAISCRITTO
FROM
    SCHEDAALLENAMENTO
WHERE 
    CFPERSONAISCRITTO IN(
    SELECT DISTINCT CFPERSONA 
    FROM   SOTTOSCRIVE
    WHERE DATASCADENZAABBONAMENTO>SYSDATE AND CFPERSONA = CFPERSONAISCRITTO
    ) AND SCADENZASCHEDAALLENAMENTO < SYSDATE;


