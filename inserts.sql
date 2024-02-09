--Karen Quispe i Ariadna Pascual

INSERT INTO PERSONA VALUES
--(20)--DNI, NOM, COGNOM1, COGNOM2, NACIONALITAT, SEXE, DATANEIXEMENT
("123456789Q", "Yunus", "Farag", " Archimedes", "Turca", "H", 12-04-1987),
("234567891W", "Coenraad", "Elhanan", "Tavish",  "Brasileña", "H", 03-04-1990),
("345678912E", "Raúl", "Szebastiá", "Veit", "Ruso", "H", 01-11-1999),
("456789112R", "Anargyros", "Ougein", "Ásbjörn", "Danes", "H", 09-05-2001),
("567891234T", "Lilian", "Hama", "Bruno", "H", "Sudafricana", 23-08-1998),
("678912345Y", "Nicodemus", "Achilleus", "Illiam", "Turco", "H", 19-05-1998),
("789123456U", "Brantley", " Tim ", "Teboho", "Marroqui", "H", 29-12-1994),
("891234567I", "Timo", "Kōji", "Senán", "Canadiense", "H", 04-08-1992),
("912345678P", "Lula", " Kalani", "Nyyrikki", "Japonesa", "H", 24-09-1999),
("987654321A", "Dudu", "Cynebald ", "Mathis", "Ruso", "H", 21-08-1993),
("876543219S", "Rafiq", " Malone", "Liron", "Español", "H", 16-02-2000),
("765432198D", "Saeed", "Xanthos", "Izan", "Danes", "H", 12-09-1998),
("654321987F", "Abiram", "Balor", "Rutendo", "Frances", "H", 13-07-2001),
("543219876G", "Svante", "Jeremiel", "Rini", "Italiana", "H", 22-04-2003),
("432198765H", "Juurou", "Rafiq", "Jani", "Sudafricana", "H", 04-04-1996),
("321987654J", "Emiel", "Gibson", "Danr", "Mexicana", "H", 17-12-2002),
("219876543K", "Hubertus", "Umaru", "Ingvar", "Canadiense", "H", 15-03-1997),
("198765432L", "Janek", "Marc", "Henrikas", "Brasileña", "H", 19-02-2000),
("678543929M", "Liam", "Genadi", "Quidel", "Australiana", "H", 08-02-2000),
("345754386N", "Anaru", "Búi", "Cheops", "Japonesa", "H", 29-08-2000);


INSERT INTO EQUIPO_NACIONAL VALUES
--(8)--ANY, PAIS
(1905, "Brasil"),
(1941, "Canadá"),
(1969, "Australia"),
(1937, "Japón"),
(1985, "España"),
(1922, "Sudáfrica"),
(1973, "Suecia"),
(1916, "India");

INSERT INTO FRANQUICIA VALUES
--(4)--NOM, CIUTAT, PRESSUPOST, ANELLNBA, DNIENTRENADORPRINCIPAL, NOMPAVELLO, NOMFRANQUICIATEMPORADA, NOMCONFERENCIA
("Dragones del Aro", "Barcelona", 2,500,000€, "Toros de Chicago", "12345678A", "Aurora", "Huracanes del Oeste", "Atlántico"),
("Titanes del Balón", "Nueva York", 1,800,000€, "Lakers de Los Ángeles", "98765432B", "Ébano", "Centinelas del Trueno", "Sur Este"),
("Estrellas del Drible", "Tokio", 1,200,000€, "Celtics de Boston", "54321098C", "Esmeralda", "Estrellas del Norte", "Atlántico"),
("Centauros del Tablero", "Sídney", 3,000,000€, "Warriors de Golden State", "87654321D", "Luna Nueva", "Toros del Desierto", "Sur Este");

INSERT INTO FRANQUICIA_TEMPORADA VALUES
--(12)--NOMFRANQUICIA, ANYTEMPORADA, ESGUANYADOR
("Titanes del Balón", 2011, "True"),
("Dragones del Aro", 2012, "False"),
("Estrellas del Drible", 2013, "False"),
("Dragones del Aro", 2014, "True"),
("Titanes del Balón", 2015, "True"),
("Estrellas del Drible", 2016, "False"),
("Dragones del Aro", 2017, "True"),
("Estrellas del Drible", 2018, "True"),
("Titanes del Balón", 2019, "False"),
("Dragones del Aro", 2020, "False"),
("Estrellas del Drible", 2021, "True"),
("Dragones del Aro", 2022, "False");

INSERT INTO CONFERENCIA VALUES
--(2)--NOM, ZONAGEOGRAFICA
("Atlántico", "Florida"),
("Sur Este", "Balcanes");

INSERT INTO DRAFT VALUES
--(4)-- ANY
(2010),
(2013),
(2016),
(2019);

INSERT INTO EQUIPO_NACIONAL_JUGADOR VALUES
--(18)--ANY, PAIS, DNI
(1937, "Japón", "234567891W"),
(1905, "Brasil", "456789112R"),
(1941, "Canadá", "789123456U"),
(1985, "España", "912345678P"),
(1973, "Suecia", "876543219S"),
(1905, "Brasil", "654321987F"),
(1937, "Japón", "432198765H"),
(1905, "Brasil", "321987654J"),
(1969, "Australia", "219876543K"),
(1905, "Brasil", "198765432L"),
(1969, "Australia", "678543929M"),
(1922, "Sudáfrica", "345754386N"),
(1916, "India", "123456789Q"),
(1922, "Sudáfrica", "345678912E"),
(1985, "España", "567891234T"),
(1973, "Suecia", "678912345Y"),
(1941, "Canadá", "891234567I"),
(1973, "Suecia", "987654321A");


INSERT INTO JUGADOR VALUES
--(16)--DNI, ANYSPRO, UNIVERSITATORIGEN, NOMBREARENANBA, DORSAL, NOMFRANQUICIA
("234567891W", 5, "Harvard", "Madison Square Garden", 23, "Estrellas del Drible"),
("789123456U", 3, "Stanford", "TD Garden", 7, "Dragones del Aro"),
("912345678P", 2, "Yale", "Barclays Center", 11, "Centauros del Tablero"),
("876543219S", 2, "Oxford", "Staples Center", 34, "Titanes del Balón"),
("654321987F", 5, "Cambridge", "United Center", 5, "Dragones del Aro"),
("432198765H", 1, "Princeton", "Wells Fargo Center", 9, "Dragones del Aro"),
("321987654J", 3, "Columbia", "Scotiabank Arena", 21, "Estrellas del Drible"),
("219876543K", 7, "Pensilvania", "Chase Center", 3, "Dragones del Aro"),
("198765432L", 4, "Princeton", "Fiserv Forum", 14, "Titanes del Balón"),
("678543929M", 2, "Complutense de Madrid", "American Airlines Arena ", 25, "Centauros del Tablero"),
("345754386N", 5, "Toronto", "Capital One Arena", 32, "Centauros del Tablero"),
("123456789Q", 3, "Stanford", "Rocket Mortgage FieldHouse", 2, "Centauros del Tablero"),
("345678912E", 2, "Complutense de Madrid", "Smoothie King Center ", 15, "Centauros del Tablero"),
("456789112R", 2, "Columbia", "Moda Center", 8, "Titanes del Balón"),
("567891234T", 2, "Yale", "AT&T Center", 20, "Estrellas del Drible"),
("987654321A", 5, "Toronto", "Amway Cente", 12, "Dragones del Aro");