
--11 Per cada equip retorna quantes vegades ha guanyat. Sempre que siguin 3 vegades o més. Quantes files retorna el select?
SELECT FranchiseName, COUNT(*) as Wins
FROM franchise_season
WHERE IsWinner = 1
GROUP BY FranchiseName
HAVING COUNT(*) >= 3;

4 filas

--12 Retorna amb el país i any els equips nacionals amb el nom i cognom del seu entrenador. Fes-ho pels anys del 2010 al 2015 i pels països que comencin per A. Quants entrenadors retorna la consulta?
SELECT nationalteam.Year, Country, CONCAT(person.Name, ' ', person.Surname) AS CoachName
FROM nationalteam
JOIN person ON headcoach.IDCard = person.IDCard
JOIN headcoach ON nationalteam.IDCardHeadCoach = headcoach.IDCard
WHERE nationalteam.Year BETWEEN 2010 AND 2015 AND Country LIKE 'A%';



--13 Per un any específic retorna per cada equip la suma dels salaris dels seus jugadors. Asumeix que tots els jugadors que tenen un contracte en qualsevol data de l'any 2007 s'ha de contabilitzar. Quin és el presupost dels Houston Rockets?


--14 Retorna cada arena amb la seva capacitat, juntament amb el nombre de seients que tenen. Quants seients té el Footprint Center?

--15 Crea un informe amb tots els jugadors que no son dels Estats Units ni d'Espanya. Inclou-ne tota la seva informació personal completa. Ordena els resultats per nacionalitat i data de naixement ascendent. Quina és la ID del terncer juador retornat?

--16 Mostra un informe amb el nom, cognom i data de naixement de tots els caps d'entrenadors assistents de l'especialitat de psicologia sense repetits i que tenen una data de naixement registrada. Ordena per cognom i nom. Quin és l'any de naixement del tercer resultat?

--17 Volem saber quantes franquícies hi ha per a cada conferència. Mostra totes les dades relacionades amb la conferència i un nou camp amb el recompte. Quantes franquícies hi ha acada conferència?

--18 Sabent que molts jugadors han estat seleccionats en algun moment per les seves seleccions, retorna tots els jugadors que han estat seleccionats en l'any 2010. Inclou IDCard, Nom, Cognom, Nacionalitat, Any de selecció, en aquell mateix any i el número de samarreta en la selecció. Ordena el resultat pel numero de samarreta. Quina es al nacionalitat del primer resultat que apareix?

--19 Retorna el ID, nom i cognom dels jugadors i les dades del seu draft si es que en tenen. Ordena per cognom i any de draft. Quina es la ID del primer resultat?

--20 Retorna les franquícies que han jugat a totes les temporades regulars registrades. Ordena alfabèticament de la Z a la A. I tornaúnicament el 3 resultat.Quin és el nom del equip?

--21 Per cada especialitat d'entrenadors assistents, retorna quants n'ha tingut cada franquícia. Qunatsmetges tenen els Brooklin Nets?

--22 Troba quantes persones han nascut en un any en el qual no hi ha registrat un draft

--23 Quants entrenadors cobren més que qualsevol jugador?

--24 Omple la columna NBARings de la taula de Franquícies. Aquest camp es pot calcular mitjançant la taula Franchise_Season contant quantes vegades han guanyat. Utilitza una declaració UPDATE. Un cop ho tingueu, trobeu quantes franquícies tenen 4 o més anells.

--25 Troba el nom de la franquícia amb el valor de budjet més petit.