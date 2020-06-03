
----SUM(1) es un contador de filas que va de a 1---

SELECT COUNT(libro_id), SUM(1) FROM libros;


----------------En este caso incrementa en 2-------------------------
SELECT COUNT(libro_id), SUM(2) FROM libros;



------------------En este caso incrementa en 101------------------------------
SELECT COUNT(libro_id), SUM(10) FROM libros;


----En esta parte empezamos a acumular----

---------Sumar precios de libros vendibles-----

SELECT SUM(precio) FROM libros WHERE vendible = 1 LIMIT 10;

-----------Suma de precios por copias de los libros----

SELECT SUM(precio*copias) FROM libros WHERE vendible = 1 LIMIT 10;


------------Contador de libros que seam menores del año 1950 -------------------------
SELECT COUNT(libro_id), SUM(IF(year< 1950 , 1, 0)) AS '<1950' FROM libros;



-------------Contador de libros de < 1950 y > 1950----------------------

SELECT COUNT(libro_id), 
SUM(IF(year< 1950, 1, 0)) AS '<1950',
SUM(IF(year< 1950, 0, 1))AS '>1950' FROM libros;

--------------Contador libros de diferentes años---------------------------


SELECT COUNT(libro_id), 
SUM(IF(year < 1950, 1, 0)) AS '<1950',
SUM(IF(year >= 1950 AND year < 1990 , 1 , 0)) AS '<1990',
SUM(IF(year >= 1990 AND year < 2000, 1, 0)) AS '<2000',
SUM(IF(year >= 2000 , 1, 0)) AS '<hoy' FROM libros;



----------Contador libros de diferentes años y nacionalidades--------------------

SELECT nacionalidad, COUNT(libro_id),
SUM(IF(year< 1950 , 1 ,0)) AS '<1950',
SUM(IF(year >= 1950 AND year < 1990 , 1 ,0)) AS '<1990',
SUM(IF(year >= 1990 AND year < 2000 , 1, 0)) AS '<2000',
SUM(IF(year >= 2000 ,1 ,0)) AS '<hoy'  FROM libros AS l
JOIN autores AS a 
	ON a.autor_id = l.autor_id
WHERE a.nacionalidad IS NOT NULL
GROUP BY nacionalidad;