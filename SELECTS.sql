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



