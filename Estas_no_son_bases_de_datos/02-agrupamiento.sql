/*
consultas de agrupamiento
Las utilizamos para agrupar resultados que tengan el mismo valor
*/

SELECT * FROM inventory GROUP BY store_id;

SELECT * FROM rental GROUP BY customer_id;

SELECT country_id, COUNT(city_id) FROM city GROUP BY country_id;

-- selecciona el country id y el número de ciudades que tiene cada país agrupado por país
SELECT country_id, COUNT(city_id) AS 'Total cuidades' FROM city GROUP BY country_id;

-- selecciona el country id y el número de ciudades que tiene cada país agrupado por país
SELECT country_id, COUNT(city_id) AS 'total_de_ciudades' FROM city GROUP BY country_id HAVING total_de_ciudades > 2;

-- selecciona el pais que tiene mas ciudades
SELECT country_id, COUNT(city_id) AS 'Total_de_ciudades' FROM city GROUP BY country_id ORDER BY Total_de_ciudades DESC LIMIT 1;

-- pelicula con la mayor duración

SELECT title, COUNT(length) AS 'Total_minutos' FROM film group by film_id ORDER BY Total_minutos DESC LIMIT 1;

SELECT * FROM  film ORDER BY  length DESC LIMIT 1;

-- selecciona filme con mayor duracion
SELECT *, MAX(length) from film;

-- obtiene la mayor duración
SELECT MAX(length) FROM film;

-- obtiene menor duración
SELECT MIN(length) from  film;

-- nos permite obtener el promedio
SELECT AVG(length) FROM film;

-- nos permte obtener la suma de los valores de las columnas
-- cuanto cuesta reemplazar el inventario
SELECT SUM(replacement_cost) FROM film;