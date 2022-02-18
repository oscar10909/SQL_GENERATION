/*
where nos permite obtener valores a traves de un campo expecífico
*/

SELECT * FROM actor;
/*
Operadores de comparación
OPERADORES DE COMPARACION:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/
SELECT * FROM actor WHERE first_name = 'Penelope';

-- selecciona de la tabla actor todas las personas que no se llamen Penelope

SELECT * FROM actor WHERE first_name != 'Penelope';

SELECT * FROM film WHERE film_id > 50;

SELECT * FROM film WHERE film_id < 50;

-- todos los clientes con id pares
SELECT * FROM customer WHERE customer_id % 2 = 0;

-- peliculas cuyo rental rate
SELECT * FROM film WHERE rental_rate = 2.99 AND rating = 'PG-13';

SELECT * FROM actor WHERE first_name LIKE 'tom';
SELECT * FROM actor WHERE first_name LIKE '%e';
SELECT * FROM actor WHERE first_name LIKE 'an%';

SELECT * FROM actor WHERE last_name LIKE '%lso%';

SELECT * FROM actor WHERE first_name LIKE 'b%' OR last_name LIKE 'b%';

-- personas cuyo first_name contenga k y r
SELECT * FROM actor WHERE first_name LIKE '%k_r%';