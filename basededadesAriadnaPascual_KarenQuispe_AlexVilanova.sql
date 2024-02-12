--Ariadna Pascual i Karen Quispe i Alex Vilanova


-- Crear la base de datos si no existeix amb el charset y collation adecuats
CREATE DATABASE IF NOT EXISTS LSG_NBA
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_spanish_ci; 

    /*La intercalació utf8mb4_spanish_ci és adequada per a l'espanyol i generalment també servirà per al català, 
    ja que comparteixen molts caràcters comuns. No obstant això, si volem una intercalació més específica que estigui optimitzada 
    per al català, podriem considerar utf8mb4_unicode_ci, que és una intercalació que suporta múltiples idiomes 
    i és insensible a majúscules i minúscules.*/

-- Utilizar la base de datos LSG_NBA
USE LSG_NBA;

-- Crear taula PERSONA i no accepta cap atribut de valor NULL es a dir els atributs han de ser NOT NULL
CREATE TABLE PERSONA (
    DNI VARCHAR(9),  --Norma j(DNI de 9 caracters)
    Nom VARCHAR(30) NOT NULL,
    Cognom1 VARCHAR(30) NOT NULL,
    Cognom2 VARCHAR(30) NOT NULL,
    Nacionalitat VARCHAR(30) NOT NULL,
    Sexe ENUM('H', 'D', 'NB', 'ND') NOT NULL,
    DataNaixement DATE NOT NULL,
    PRIMARY KEY(DNI)
);

-- Crear taula EQUIP_NACIONAL
CREATE TABLE EQUIP_NACIONAL (
    Any INT(4) NOT NULL,  --Norma j (aplicada a tots els integer):  considerat any com un int i no com un date ja que es un enter de 4 dígits
    Pais VARCHAR(30) NOT NULL,
    PRIMARY KEY (Any, Pais)
);

-- Crear tabla FRANQUICIA   
CREATE TABLE FRANQUICIA (
    Nom VARCHAR(30) PRIMARY KEY,
    Ciutat VARCHAR(30) NOT NULL,
    Pressupost DECIMAL(19,2) NOT NULL, --  Assumint que el pressupost es un valor econòmic
    AnellsNBA TINYINT UNSIGNED NOT NULL DEFAULT 0, --Assumint que es un valor int (podria ser booleà sobre si true,te anells o false no te anells) 
    DNIEntrenadorPrincipal VARCHAR(9),
    NomPavello VARCHAR(30) NOT NULL,
    DNIPropietari VARCHAR(9),
    NomConferencia VARCHAR(30) NOT NULL,
    FOREIGN KEY (DNIEntrenadorPrincipal) REFERENCES ENTRENADOR_PRINCIPAL(DNI) ON DELETE RESTRICT ON UPDATE RESTRICT, --FK's restrict conforme a la norma (c)
    FOREIGN KEY (NomPavello) REFERENCES PAVELLO(Nom) ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY (DNIPropietari) REFERENCES PERSONA(DNI) ON DELETE RESTRICT ON UPDATE RESTRICT, 
    FOREIGN KEY (NomConferencia) REFERENCES CONFERENCIA(Nom) ON DELETE RESTRICT ON UPDATE RESTRICT
);

