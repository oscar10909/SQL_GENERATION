CREATE SCHEMA tienda;

-- CREATE DATABASE Nombre;

USE tienda; -- seleccionar base de datos

/*
Comentario 
multilinea
*/
-- comentario de una sola linea

DROP SCHEMA nombre; -- DROP Elimina base de daots/schems

-- crear tabla
CREATE TABLE Productos(id int NOT NULL AUTO_INCREMENT, primary key(id));
/*
para crear una tabla debemos agregar una columna por lo menos
*/

-- agregar columna


ALTER TABLE productos ADD COLUMN precio int NOT NULL AFTER id;

-- renombrar tabla
ALTER TABLE productos RENAME inventario;
-- Mostrar las tablas de una base de datos
USE tienda; -- Seleccionar primero la base de datos a manipular
SHOW TABLES;

-- eliminar tabla
DROP TABLE inventario;

CREATE TABLE Productos(id int NOT NULL AUTO_INCREMENT, primary key(id));

ALTER TABLE productos ADD COLUMN nombre varchar(255) NOT NULL;

-- Cambiar nombre y tipo de valor de columna
ALTER TABLE productos CHANGE COLUMN nombre precio INT NOT NULL;

-- Borrrar Columna
ALTER TABLE productos DROP COLUMN precio; 