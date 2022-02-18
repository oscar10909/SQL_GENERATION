/*
crear una BD llamada tienda_abarrotes
productos
clientes
proveedores

c/tablas 5 columnas
*/
CREATE SCHEMA tienda_abarrotes;

USE tienda_abarrotes;

CREATE TABLE Productos(id int NOT NULL AUTO_INCREMENT, primary key(id));

ALTER TABLE productos ADD COLUMN nombre varchar(255) NOT NULL;
ALTER TABLE productos ADD COLUMN cantidad int NOT NULL;
ALTER TABLE productos ADD COLUMN departamento varchar(255) NOT NULL;
ALTER TABLE productos ADD COLUMN fecha_caducidad timestamp;

CREATE TABLE Clientes(id int NOT NULL AUTO_INCREMENT, primary key(id));

ALTER TABLE clientes ADD COLUMN nombre varchar(255) NOT NULL;
ALTER TABLE clientes ADD COLUMN apellidos varchar(255) NOT NULL;
ALTER TABLE clientes ADD COLUMN calle varchar(255) NOT NULL;
ALTER TABLE clientes ADD COLUMN telefono varchar(255) NOT NULL;

CREATE TABLE Proveedore(id int NOT NULL AUTO_INCREMENT, primary key(id));
ALTER TABLE proveedore ADD COLUMN nombre varchar(255) NOT NULL;
ALTER TABLE proveedore ADD COLUMN apellidos varchar(255) NOT NULL;
ALTER TABLE proveedore ADD COLUMN direccion varchar(255) NOT NULL;
ALTER TABLE proveedore ADD COLUMN telefono varchar(255) NOT NULL;