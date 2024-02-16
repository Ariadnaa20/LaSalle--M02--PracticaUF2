--Karen Quispe i Ariadna Pascual i Alex Vilanova

INSERT INTO PERSONA (DNI, Nom, Cognom1, Cognom2, Nacionalitat, Sexe, DataNaixement) VALUES
('123456789Q', 'Yunus', 'Farag', 'Archimedes', 'Turca', 'H', '1987-04-12'),
('234567891W', 'Coenraad', 'Elhanan', 'Tavish', 'Brasilena', 'H', '1990-04-03'),
('345678912E', 'Raul', 'Szebastia', 'Veit', 'Ruso', 'H', '1999-11-01'),
('456789112R', 'Anargyros', 'Ougein', 'Asbjorn', 'Danes', 'H', '2001-05-09'),
('567891234T', 'Lilian', 'Hama', 'Bruno', 'Sudafricana', 'H', '1998-08-23'),
('678912345Y', 'Nicodemus', 'Achilleus', 'Illiam', 'Turco', 'H', '1998-05-19'),
('789123456U', 'Brantley', 'Tim', 'Teboho', 'Marroqui', 'H', '1994-12-29'),
('891234567I', 'Timo', 'Koji', 'Senan', 'Canadiense', 'H', '1992-08-04'),
('912345678P', 'Lula', 'Kalani', 'Nyyrikki', 'Japonesa', 'H', '1999-09-24'),
('987654321A', 'Dudu', 'Cynebald', 'Mathis', 'Ruso', 'H', '1993-08-21'),
('876543219S', 'Rafiq', 'Malone', 'Liron', 'Espanol', 'H', '2000-02-16'),
('765432198D', 'Saeed', 'Xanthos', 'Izan', 'Danes', 'H', '1998-09-12'),
('654321987F', 'Abiram', 'Balor', 'Rutendo', 'Frances', 'H', '2001-07-13'),
('543219876G', 'Svante', 'Jeremiel', 'Rini', 'Italiana', 'H', '2003-04-22'),
('432198765H', 'Juurou', 'Rafiq', 'Jani', 'Sudafricana', 'H', '1996-04-04'),
('321987654J', 'Emiel', 'Gibson', 'Danr', 'Mexicana', 'H', '2002-12-17'),
('219876543K', 'Hubertus', 'Umaru', 'Ingvar', 'Canadiense', 'H', '1997-03-15'),
('198765432L', 'Janek', 'Marc', 'Henrikas', 'Brasilena', 'H', '2000-02-19'),
('678543929M', 'Liam', 'Genadi', 'Quidel', 'Australiana', 'H', '2000-02-08'),
('345754386N', 'Anaru', 'Bui', 'Cheops', 'Japonesa', 'H', '2000-08-29'),
('987123291M', 'Hope', 'Clements', 'Gomez', 'Japones', 'D', '1992-09-27'),
('234749365L', 'Miah', 'Cline', 'Rodriguez', 'Australiano', 'D', '1997-06-15'),
('921846735K', 'Clarence', 'Beltran', 'Garcia', 'Brasileno', 'H', '1990-11-03'),
('456712986H', 'Bonnie', 'Horton', 'Fernandez', 'Canadiense', 'D', '2003-03-21'),
('923387463P', 'Kyron', 'Randolph', 'Perez', 'Sudafricano', 'H', '1995-12-09'),
('123456783A', 'Neo', 'Prince', 'Martinez', 'Canadiense', 'H', '1998-08-18'),
('987658342D', 'Alys', 'Barber', 'Lopez', 'Noruego', 'H', '2001-04-30'),
('243375839B', 'Marina', 'Heath', 'Sanchez', 'Indio', 'D', '1993-07-07'),
('493752145F', 'Jude', 'Fuller', 'Ramirez', 'Mexicano', 'D', '2000-10-12'),
('234554329J', 'Inaaya', 'Short', 'Gonzalez', 'Italiano', 'D', '1996-02-24'),
('234598787H', 'Kezia', 'Oliver', 'Torres', 'Ruso', 'H', '2004-05-06');



INSERT INTO EQUIP_NACIONAL VALUES
--(8)--ANY, PAIS
(1905, "Brasil"),
(1941, "Canada"),
(1969, "Australia"),
(1937, "Japon"),
(1985, "Espana"),
(1922, "Sudafrica"),
(1973, "Suecia"),
(1916, "India");


INSERT INTO FRANQUICIA (Nom, Ciutat, Pressupost, AnellsNBA, DNIEntrenadorPrincipal, NomPavello, DNIPropietari, NomConferencia) VALUES 
("Dragones del Aro", "Barcelona", 2500000.00, 0, "987123291M", "Centro Barclays", "123456789Q", "Atlantico"),
("Titanes del Balon", "Nueva York", 1800000.00, 0, "234749365L", "Arena Staples", "234567891W", "Sur Este"),
("Estrellas del Drible", "Tokio", 1200000.00, 0, "921846735K", "Pabellón Oracle", "345678912E", "Atlantico"),
("Centauros del Tablero", "Sídney", 3000000.00, 0, "456712986H", "Estadio Madison Square", "456789112R", "Sur Este");



