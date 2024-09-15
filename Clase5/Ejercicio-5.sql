/* Pablo Carrai */
/* pablo.carrai2024@fablab.mvl.edu.ar */

/* Ejercicio 5 - Uniones */
/* Tuve que usar anio en vez de año porque no me toma la ñ y se ve mal */

CREATE DATABASE musica; 
USE musica;
CREATE TABLE nacionales(
orden INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(20),
banda VARCHAR(10),
anio INT
);
CREATE TABLE internacionales(
orden INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(20),
banda VARCHAR(10),
anio INT,
idioma ENUM("ES" , "IN" , "OTRO")
);
INSERT INTO nacionales (titulo , banda , anio) VALUES
("La Balsa" , "Los Gatos" , 1960),
("Muchacha" , "Almendra" , 1972),
("El estudiante" , "Los Twist" , 1980),
("El arriero" , "Divididos" , 1994),
("Los piojos" , "Ruleta" , 2001);
INSERT INTO internacionales (titulo,banda,anio,idioma) VALUES
("Yesterday" , "Beatles" , 1969 , "IN"),
("Blowing in the wind" , "Bob Dylan" , 1977 , "IN"),
("La isla Bonita" , "Madonna" , 1982 , "ES"),
("Dont Cry" , "Guns" , 1992 , "IN"),
("Opel Gang" , "DTH" , 2000 , "OTRO");

/* Con el archivo adjunto realizar las siguientes consultas: */
/* 1. Seleccionar todos los temas de la base de datos. */

SELECT titulo FROM nacionales
UNION
SELECT titulo FROM internacionales;

/* 2. Seleccionar los autores de las tablas nacional e internacionales. */

SELECT banda FROM nacionales
UNION
SELECT banda FROM internacionales;

/* 3. Seleccionar los primeros dos tema de cada una de las tablas de la base de datos. */

SELECT orden,titulo FROM nacionales WHERE orden <=2
UNION
SELECT orden,titulo FROM internacionales WHERE orden <=2;

/* 4. Seleccionar todos los temas, autor y año de las tablas  nacional e internacional y  ordenarlos del más reciente al más viejo. */

SELECT titulo,banda,anio FROM nacionales 
UNION
SELECT titulo,banda,anio FROM internacionales ORDER BY anio DESC;

/* 5. Seleccionar todos los temas de la base de datos cuyo idioma sea español. */

SELECT titulo FROM nacionales 
UNION
SELECT titulo FROM internacionales WHERE idioma="ES";

/* 6. Seleccionar los temas nacionales posteriores a 1990 y los internacionales anteriores a la misma fecha. */

SELECT titulo,anio FROM nacionales
UNION
SELECT titulo,anio FROM internacionales WHERE anio<1990 AND anio>1990;

/* 7. Seleccionar los títulos y bandas de la base de datos y ordenarlos alfabéticamente. */

SELECT titulo, banda FROM nacionales
UNION
SELECT titulo, banda FROM internacionales ORDER BY titulo ;

