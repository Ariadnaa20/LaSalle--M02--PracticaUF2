--Ariadna Pascual i Karen Quispe


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