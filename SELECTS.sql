--1. Quants estadis hi ha?

SELECT COUNT(*) FROM arena;

--2. Obté el nom i cognom de l'entrenador principal de cada franquícia. Quin és el cognom de l'entrenador de Utah Jazz?

SELECT p.Surname
FROM person AS p
JOIN headcoach AS hc ON p.IDCard = hc.IDCard
JOIN franchise_season AS fs ON hc.IDCard = f.IDCardCoach
JOIN franchise AS f ON fs.FranchiseName = f.Name
WHERE f.Name = 'Utah Jazz';

--3. Troba el nom de la franquícia amb el pressupost més gran.
SELECT Name
FROM franchise
ORDER BY Budget DESC
LIMIT 1;

INSERT INTO answer (IDquestion, answer_value, sql_query_used) VALUES ('3', 'Chicago Bulls', 'SELECT Name
FROM franchise
ORDER BY Budget DESC
LIMIT 1;');


--4. Llista les arenes (noms i ciutats) de les franquícies de la conferència oest. Quin és el nom de la 5a ciutat?

SELECT a.Name, a.City
FROM arena as  a
JOIN franchise as f ON a.Name = f.ArenaName
JOIN conference as c ON f.ConferenceName = c.Name
WHERE c.Name = 'Western Conference'
ORDER BY a.City;

Resposta
Los Angeles, California --m'ha donat malament 3 vegades ja que una he posat Los Angeles, California despres California i despues 



--5. Llista els noms dels jugadors que han estat seleccionats en el draft en primera, segona o tercera posició al draft del 2020. Ordena pel cognom i nom del jugador (Z-A). Quin és el nom del jugador mostrat en la primera fila

SELECT p.Name, p.Surname
FROM person as p
JOIN player as pl ON d.IDCardPlayer = pl.IDCard
JOIN person as p  ON pl.IDCard = p.IDCard
WHERE d.Year = 2020 AND d.Pick IN (1, 2, 3)
ORDER BY p.Surname DESC, p.Name DESC;


--6.Recupera els noms dels jugadors que tenen una data de naixement anterior al març de 1980. Quin és el nom del jugador de cognom Lue que apareix als primers resultats?

SELECT P.Name, P.Surname
FROM DRAFT D
JOIN PLAYER PL ON D.IDCardPlayer = PL.IDCard
JOIN PERSON P ON PL.IDCard = P.IDCard
WHERE D.Year = 2020 AND D.Pick IN (1, 2, 3)
ORDER BY P.Surname DESC, P.Name DESC;

--7.Per cada arena, digues el nombre de seients VIP que hi ha. Quants en te el Madison Square Garden?


--8.Tenim guardat els colors dels seients de tots els estadis. Retorna quants seients blaus hi ha en total.

--9.Retorna la mitjana de seients (arrodonint sense decimals) per color d’entre tots els estadis. Quina es la mitjana dels platejats?

--10.Retorna els entrenadors principals amb el seu rendiment segons el salari (rendiment = (VictoryPercentage / 100) * (Salary / 1000)), tallant els decimals que resultin. Quin és el rendiment de l'entrenador 100000004?



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
