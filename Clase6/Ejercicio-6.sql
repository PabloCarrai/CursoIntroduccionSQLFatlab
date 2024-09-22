/* Pablo Carrai */
/* pablo.carrai2024@fablab.mvl.edu.ar */

/* Ejercicio 6 - Joins */

/* 1 Seleccionar todos los libros disponibles con su correspondiente autor y país de origen. */

SELECT libros.nombre, libros.autor, autores.pais
FROM libros
JOIN autores
ON libros.autor = autores.nombre;

/* 2 Mostrar todos los libros disponibles de autores que hayan ganado un nobel. */

SELECT libros.nombre, libros.autor
FROM libros
JOIN autores
ON libros.autor = autores.nombre
WHERE autores.nobel = "si";

/* 3 Seleccionar los libros con su editorial que se encuentran disponibles para todo el país */

SELECT libros.nombre, libros.editorial
FROM libros
JOIN editoriales
ON libros.editorial = editoriales.nombre
WHERE editoriales.capital = 1 and editoriales.interior = 1;

/* 4 Mostrar titulos y precios de los libros de argentinos disponibles en el interior */

SELECT libros.nombre, libros.precio
FROM libros
JOIN autores
ON libros.autor = autores.nombre
JOIN editoriales
ON libros.editorial = editoriales.nombre
WHERE editoriales.interior = 1;

/* 5 Mostrar todos los autores con sus libros y stock, incluyendo aquellos de los cuales no se posean ejemplares */

SELECT autores.nombre, libros.nombre, libros.stock
FROM autores
JOIN libros
ON libros.autor = autores.nombre;

/* 6 Seleccionar las editoriales y los autores con los que no se está trabajando */

SELECT autores.nombre, libros.nombre
FROM autores
JOIN libros
ON autores.nombre=libros.autor
JOIN editoriales
ON editoriales.nombre=autores.nombre;

/* 7  Mostrar las editoriales que posean libros de menos de $ 1000 que posean distribución en capital */

SELECT editoriales.nombre
FROM editoriales
JOIN libros
ON editoriales.nombre = libros.editorial
WHERE libros.precio < 1000 and editoriales.capital=1;

