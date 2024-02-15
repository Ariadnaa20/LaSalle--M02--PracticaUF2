--Karen Quispe i Ariadna Pascual i Alex Vilanova

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
("345754386N", "Anaru", "Búi", "Cheops", "Japonesa", "H", 29-08-2000),
("987123291M", "Hope", "Clements", "Gómez", "Japonés", "M", 27-09-1992),
("234749365L", "Miah", "Cline", "Rodríguez", "Australiano", "M", 15-06-1997),
("921846735K", "Clarence", "Beltran", "García", "Brasileño", "H", 03-11-1990),
("456712986H", "Bonnie", "Horton", "Fernández", "Canadiense", "M", 21-03-2003),
("923387463P", "Kyron", "Randolph", "Pérez", "Sudafricano", "H", 09-12-1995),
("123456783A", "Neo", "Prince", "Martínez", "Canadiense", "H", 18-08-1998),
("987658342D", "Alys", "Barber", "López", "Noruego", "H", 30-04-2001),
("243375839B", "Marina", "Heath", "Sánchez", "Indio", "M", 07-07-1993),
("493752145F", "Jude", "Fuller", "Ramírez", "Mexicano", "M", 12-10-2000),
("234554329J", "Inaaya", "Short", "González", "Italiano", "M", 24-02-1996),
("234598787H", "Kezia", "Oliver", "Torres", "Ruso", "H", 06-05-2004);

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
("Dragones del Aro", "Barcelona", "2,500,000", "Toros de Chicago", "12345678A", "Aurora", "Huracanes del Oeste", "Atlántico"),
("Titanes del Balón", "Nueva York", "1,800,000", "Lakers de Los Ángeles", "98765432B", "Ébano", "Centinelas del Trueno", "Sur Este"),
("Estrellas del Drible", "Tokio", "1,200,000", "Celtics de Boston", "54321098C", "Esmeralda", "Estrellas del Norte", "Atlántico"),
("Centauros del Tablero", "Sídney", "3,000,000", "Warriors de Golden State", "87654321D", "Luna Nueva", "Toros del Desierto", "Sur Este");

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

INSERT INTO CONFERENCIA VALUE
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

INSERT INTO PREPARADOR_FISIC VALUES
--(5)--DNI, ESPECIALITAT, CAP, NOMFRANQUICIA ref FRANQUICIA
("987123291M", "Entrenamiento", "Liderazgo", "Estrellas del Drible"),
("234749365L", "Rehabilitación", "Inspiración", "Titanes del Balón"),
("921846735K", "Nutrición", "Comunicación", "Centauros del Tablero"),
("456712986H", "Biomecánica", "Ejemplo", "Dragones del Aro"),
("923387463P", "Gestión", "Coordinación", "Estrellas del Drible");


INSERT INTO ENTRENADOR_PRINCIPAL VALUES
--(8)--DNI, PERCENTATGEVICTORIES, SALRI, ANYEQUIPNACIONAL, PAISEQUIPNACIONAL
("987123291M", "65.2", "4,500,000", 1905, "Brasil"),
("234749365L", "58.9", "6,200,000", 1941, "Canadá"),
("921846735K", "71.3", "3,800,000", 1969, "Australia"),
("456712986H", "62.5", "5,700,000", 1937, "Japón"),
("923387463P", "68.7", "7,100,000", 1985, "España"),
("123456783A", "59.8", "4,900,000", 1922, "Sudáfrica"),
("987658342D", "73.4", "6,500,000", 1973, "Suecia"),
("243375839B", "66.1", "5,300,000", 1916, "India");


INSERT INTO PAVELLO VALUES
--(4)--NOM, CIUTAT, CAPACITAT
("Centro Barclays", "Brooklyn", 19,812),
("Arena Staples", "Los Angeles",  20,789),
("Pabellón Oracle", "San Francisco", 17,732),
("Estadio Madison Square", "New York", 18,064 );


