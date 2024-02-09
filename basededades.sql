--Ariadna Pascual i Karen Quispe i Alex Vilanova


-- Crear la base de datos si no existeix amb el charset y collation adecuats
CREATE DATABASE IF NOT EXISTS LSG_NBA
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_spanish_ci;

-- Utilizar la base de datos LSG_NBA
USE LSG_NBA;

-- Crear tabla PERSONA
CREATE TABLE PERSONA (
    DNI VARCHAR(9) PRIMARY KEY,
    Nom VARCHAR(30) NOT NULL,
    Cognom1 VARCHAR(30) NOT NULL,
    Cognom2 VARCHAR(30) NOT NULL,
    Nacionalitat VARCHAR(30) NOT NULL,
    Sexe ENUM('H', 'D', 'NB', 'ND') NOT NULL,
    DataNaixement DATE NOT NULL
);

-- Crear tabla EQUIPO_NACIONAL
CREATE TABLE EQUIPO_NACIONAL (
    Any INT(4) NOT NULL,
    Pais VARCHAR(30) NOT NULL,
    PRIMARY KEY (Any, Pais)
);

-- Crear tabla FRANQUICIA
CREATE TABLE FRANQUICIA (
    Nom VARCHAR(30) PRIMARY KEY,
    Ciutat VARCHAR(30) NOT NULL,
    Pressupost DECIMAL(19,2) NOT NULL, -- Asumiendo que el presupuesto es un valor económico
    AnellNBA BOOLEAN NOT NULL DEFAULT 0, -- Asumiendo que 'AnellNBA' es un valor booleano que indica si han ganado un anillo de la NBA
    DNIEntrenadorPrincipal VARCHAR(9),
    NomPavello VARCHAR(30) NOT NULL,
    NomFranquiciaTemporada VARCHAR(30) NOT NULL,
    NomConferencia VARCHAR(30) NOT NULL,
    FOREIGN KEY (DNIEntrenadorPrincipal) REFERENCES PERSONA(DNI) ON DELETE RESTRICT ON UPDATE RESTRICT
);

-- Crear tabla FRANQUICIA_TEMPORADA
CREATE TABLE FRANQUICIA_TEMPORADA (
    NomFranquicia VARCHAR(30) NOT NULL,
    AnyTemporada INT(4) NOT NULL,
    EsGuanyador BOOLEAN NOT NULL DEFAULT 0,
    PRIMARY KEY (NomFranquicia, AnyTemporada),
    FOREIGN KEY (NomFranquicia) REFERENCES FRANQUICIA(Nom) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Crear tabla CONFERENCIA
CREATE TABLE CONFERENCIA (
    Nom VARCHAR(30) PRIMARY KEY,
    ZonaGeografica VARCHAR(30) UNIQUE NOT NULL
);

-- Crear tabla DRAFT
CREATE TABLE DRAFT (
    Any INT(4) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (Any)
);

-- Crear tabla EQUIPO_NACIONAL_JUGADOR
CREATE TABLE EQUIPO_NACIONAL_JUGADOR (
    Any INT(4) NOT NULL,
    Pais VARCHAR(30) NOT NULL,
    DNI VARCHAR(9) NOT NULL,
    PRIMARY KEY (Any, Pais, DNI),
    FOREIGN KEY (Any, Pais) REFERENCES EQUIPO_NACIONAL(Any, Pais) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (DNI) REFERENCES PERSONA(DNI) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Crear tabla JUGADOR (considerando que ya existe la tabla PERSONA)
CREATE TABLE JUGADOR (
    DNI VARCHAR(9) NOT NULL,
    AnySPRO INT(4) NOT NULL,
    UniversitatOrigen VARCHAR(30),
    NombreArenaNBA VARCHAR(30),
    Dorsal INT,
    NomFranquicia VARCHAR(30),
    PRIMARY KEY (DNI),
    FOREIGN KEY (DNI) REFERENCES PERSONA(DNI) ON DELETE CASCADE ON UPDATE CASCADE
);

