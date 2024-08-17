/* Pablo Carrai */
/* pablo.carrai2024@fablab.mvl.edu.ar */

/* 1. Crear una base de datos llamada . */
CREATE DATABASE futbolistas; 

/* 2. Crear en dicha bbdd las tablas argentinos, internacionales y goleadores como lo indica el pfd adjunto. Definir con criterio los tipos de campo y atributos. */
USE futbolistas; 
CREATE TABLE argentinos(
	orden INT AUTO_INCREMENT PRIMARY KEY,
	apellido VARCHAR(20),
	edad INT,
	posicion VARCHAR(20),
	pais VARCHAR(20)
);
CREATE TABLE internacionales(
	orden INT AUTO_INCREMENT PRIMARY KEY,
	apellido VARCHAR(20),
	nacionalidad VARCHAR(20)
);
CREATE TABLE goleadores(
	orden INT AUTO_INCREMENT PRIMARY KEY,
	apellido VARCHAR(20),
	nacionalidad VARCHAR(20),
	goles INT,
	partidos INT
);

/* 3. Ver la descripción de cada una de las tablas para verificar que los campos estén correctos. */
USE futbolistas;
DESCRIBE argentinos;
DESCRIBE internacionales;
DESCRIBE goleadores;

/* 4. Realizar en cada tabla la inserción de datos para que las mismas queden conformadas como lo muestra el archivo adjunto. */

INSERT INTO
    argentinos(apellido, edad, posicion, pais)
VALUES
    ("Fillol", 73, "Arquero", "Argentina"),
	("Perfumo", NULL,"Defensor", "Argentina"),
	("Sorín", 43, "Defensor", "Argentina"),
	("Zanetti", 49, "Defensor", "Argentina"),
	("Redondo", 54, "Volante", "Argentina"),
	("Pasarella", 75, "Defensor", "Argentina"),
	("Caniggia", 60, "Delantero", "Argentina"),
	("Simeone", 53, "Volante", "Argentina"),
	("Batistuta", 56, "Delantero", "Argentina"), 
	("Maradona", NULL,"Volante", "Argentina") ,
	("Messi", 37, "Delantero", "Argentina"); 

INSERT INTO
    internacionales(apellido, nacionalidad)
VALUES
    ("Yashin", "URRSS"),
	("Beckenbauer", "Alemán"), 
	("Maldini", "Italiano") ,
	("Cafu", "Brasilero"),
	("Varela", "Uruguayo"),
	("Matthaus", "Alemán"),
	("Ronaldo", "Portugués"), 
	("Messi", "Argentino"),
	("Ronaldo", "Brasilero"),
	("Maradona", "Argentino"), 
	("Pelé", "Brasilero");

INSERT INTO
    goleadores(apellido, nacionalidad, goles, partidos)
VALUES
	("Klose", "Alemán", 16, 24),
	("Ronaldo", "Brasilero", 15, 19),
	("Muller", "Alemán", 14, 13),
	("Fontaine", "Francés", 13, 6),
	("Pele", "Brasilero", 12, 14),
	("Klinsmann", "Alemán", 11, 17),
	("Kocsis", "Húngaro", 11, 5),
	("Rahn", "Alemán", 10, 10),
	("Batistuta", "Argentino", 10, 12),
	("Lineker", "Inglés", 10, 12);

/* 5. Mostrar todos los campos de cada una de las tablas para verificar que la inserción de datos es correcta. */
SELECT * FROM argentinos;
SELECT * FROM internacionales;
SELECT * FROM goleadores;

/* 7. Mostrar de la tabla argentinos todos los apellidos y posiciones. */
SELECT apellido, posicion FROM argentinos;
/* 8. De la tabla internacionales mostrar solo los apellidos. */
SELECT apellido FROM internacionales;
/* 9. Mostrar de la tabla goleadores los apellidos y goles de los máximos 5 goleadores. */
SELECT apellido, MAX(goles) FROM goleadores GROUP BY apellido LIMIT 5;

