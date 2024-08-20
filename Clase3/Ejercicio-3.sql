/* Pablo Carrai */
/* pablo.carrai2024@fablab.mvl.edu.ar */

/* 1. Crear una base de datos llamada Escuela.  */
CREATE DATABASE escuela;
/* 2. En ella crear do tablas, una llamada materias y otra alumnos. */
/* 3. La primera deberá contener los campos código, materia, docente y carga horaria. La segunda los campos orden, apellido y promedio. */
USE escuela;
CREATE TABLE materias(
	id INT AUTO_INCREMENT PRIMARY KEY,
	codigo INT,
	materia VARCHAR(20),
	docente VARCHAR(20),
	cargahoraria INT
);
CREATE TABLE alumnos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	orden INT,
	apellido VARCHAR(20),
	promedio INT
);
/* 4. Insertar en la tabla materias los siguientes datos: */
/* (23,"lengua","lopez",4),
(34,"matemática","gimenez",6),
(98,"física","juarez",4),
(76,"historia","fernández",4),
(93,"química","juarez",2),
(66,"geogrfía","fernández",2),
(12,"arte","peñalba",4),
(55,"gimnasia","antúnez",4),
(36,"biología","gonzález",3) */

INSERT INTO
    materias(codigo, materia, docente, cargahoraria)
VALUES
	(23,"lengua","lopez",4),
	(34,"matemática","gimenez",6),
	(98,"física","juarez",4),
	(76,"historia","fernández",4),
	(93,"química","juarez",2),
	(66,"geogrfía","fernández",2),
	(12,"arte","peñalba",4),
	(55,"gimnasia","antúnez",4),
	(36,"biología","gonzález",3);

/* 5. Insertar en la tabla alumnos los siguientes datos:  */
/* (1,"fernández",8),
(2,"silva",5),
(3,"derecho",8),
(4,"saletes"7),
(5,"martinez",3),
(6,"gonzález",8),
(7,"casimiro",6),
(8,"martinez",4),
(9,"soria",10),
(10,"alvarez",7) */

INSERT INTO 
	alumnos(orden, apellido, promedio)
VALUES
	(1,"fernández",8),
	(2,"silva",5),
	(3,"derecho",8),
	(4,"saletes",7),
	(5,"martinez",3),
	(6,"gonzález",8),
	(7,"casimiro",6),
	(8,"martinez",4),
	(9,"soria",10),
	(10,"alvarez",7);

/* 6. Seleccionar todos lo datos de la tabla alumnos.  */
SELECT * FROM alumnos;
/* 7. Seleccionar todos los dato de los alumnos que se apelliden martinez.  */
SELECT * FROM alumnos WHERE apellido = "martinez";
/* 8. Seleccionar todas las materias que tengan una carga horaria de 4 o 2 horas.  */
SELECT materia FROM materias WHERE cargahoraria = 4 OR cargahoraria = 2;
/* 9. Seleccionar los apellidos de los alumnos que estén aprobados.  */
SELECT apellido FROM alumnos WHERE promedio >= 7;
/* 10. Seleccionar todos los alumnos cuyo apellido termine en "ez"  */
SELECT apellido FROM alumnos WHERE apellido LIKE '%ez';

