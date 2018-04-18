--CLASE 4
USE sakila;
SELECT title, special_features FROM film WHERE rating = "PG-13";

SELECT DISTINCT length FROM film;

SELECT title, rental_rate, replacement_cost FROM film WHERE replacement_cost BETWEEN 20 AND 24;

SELECT film.title, category.name, film.rating FROM film, film_category, category WHERE film.film_id = film_category.film_id AND film_category.category_id = category.category_id AND film.special_features = "Behind the Scenes";

SELECT first_name, last_name from actor, film, film_actor WHERE actor.actor_id = film_actor.actor_id AND film_actor.film_id = film.film_id AND film.title = "ZOOLANDER FICTION";

SELECT address.address, city.city, country.country FROM store, address, city, country WHERE store.address_id = address.address_id AND address.city_id = city.city_id AND city.country_id = country.country_id AND store.store_id = 1;

SELECT film1.title, film1.rating, film2.title, film2.rating FROM film film1, film film2 WHERE film1.rating = film2.rating;

SELECT DISTINCT film.title, staff.first_name, staff.last_name FROM staff, store, inventory, film WHERE staff.store_id = store.store_id AND store.store_id = inventory.store_id AND inventory.film_id = film.film_id;