INSERT INTO FRANQUICIA_TEMPORADA (NomFranquicia, AnyTemporada, EsGuanyador) VALUES  
("Dragones del Aro", 2022, 0),
("Dragones del Aro", 2021, 1),
("Dragones del Aro", 2020, 0),
("Titanes del Balon", 2022, 1),
("Titanes del Balon", 2021, 0),
("Titanes del Balon", 2020, 1),
("Estrellas del Drible", 2022, 0),
("Estrellas del Drible", 2021, 1),
("Estrellas del Drible", 2020, 0),
("Centauros del Tablero", 2022, 1),
("Centauros del Tablero", 2021, 0),
("Centauros del Tablero", 2020, 1);


INSERT INTO CONFERENCIA VALUES
--(2)--NOM, ZONAGEOGRAFICA
("Atlantico", "Florida"),
("Sur Este", "Balcanes");

INSERT INTO DRAFT VALUES
--(4)-- ANY
(2010),
(2013),
(2016),
(2019);

INSERT INTO EQUIP_NACIONAL_JUGADOR (Any, Pais, DNI) VALUES 
(1937, "Japon", "234567891W"),
(1905, "Brasil", "456789112R"),
(1941, "Canada", "789123456U"),
(1985, "Espana", "912345678P"),
(1973, "Suecia", "876543219S"),
(1905, "Brasil", "654321987F"),
(1937, "Japon", "432198765H"),
(1985, "Espana", "321987654J"),
(1969, "Australia", "219876543K"),
(1905, "Brasil", "198765432L"),
(1969, "Australia", "678543929M"),
(1922, "Sudafrica", "345754386N"),
(1916, "India", "123456789Q"),
(1922, "Sudafrica", "345678912E"),
(1985, "Espana", "567891234T"),
(1973, "Suecia", "987654321A");
(1941, "Canada", "543219876G"),
(1969, "Australia", "678912345Y");
(1941, "Canada", "987654321A"), 
(1969, "Australia", "123456789Q"); 




INSERT INTO JUGADOR (DNI, AnysPRO, UniversitatOrigen, NombreAnellsNBA, Dorsal, NomFranquicia) VALUES 
("234567891W", 5, "Harvard", 0, 23, "Estrellas del Drible"),
("789123456U", 3, "Stanford", 0, 7, "Dragones del Aro"),
("912345678P", 2, "Yale", 0, 11, "Centauros del Tablero"),
("876543219S", 2, "Oxford", 0, 34, "Titanes del Balon"),
("654321987F", 5, "Cambridge", 0, 5, "Dragones del Aro"),
("432198765H", 1, "Princeton", 0, 9, "Dragones del Aro"),
("321987654J", 3, "Columbia", 0, 21, "Estrellas del Drible"),
("219876543K", 7, "Pensilvania", 0, 3, "Dragones del Aro"),
("198765432L", 4, "Princeton", 0, 14, "Titanes del Balon"),
("678543929M", 2, "Complutense de Madrid", 0, 25, "Centauros del Tablero"),
("345754386N", 5, "Toronto", 0, 32, "Centauros del Tablero"),
("123456789Q", 3, "Stanford", 0, 2, "Centauros del Tablero"),
("345678912E", 2, "Complutense de Madrid", 0, 15, "Centauros del Tablero"),
("456789112R", 2, "Columbia", 0, 8, "Titanes del Balon"),
("567891234T", 2, "Yale", 0, 20, "Estrellas del Drible"),
("987654321A", 5, "Toronto", 0, 12, "Dragones del Aro");


INSERT INTO PREPARADOR_FISIC (DNI, Especialitat, Cap, NomFranquicia) VALUES  
("987123291M", "Entrenamiento fisico", NULL, "Estrellas del Drible"),
("234749365L", "Rehabilitacion deportiva", NULL, "Titanes del Balon"),
("921846735K", "Nutricion deportiva", NULL, "Centauros del Tablero"),
("456712986H", "Biomecanica y movimiento", NULL, "Dragones del Aro"),
("923387463P", "Gestian de equipos y tactica", NULL, "Estrellas del Drible");



