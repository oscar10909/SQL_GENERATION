create SCHEMA Generation;
use Generation;

-- crear tabla
CREATE TABLE cohorte (id INT NOT NULL auto_increment, primary key(id));
ALTER TABLE cohorte ADD COLUMN nombre varchar(255) NOT NULL;
ALTER TABLE cohorte ADD COLUMN edad int NOT NULL;

-- agregar datos
INSERT INTO cohorte(nombre, edad) values 
('Pedro', 15),
('Ash Ketchup', 12),
('Patricio', 22);

-- Mostrar datos de una tabla
SELECT * FROM cohorte; -- mostrar tabla seleccionada por defecto

select * from world.city; -- mostrar tabla no seleccionada

select nombre from cohorte;

select CountryCode, Population FROM world.city;

select Name AS 'Nombre de los países' FROM world.country; -- agregar un alias al nombre de la columna

-- UPDATE - actualizar valores

UPDATE cohorte SET nombre = 'Juan'; -- si no usamos where se corre el riesgo de cambiar todos los valores

UPDATE cohorte SET 
nombre = 'Juan',
edad = 30 
WHERE id = 4;

-- DELETE borrar un registro o toda la columna

DELETE FROM cohorte WHERE id = 8;
/*
nunca usar DELETE si el WHERE
*/