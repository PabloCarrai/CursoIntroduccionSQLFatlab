/* Pablo Carrai */
/* pablo.carrai2024@fablab.mvl.edu.ar */

/* Ejercicio 1 - Creación e BBDD y Tablas */

/* 1. Crear una base de datos llamada FAB LAB. */
CREATE DATABASE fabLab;

/*2. Crear en ella una tabla llamada ALUMNOS que contenga los campos APELLIDO, DNI, EDAD y PARTIDO. */
USE fabLab;
CREATE TABLE alumnos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	apellido VARCHAR(20),
	dni INT, 
	edad INT,
	partido VARCHAR(20)
);

/*3. Crear otra tabla en la misma bbdd que se llame DOCENTES que contenga APELLIDO, CURSO y LEGAJO. */
CREATE TABLE docentes(
	id INT AUTO_INCREMENT PRIMARY KEY,
	apellido VARCHAR(20),
	curso VARCHAR(20),
	legajo INT
);

/*4. Crear una segunda base de datos llamada BASE DE DATOS que contenga una tabla con los campos ALUMNO, GENERO y CONDICIÓN */
/* (la condición podrá ser aprobado o no aprobado). */
CREATE DATABASE base_Dedatos;
USE base_Dedatos;
CREATE TABLE baseDeDatos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	alumno VARCHAR(20),
	genero ENUM("masculino", "femenino", "no binario"),
	condicion ENUM("aprobado","no aprobado")
);

/*5. Borrar la tabla docentes de la primer base de datos. */
USE fabLab;
DROP TABLE docentes;

/*6. Borrar la bbdd BASE DE DATOS */
USE base_Dedatos;
DROP TABLE baseDeDatos;

/*7. Mostrar todas las tablas de la base de datos. */
SHOW TABLES;

/*8. Mostrar la descripción de cada una de ellas. */
USE fabLab;
DESCRIBE alumnos;
DESCRIBE docentes;
USE base_Dedatos;
DESCRIBE baseDeDatos;

/*9. Mostrar todas las bases de datos. */
SHOW DATABASES;

/* IMPORTANTE: Seleccionar con criterio el tipo de dato para cada campo y sus atributos. */ 
/* Se debe entregar el archivo SQL con todas las instrucciones. Ejecutar línea por línea  */

