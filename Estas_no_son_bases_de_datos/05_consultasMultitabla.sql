-- cuando se consuta 2 o mas tablas se combinan todas las columnas de una tabla con todas las columnas de la otra
SELECT * FROM category, language;

-- inner join: tola la interseccion de 2 campos
SELECT city_id, city, country FROM city INNER JOIN country ON city.country_id = country.country_id ORDER BY city_id ASC;

SELECT * FROM country, city;

-- selecciona el nombre del pais, el nombre de la ciudad y la direccion
SELECT country, city, address FROM country
INNER JOIN city ON country.country_id = city.country_id
INNER JOIN address ON city.city_id = address.city_id;

SELECT CONCAT(first_name, ' ', last_name) AS 'Name', title, description FROM film_text
INNER JOIN film_actor ON film_actor.film_id = film_text.film_id
INNER JOIN actor ON film_actor.actor_id = actor.actor_id;