INSERT INTO ENTRENADOR_PRINCIPAL (DNI, PercentatgeVictories, Salari, AnyEquipNacional, PaisEquipNacional) VALUES 
('987123291M', 65.2, 4500000, 1905, 'Brasil'),
('234749365L', 58.9, 6200000, 1941, 'Canada'),
('921846735K', 71.3, 3800000, 1969, 'Australia'),
('456712986H', 62.5, 5700000, 1937, 'Japon'),
('923387463P', 68.7, 7100000, 1985, 'Espana'),
('123456783A', 59.8, 4900000, 1922, 'Sudafrica'),
('987658342D', 73.4, 6500000, 1973, 'Suecia'),
('243375839B', 66.1, 5300000, 1916, 'India');


INSERT INTO PAVELLO (Nom, Ciutat, Capacitat) VALUES
('Centro Barclays', 'Brooklyn', 19812),
('Arena Staples', 'Los Angeles', 20789),
('Pabellon Oracle', 'San Francisco', 17732),
('Estadio Madison Square', 'New York', 18064);


INSERT INTO GRADA (NomPavello, Codi, EsCoberta) VALUES  /*no caldria posar el codi perque es auto-increment*/
('Centro Barclays', 1001, 1),
('Arena Staples', 1002, 0),
('Pabellon Oracle', 1003, 1),
('Arena Staples', 1004, 1),
('Centro Barclays', 1005, 0),
('Pabellon Oracle', 1006, 0),
('Pabellon Oracle', 1007, 1),
('Arena Staples', 1008, 0),
('Centro Barclays', 1009, 1),
('Estadio Madison Square', 1010, 1),
('Arena Staples', 1011, 0),
('Pabellon Oracle', 1012, 1),
('Estadio Madison Square', 1013, 0),
('Centro Barclays', 1014, 1);

INSERT INTO SEIENT (NomPavello, Codi, Numero, Color) VALUES
('Centro Barclays', 1001, 101, 'Rojo'),
('Arena Staples', 1002, 102, 'Azul'),
('Pabellon Oracle', 1003, 103, 'Verde'),
('Estadio Madison Square', 1010, 104, 'Amarillo'),
('Centro Barclays', 1014, 105, 'Blanco'),
('Centro Barclays', 1001, 106, 'Negro'),
('Arena Staples', 1002, 107, 'Gris'),
('Pabellon Oracle', 1003, 108, 'Morado'),
('Estadio Madison Square', 1013, 109, 'Naranja'),
('Estadio Madison Square', 1010, 110, 'Rosa'),
('Centro Barclays', 1001, 111, 'Turquesa'),
('Arena Staples', 1008, 112, 'Marron'),
('Pabellon Oracle', 1003, 113, 'Celeste'),
('Estadio Madison Square', 1010, 114, 'Beige'),
('Arena Staples', 1011, 115, 'Borgona'),
('Centro Barclays', 1009, 116, 'Verde oscuro'),
('Arena Staples', 1002, 117, 'Gris claro'),
('Pabellon Oracle', 1003, 118, 'Azul marino'),
('Centro Barclays', 1014, 119, 'Verde oliva'),
('Arena Staples', 1011, 120, 'Crema'),
('Centro Barclays', 1009, 121, 'Lavanda'),
('Arena Staples', 1008, 122, 'Caqui'),
('Pabellon Oracle', 1012, 123, 'Coral'),
('Estadio Madison Square', 1010, 124, 'Verde lima'),
('Pabellon Oracle', 1007, 125, 'Melocoton'),
('Centro Barclays', 1001, 126, 'Aguamarina'),
('Arena Staples', 1008, 127, 'Bronce'),
('Pabellon Oracle', 1007, 128, 'Chocolate'),
('Arena Staples', 1011, 129, 'Lavanda'),
('Estadio Madison Square', 1013, 130, 'Mostaza');



INSERT INTO TEMPORADA_REGULAR (Any, Inici, Fi) VALUES
(2022, '2021-10-19', '2022-04-10'),
(2021, '2020-12-22', '2021-05-16'),
(2020, '2019-10-22', '2020-04-15');



INSERT INTO DRAFT_JUGADOR_FRANQUICIA (AnyDRAFT, DNIJugador, NomFranquicia, Posicio) VALUES
(2010, "234567891W", "Dragones del Aro", 1),
(2013, "789123456U", "Dragones del Aro", 2),
(2010, "876543219S", "Dragones del Aro", 3),
(2016, "912345678P", "Dragones del Aro", 4),
(2010, "654321987F", "Dragones del Aro", 5),
(2010, "432198765H", "Titanes del Balon", 6),
(2016, "321987654J", "Titanes del Balon", 7),
(2013, "219876543K", "Estrellas del Drible", 8),
(2013, "198765432L", "Estrellas del Drible", 9),
(2013, "678543929M", "Titanes del Balon", 13),
(2019, "345754386N", "Estrellas del Drible", 10),
(2010, "123456789Q", "Estrellas del Drible", 11),
(2016, "345678912E", "Centauros del Tablero", 12);
(2019, "987654321A", "Centauros del Tablero", 13),
(2016, "567891234T", "Estrellas del Drible", 14);


