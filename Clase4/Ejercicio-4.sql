/* Pablo Carrai */
/* pablo.carrai2024@fablab.mvl.edu.ar */

/* Crear una base de datos llamada garbarino con las siguientes tablas y registros: */

CREATE DATABASE garbarino;
USE garbarino;

/*
create table electro(
cod int primary key,
producto varchar(20),
precio int not null); */

CREATE TABLE electro(
	cod INT PRIMARY KEY,
	producto VARCHAR(20),
	precio INT NOT NULL
);

/*
insert into electro values
(021 , "heladera" , 54000),
(903 , "licuadora" , 8700),
(808 , "cocina" , 32000),
(721 , "lavarrpas" , 60200); */

INSERT INTO electro
	(cod, producto, precio) 
VALUES
	(021, "heladera", 54000),
	(903, "licuadora", 8700),
	(808, "cocina", 32000),
	(721, "lavarrpas", 60200);

/*
create table compu(
cod int primary key,
producto varchar(20),
precio int not null); */

CREATE TABLE compu(
	cod INT PRIMARY KEY,
	producto VARCHAR(20),
	precio INT NOT NULL
);

/*
insert into compu values
(404 , "notebook" , 180000),
(410 , "tables" , 27000),
(458 , "smartphone" , 43000),
(440 , "pc" , 75000),
(430 , "smarttv" , 78000); */

INSERT INTO compu
	(cod, producto, precio)
VALUES
	(404, "notebook", 180000),
	(410, "tables", 27000),
	(458, "smartphone", 43000),
	(440, "pc", 75000),
	(430, "smarttv", 78000);

/* 1. Insertar un registro más en la tabla electro con un secarropas cuyo código es 530 y su precio es de 47000. */
INSERT INTO electro
	(cod, producto, precio) 
VALUES
	(530, "secarropas", 47000);

/* 2. Corregir el nombre del producto lavarrpas por lavarropas. */
UPDATE electro SET producto = "lavarropas" WHERE producto = "lavarrpas";

/* 3. Eliminar el campo cod de la tabla compu y agregar uno llamado estado que admita "bueno" o "malo" como dato y otro campo llamado marca. */
ALTER TABLE compu DROP cod;
ALTER TABLE compu ADD estado ENUM("bueno", "malo");
ALTER TABLE compu ADD marca VARCHAR(20);

/* 4. Cambiar el nombre de la tabla electro por electrodomesticos. */
ALTER TABLE electro RENAME TO electrodomesticos;

/* 5. Cambiar el nombre del campo precio por valor en ambas tablas y que admita valores con decimales. */
ALTER TABLE compu RENAME COLUMN precio TO valor;
ALTER TABLE compu MODIFY valor DECIMAL(10,2);
ALTER TABLE electrodomesticos RENAME COLUMN precio TO valor;
ALTER TABLE electrodomesticos MODIFY valor DECIMAL(10,2);

/* 6. Insertar dos registro nuevos en cada una de las tablas (con todos los datos posibles) y eliminar todo registro cuyo producto comience con la letra S. */
INSERT INTO compu
	(producto, valor, estado, marca)
VALUES
	("Disco Rigido", 10500, "bueno", "sansungs"),
	("Disco Rigido Externo", 20500, "malo", "toshiba");
	
INSERT INTO electrodomesticos
	(cod, producto, valor) 
VALUES
	(809, "cocina secarropa", 320.10),
	(722, "tetera", 602.00);
	
DELETE FROM compu WHERE producto LIKE "S%";
DELETE FROM electrodomesticos WHERE producto LIKE "S%";

/* 7. Mostrar todos los productos de a base de datos cuyo precio se mayor a 50000. */
SELECT producto FROM compu WHERE valor > 50000;
SELECT producto FROM electrodomesticos WHERE valor > 50000;

