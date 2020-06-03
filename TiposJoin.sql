---Join implicito---

SELECT l.titulo , a.nombre 
FROM autores AS a , libros AS l
WHERE a.autor_id = l.autor_id
LIMIT 50;


------Join explicito

SELECT l.titulo , a.nombre
FROM libros AS l
INNER JOIN autores AS a
ON a.autor_id = l.autor_id
LIMIT 50;


---------Join con ordenamiento(ORDER BY por defecto es ASC)
SELECT a.autor_id, a.nombre, a.nacionalidad, l.titulo
FROM autores AS a
JOIN libros AS l
ON a.autor_id = l.autor_id
WHERE a.autor_id BETWEEN 1 AND 50
ORDER BY a.autor_id DESC ;

------LEFT Join para tarear datos incluso que no existen----

SELECT a.autor_id, a.nombre, a.nacionalidad, l.titulo
FROM autores AS a
LEFT JOIN libros AS l
ON l.autor_id = a.autor_id
WHERE a.autor_id BETWEEN 1 AND 20
ORDER BY a.autor_id;

--------Contar cuantos libros tiene un autor....
---Con COUNT es necesario tener un GROUP BY (Agrupado por un criterio)---

SELECT a.autor_id, a.nombre , a.nacionalidad,
COUNT(l.libro_id)
FROM autores AS a
LEFT JOIN libros AS l
ON l.autor_id = a.autor_id
WHERE a.autor_id BETWEEN 1 AND 50
GROUP BY a.autor_id
ORDER BY a.autor_id;