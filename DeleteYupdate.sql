----Borrardo Fisico de una fila donde el id es = 192 con limite de 1---

DELETE FROM autores WHERE autor_id = 192 LIMIT 1;


------Borrado logico Ejemplo General----
UPDATE tabla
SET columna1 = valor1, ... , columnaN = valorN --Los valores que queremos cambiar
WHERE condiciones  ---- Obligatorio xq sino se cambia todas las filas
LIMIT 1;

----------Borrado logico del cliente 80-------------
UPDATE clientes 
SET activo = 0
WHERE cliente_id = 80
LIMIT 1;

----Query para verificar cambio----
 SELECT activo FROM clientes WHERE cliente_id = 80;




---------Lista para ver los que vamos a modificar en la siguiente--------
SELECT cliente_id , nombre, activo FROM clientes
WHERE cliente_id IN (10,8,25,90,50) OR nombre LIKE '%Lopez%';


--------Borrado logico de los clientes 10, 8, 25, 90 y 111-------------

UPDATE clientes 
SET activo = 0
WHERE cliente_id IN (10,8,25,90,50) OR nombre LIKE '%Lopez%';
 

----------TRUNCATE: Borra todo el contenido de la tabla
TRUNCATE operaciones;