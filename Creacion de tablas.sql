---Tabla de autores-----



CREATE TABLE IF NOT EXISTS autores(
	autor_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT ,
	nombre VARCHAR(100) NOT NULL ,
	nacionalidad VARCHAR(3)
	

);



--------Tabla libros------


CREATE TABLE IF NOT EXISTS libros(
	libro_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT ,
	autor_id INTEGER UNSIGNED ,
	titulo VARCHAR(100) NOT NULL ,
	`year` INTEGER UNSIGNED NOT NULL DEFAULT 1900 ,
	lenguaje VARCHAR(2) NOT NULL DEFAULT 'es' ,
	img_url VARCHAR(500) ,
	precio DOUBLE(6,2) DEFAULT 10.0 ,
	vendible TINYINT(1) DEFAULT 1 ,
	copias INTEGER NOT NULL DEFAULT 1 ,
	descripcion TEXT

);


-----------------------

-----Tablas clientes------

CREATE TABLE clientes(
	cliente_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT ,
	nombre VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	fecha_nac DATETIME,
	sexo ENUM('M','F','ND'),
	activo TINYINT(1) NOT NULL DEFAULT 1,
	creacion_fech TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	modificacion_fech TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP


);


------Tabla operaciones----

CREATE TABLE IF NOT EXISTS operaciones(
 	operacion_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
 	libro_id INTEGER UNSIGNED,
 	cliente_id INTEGER UNSIGNED,
 	tipo ENUM('Prestado','Devuelto','Vendido'),
 	creacion_fech TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 	modificacion_fech TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 	finalizada TINYINT(1) NOT NULL



);










