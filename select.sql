select * from clientes;



-----------Lista por campos---- 


select nombre, email from clientes;



------La funcion YEAR devuelve solo el año de una fecha

select nombre, Year(fecha_nac) from clientes;


select nombre, Year(now()) - Year(fecha_nac) from clientes limit 10;


select nombre, email from clientes limit 10;

select nombre, email , Year(fecha_nac) from clientes where nombre = 'Maria Luisa Marin';



------Funcion like trae los valores que tiene el substring dentro de '% '-----
select * from autores where nombre like '%mozo';

--------Operadon AND------------------------------------------

SELECT * FROM clientes WHERE sexo='F' AND (Year(Now())-Year(fecha_nac))=48;



-------------------------count(*) conteo de todos ---------------------------------

select count(*) from libros;

select count(*) from clientes;

select count(*) from autores;

--------------------------seleccion con doble condicional------------------------------

select * from autores where autor_id > 0 and autor_id <= 5;



--------------------between es lo mismo que la doble condicional anterior-----------------------------------


select * from libros where autor_id between 1 and 5;



-------------------------------------------


select libro_id, autor_id, titulo from libros where autor_id between 1 and 5;
