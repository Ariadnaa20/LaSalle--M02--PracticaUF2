--Ariadna Pascual, Karen Quispe i Alex Vilanova

--1. Actualitza el Salari dels entrenadors principals i el Pressupost de la franquícia; incrementeu aquests valors en un +3% i un +5% respectivament. (Pista: calen 2 updates)

UPDATE PERSONA
SET Salari = Salari * 1.03
WHERE DNI IN (SELECT DNIEntrenadorPrincipal FROM FRANQUICIA);

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

--- (primera forma de ferho)
DELETE FROM PERSONA
WHERE DNI IN (SELECT DNIEntrenadorPrincipal FROM FRANQUICIA WHERE Pressupost < 2000000);
--- (segona forma de ferho)
UPDATE FRANQUICIA
SET DNIEntrenadorPrincipal = NULL
WHERE Pressupost < 2000000
 

--5. Com que tenim espectadors molt supersticiosos, no volen asseure’s a la grada número 13. Esborra les grades número 13 de tots els pavellons i també els seients associats. 

DELETE FROM GRADES
WHERE NumGrada = 13;

DELETE FROM ASIENTOS
WHERE NumGrada = 13;