-- Crear tabla FRANQUICIA_TEMPORADA 
CREATE TABLE FRANQUICIA_TEMPORADA (
    NomFranquicia VARCHAR(30) NOT NULL,
    AnyTemporada INT(4) NOT NULL,
    EsGuanyador BOOLEAN NOT NULL DEFAULT 0, --Norma k:  L’atribut ‘Es_guanyador’ té valor per defecte: FALS.
    PRIMARY KEY (NomFranquicia, AnyTemporada),
    FOREIGN KEY (NomFranquicia) REFERENCES FRANQUICIA(Nom) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (AnyTemporada) REFERENCES TEMPORADA_REGULAR(Any) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Crear tabla CONFERENCIA
CREATE TABLE CONFERENCIA (
    Nom VARCHAR(30),
    ZonaGeografica VARCHAR(30) UNIQUE NOT NULL, --Norma i: L’atribut ‘ZonaGeogràfica’ ha de ser un camp únic que no ha d’acceptar valors repetits
    PRIMARY KEY (Nom)
);

-- Crear tabla DRAFT
CREATE TABLE DRAFT (
    Any INT(4) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (Any)
);

-- Crear tabla EQUIP_NACIONAL_JUGADOR  
CREATE TABLE EQUIP_NACIONAL_JUGADOR (
    Any INT(4) NOT NULL, 
    Pais VARCHAR(30) NOT NULL,
    DNI VARCHAR(9) NOT NULL,
    PRIMARY KEY (Any, Pais, DNI),
    FOREIGN KEY (Any, Pais) REFERENCES EQUIP_NACIONAL(Any, Pais) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (DNI) REFERENCES JUGADOR(DNI) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Crear taula JUGADOR (considerant que ja existeix la taula PERSONA. (generalització)) 
CREATE TABLE JUGADOR (
    DNI VARCHAR(9) NOT NULL,
    AnysPRO INT(4) NOT NULL,
    UniversitatOrigen VARCHAR(30),
    NombreAnellsNBA INT,  -- Canviat de VARCHAR(30) a INT, asumint que representa un numero d'anells.
    Dorsal INT,
    NomFranquicia VARCHAR(30),
    PRIMARY KEY (DNI),
    FOREIGN KEY (DNI) REFERENCES PERSONA(DNI) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (NomFranquicia) REFERENCES FRANQUICIA(Nom) ON DELETE CASCADE ON UPDATE CASCADE 
);

-- Crear tabla PREPARADOR_FISIC 
CREATE TABLE PREPARADOR_FISIC (
    DNI VARCHAR(9) NOT NULL,
    Especialitat VARCHAR(50),
    Cap VARCHAR(50),
    NomFranquicia VARCHAR(30),
    PRIMARY KEY (DNI),
    FOREIGN KEY (DNI) REFERENCES PERSONA(DNI) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (NomFranquicia) REFERENCES FRANQUICIA(Nom) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Cap) REFERENCES PREPARADOR_FISIC(DNI) ON DELETE CASCADE ON UPDATE CASCADE -- Relació reflexiva
);



-- Crear tabla ENTRENADOR_PRINCIPAL 
CREATE TABLE ENTRENADOR_PRINCIPAL (
    DNI VARCHAR(9) NOT NULL,
    PercentatgeVictories DECIMAL(5,2) NOT NULL,
    Salari DECIMAL(19,2) NOT NULL,
    AnyEquipNacional INT(4),
    PaisEquipNacional VARCHAR(30),
    PRIMARY KEY (DNI),
    FOREIGN KEY (DNI) REFERENCES PERSONA(DNI) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (AnyEquipNacional, PaisEquipNacional) REFERENCES EQUIP_NACIONAL(Any, Pais) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Crear tabla PAVELLO
CREATE TABLE PAVELLO (
    Nom VARCHAR(30),
    Ciutat VARCHAR(30) NOT NULL,
    Capacitat INT UNSIGNED NOT NULL, --Hem decidit que serà UNSIGNED ja que en bases de dades, un camp UNSIGNED és sovint utilitzat per a números que no seran negatius, com a quantitats, capacitats, i altres mesures que no tenen sentit en negatiu.
    PRIMARY KEY (Nom) 
);

-- Crear tabla GRADA 
CREATE TABLE GRADA (
    NomPavello VARCHAR(30) NOT NULL,
    Codi INT UNSIGNED AUTO_INCREMENT NOT NULL, -- D'acord amb la norma (d) y (e)
    EsCoberta BOOLEAN NOT NULL, -- D'acord amb la norma (i)
    PRIMARY KEY (NomPavello, Codi),
    FOREIGN KEY (NomPavello) REFERENCES PAVELLO(Nom) ON DELETE CASCADE ON UPDATE CASCADE
);

/* HEM TINGUT ALGUN PROBLEMA : Puede ser solamente un campo automatico y este debe ser definido como una clave.
Per aixo hem posat la taula grada d'aquesta manera i si que ens ha funcionat :)

CREATE TABLE GRADA (
    Codi INT UNSIGNED AUTO_INCREMENT,
    NomPavello VARCHAR(30) NOT NULL,
    EsCoberta BOOLEAN NOT NULL,
    PRIMARY KEY (Codi, NomPavello),
    FOREIGN KEY (NomPavello) REFERENCES PAVELLO(Nom) ON DELETE CASCADE ON UPDATE CASCADE
);*/


--Crear taula SEIENT 
CREATE TABLE SEIENT (
    NomPavello VARCHAR(30) NOT NULL,
    Codi INT UNSIGNED NOT NULL, -- Conforme a la norma (d) i no es conforme amb la (e) ja que aquest codi deriva de la taula GRADA
    Numero SMALLINT UNSIGNED NOT NULL,
    Color VARCHAR(15),
    PRIMARY KEY (NomPavello, Codi, Numero),
    FOREIGN KEY (NomPavello, Codi) REFERENCES GRADA(NomPavello, Codi) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Crear tabla TEMPORADA_REGULAR
CREATE TABLE TEMPORADA_REGULAR (
    Any INT(4) NOT NULL, --Conforme a la norma j
    Inici DATE NOT NULL, -- Conforme a la norma f
    Fi DATE NOT NULL, -- Conforme a la norma f
    PRIMARY KEY (Any)
);

-- Crear tabla DRAFT_JUGADOR_FRANQUICIA  
CREATE TABLE DRAFT_JUGADOR_FRANQUICIA (
    AnyDRAFT INT(4) NOT NULL,
    DNIJugador VARCHAR(9) NOT NULL,
    NomFranquicia VARCHAR(30) NOT NULL,
    Posicio INT NOT NULL,
    PRIMARY KEY (AnyDRAFT, DNIJugador, NomFranquicia),
    FOREIGN KEY (AnyDRAFT) REFERENCES DRAFT(Any) ON DELETE RESTRICT ON UPDATE RESTRICT, --FK's restrict conforme a la norma (c)
    FOREIGN KEY (DNIJugador) REFERENCES JUGADOR(DNI) ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY (NomFranquicia) REFERENCES FRANQUICIA(Nom) ON DELETE RESTRICT ON UPDATE RESTRICT
);



