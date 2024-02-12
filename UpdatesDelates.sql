--Ariadna Pascual, Karen Quispe i Alex Vilanova

--1. Actualitza el Salari dels entrenadors principals i el Pressupost de la franquícia; incrementeu aquests valors en un +3% i un +5% respectivament. (Pista: calen 2 updates)

UPDATE ENTRENADOR_PRINCIPAL
SET Salari = Salari * 1.03;

UPDATE FRANQUICIA
SET Pressupost = Pressupost * 1.05;

--2. Actualitza els DNIs de totes les persones a les quals els hi falta la lletra al final; afegintlos el caràcter ‘%’ al final. (Suposarem que els hi falta la lletra a tots els que tinguin una longitud de 8 caràcters).

UPDATE PERSONA
SET DNI = CONCAT(DNI, '%')
WHERE LENGTH(DNI) = 8;

--3. Elimina els jugadors que tinguin el dorsal NULL.

DELETE FROM JUGADOR
WHERE Dorsal IS NULL;

--4. Esborra tots aquells entrenadors principals que estiguin associats a una franquícia amb un pressupost inferior a 2 milions

DELETE FROM ENTRENADOR_PRINCIPAL
WHERE DNI IN (
    SELECT DNIEntrenadorPrincipal
    FROM FRANQUICIA
    WHERE Pressupost < 2000000
);


--5. Com que tenim espectadors molt supersticiosos, no volen asseure’s a la grada número 13. Esborra les grades número 13 de tots els pavellons i també els seients associats. 


/* 1: Depen de les claus foranes amb ON DELETE CASCADE entre GRADA i SEIENT si 
 esborrem les files de GRADA amb Codi = 13 també es provocarà l'esborrat dels SEIENT relacionats. Si aquest es el cas haurem de fer servir la 
 consulta: */

 DELETE FROM GRADA
  WHERE Codi = 13;



/* 2: si las foreign key no tinguessin definit el ON DELETE CASCADE la consulta seria aixi:
Primer eliminem els registres dependents en la taula SEIENT que estiguin associats a les graderies amb el Codi 13 */

--esborrar els seients associats a les grades número 13
DELETE FROM SEIENT
WHERE Codi IN (
    SELECT Codi
    FROM GRADA
    WHERE Codi = 13
);

/*Eliminar les graderies amb *Codi 13 de la taula GRADERIA.*/
--borrar les grades numero 13
DELETE FROM GRADA
WHERE Codi = 13;

