-------¿Que nacionalidades hay?---

SELECT DISTINCT nacionalidad FROM autores;

SELECT DISTINCT nacionalidad FROM autores ORDER BY 1; ---Ordenados


----¿Cuantos escritores hay de cada nacionalidad??----
----Con los null
SELECT nacionalidad, COUNT(autor_id) AS cantAutores FROM autores
GROUP BY nacionalidad 
ORDER BY cantAutores DESC, nacionalidad ASC;




---Sin los null
SELECT nacionalidad, COUNT(autor_id) AS cantAutores FROM autores
WHERE nacionalidad IS NOT NULL
GROUP BY nacionalidad 
ORDER BY cantAutores DESC, nacionalidad ASC;


--¿Cual es el promedio / desviacion estandar del precio de los libros?--


---Promedio de precio de todos los libros
SELECT AVG(precio) from libros;

---Promedio y desviacion estandar

SELECT AVG(precio) AS promedio, STDDEV(precio) AS desviacion FROM libros;

------Promedio y desviacion con respecto a la nacionalidad del autor----
SELECT nacionalidad, AVG(precio) AS promedio, STDDEV(precio) desviacion
FROM libros AS l
JOIN autores AS a 
	ON a.autor_id = l.autor_id
	WHERE l.precio IS NOT NULL
GROUP BY nacionalidad;

----Promedio y desvio por Nacionalidad y cantidad de autores-------------------

SELECT nacionalidad, COUNT(libro_id) AS libros,
	AVG(precio) AS promedio,
	STDDEV(precio) AS desviacion
FROM libros AS l
JOIN autores AS a
	ON a.autor_id = l.autor_id
	WHERE l.precio IS NOT NULL
GROUP BY nacionalidad
ORDER BY libros DESC;

-----¿Cual es el precio maximo y el minimo de un libro por nacionalidad---------

SELECT nacionalidad, MAX(precio),MIN(precio)
FROM libros AS l
JOIN autores AS a
	ON a.autor_id = l.autor_id
	WHERE l.precio IS NOT NULL
GROUP BY nacionalidad;


-----Reporte de prestamos---

SELECT c.nombre , o.tipo, l.titulo,
	CONCAT(a.nombre, "(",a.nacionalidad,")") AS autor
FROM operaciones AS o
LEFT JOIN clientes AS c
	ON c.cliente_id = o.cliente_id
LEFT JOIN libros AS l
	ON l.libro_id = o.libro_id
LEFT JOIN autores AS a
	ON l.autor_id = a.autor_id;


--------Mismo Reporte pero con dias--------

SELECT c.nombre , o.tipo, l.titulo,
	CONCAT(a.nombre, "(",a.nacionalidad,")") AS autor,
	TO_DAYS(NOW())- TO_DAYS(o.creacion_fech) AS dias
FROM operaciones AS o
LEFT JOIN clientes AS c
	ON c.cliente_id = o.cliente_id
LEFT JOIN libros AS l
	ON l.libro_id = o.libro_id
LEFT JOIN autores AS a
	ON l.autor_id = a.autor_id;