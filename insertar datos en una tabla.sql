INSERT INTO autores(autor_id, nombre, nacionalidad) VALUES (1,'Peters Parcker','ARG');



INSERT INTO autores(nombre, nacionalidad) 
VALUES ('Roberto Pineda','COL'),
	   ('Hugo Retamozo','VEN'),
	   ('Claudia Costilla','ARG');



INSERT INTO clientes(nombre, email, fecha_nac , sexo, activo)
VALUES ('Juan Roman Riquelme','JuanRoman@gmail.com','1963-08-15','M', 1),
('Julio Retamozo','JulioReta@gmail.com','1964-07-01','M', 1),
('Ivan Eltrolazo','Ivancito@gmail.com','1990-04-21','M', 1),
('Ragnar LordBrock','Ragnar12@gmail.com','1980-05-21','M', 1);



------Este insert es para modificar un campo de un cliente existente---------

INSERT INTO clientes(nombre, email, fecha_nac, sexo, activo)
VALUES('Martin Retamozo', 'martin.retamozo12@gmail.com','1993-06-22','M',1)
ON DUPLICATE KEY UPDATE fecha_nac = VALUES(fecha_nac);


----En ON DUPLICATE KEY UPDATE campoAcambiar = VALUES(campoAcambiarDelValueNuevo)-----




------Insersion de datos con querys anidados--------------

INSERT INTO libros(titulo,autor_id,`year`)
VALUES('Vuelta a la Comisaria',
	(SELECT autor_id FROM autores WHERE nombre = 'Hugo Retamozo' LIMIT 1),1970
);