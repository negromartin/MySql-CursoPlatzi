------Listar nombre y titulos mediante el JOIN 
-----de las tablas relacionadas (Es decir una query con relacion)

SELECT l.libro_id, a.nombre , l.titulo 
 FROM libros AS l 
 JOIN autores AS a 
 ON a.autor_id = l.autor_id WHERE a.autor_id BETWEEN 1 AND 5;


 ---------------------Lista todas las operaciones con libros y clientes--

SELECT c.nombre ,l.titulo, o.tipo
FROM operaciones AS o
JOIN libros AS l ON o.libro_id = l.libro_id
JOIN clientes AS c ON o.cliente_id = c.cliente_id;

-------------------------Lista las operaciones con libros y clientes con condicion--------------------------------

SELECT c.nombre ,l.titulo, o.tipo
FROM operaciones AS o
JOIN libros AS l ON o.libro_id = l.libro_id
JOIN clientes AS c ON o.cliente_id = c.cliente_id
WHERE c.sexo = 'F' AND o.tipo = 'Vendido';



-------------------Lista las operaciones con libros, autores y clientes con condicion----------------------------

SELECT c.nombre ,l.titulo, a.nombre ,o.tipo
FROM operaciones AS o
JOIN libros AS l ON o.libro_id = l.libro_id
JOIN clientes AS c ON o.cliente_id = c.cliente_id
JOIN autores AS a ON l.autor_id = a.autor_id
WHERE c.sexo = 'M' AND o.tipo IN ('Prestado','Devuelto'); 
---IN es condicion si o.tipo se encuentra en esos parametros.

---------------------------------------------------------------


SELECT c.nombre ,l.titulo, a.nombre ,o.tipo
FROM operaciones AS o
JOIN libros AS l ON o.libro_id = l.libro_id
JOIN clientes AS c ON o.cliente_id = c.cliente_id
JOIN autores AS a ON l.autor_id = a.autor_id
WHERE c.sexo = 'M' AND o.tipo = 'Prestado';