INSERT INTO GRADA VALUES
--(14)--NOMPAVELLO, CODI, ESCOBERTA
("Centro Barclays", 1001, "TRUE"),
("Arena Staples", 1002, "FALSE"),
("Pabellón Oracle", 1003, "TRUE"),
("Arena Staples", 1004, "TRUE"),
("Centro Barclays", 1005, "FALSE"),
("Pabellón Oracle", 1006, "FALSE"),
("Pabellón Oracle", 1007, "TRUE"),
("Arena Staples", 1008, "FALSE"),
("Centro Barclays", 1009, "TRUE"),
("Estadio Madison Square", 1010, "TRUE"),
("Arena Staples", 1011, "FALSE"),
("Pabellón Oracle", 1012, "TRUE"),
("Estadio Madison Square", 1013, "FALSE"),
("Centro Barclays", 1014, "TRUE");


INSERT INTO SEIENT VALUES
--(30)--NOMPAVELLO, CODI, NUMERO, COLOR
("Centro Barclays", 1001, 101, "Rojo"),
("Arena Staples", 1002, 102, "Azul"),
("Pabellón Oracle", 1003, 103, "Verde"),
("Estadio Madison Square", 1010, 104, "Amarillo"),
("Centro Barclays", 1014, 105, "Blanco"),
("Centro Barclays", 1001, 106, "Negro"),
("Arena Staples", 1002, 107, "Gris"),
("Pabellón Oracle", 1003, 108, "Morado"),
("Estadio Madison Square", 1013, 109, "Naranja"),
("Estadio Madison Square", "1010", "110", "Rosa"),
("Centro Barclays", 1001, 111, "Turquesa"),
("Arena Staples", 1008, 112, "Marrón"),
("Pabellón Oracle", 1003, 113, "Celeste"),
("Estadio Madison Square", 1010, 114, "Beige"),
("Arena Staples", 1011, 115, "Borgoña"),
("Centro Barclays", 1009, 116, "Verde oscuro"),
("Arena Staples", 1002, 117, "Gris claro"),
("Pabellón Oracle", 003, 118, "Azul marino"),
("Centro Barclays", 1014, 119, "Verde oliva"),
("Arena Staples", 1011, 120, "Crema"),
("Centro Barclays", 1009, 121, "Lavanda"),
("Arena Staples", 1008, 122, "Caqui"),
("Pabellón Oracle", 1012, 123, "Coral"),
("Estadio Madison Square", 1010, 124, "Verde lima"),
("Pabellón Oracle", 1007, 125, "Melocotón"),
("Centro Barclays", 1001, 126, "Aguamarina"),
("Arena Staples", 1008, 127, "Bronce"),
("Pabellón Oracle", 1007, 128, "Chocolate"),
("Arena Staples", 1011, 129, "Lavanda"),
("Estadio Madison Square", 1013, 130, "Mostaza");


INSERT INTO TEMPORADA_REGULAR VALUES
--(3)--ANY, INICI,FI
("2022", 2021-10-19, 2022-04-10),
("2021", 2020-12-22, 2021-05-16),
("2020", 2019-10-22, 2020-04-15);


INSERT INTO DRAFT_JUGADOR_FRANQUICIA VALUES 
--(13)--ANYDFRAT, DNIJUGADOR NOMFRANQUICIA, POSICIO
(2010, "234567891W", "Dragones del Aro", 1),
(2013, "789123456U", "Dragones del Aro", 2),
(2010, "876543219S", "Dragones del Aro", 3),
(2016, "912345678P", "Dragones del Aro", 4),
(2010, "654321987F", "Dragones del Aro", 5),

(2010, "432198765H", "Titanes del Balón", 6),
(2016, "321987654J", "Titanes del Balón", 7),
(2013, "219876543K", "Estrellas del Drible", 8),
(2013, "198765432L", "Estrellas del Drible", 9),
(2013, "678543929M", "Titanes del Balón", 13),

(2019, "345754386N", "Estrellas del Drible", 10),
(2010, "123456789Q", "Estrellas del Drible", 11),
(2016, "345678912E", "Centauros del Tablero", 12);


