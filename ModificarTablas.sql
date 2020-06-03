-----Agregar columna---

ALTER TABLE autores ADD COLUMN fecha_nac YEAR DEFAULT 1990 AFTER nombre;

----Modificar columna cambiamos el tipo y el default----

ALTER TABLE autores MODIFY COLUMN fecha_nac INTEGER DEFAULT 1950;

-----Eliminar Columna------

ALTER TABLE autores DROP COLUMN fecha_nac;