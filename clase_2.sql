--CLASE 2
CREATE DATABASE IF NOT EXISTS imdb CHARACTER SET = 'utf8';
USE imdb;
CREATE TABLE IF NOT EXISTS film (film_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, title VARCHAR(30) NOT NULL, description VARCHAR(200) NOT NULL, release_year YEAR NOT NULL);
CREATE TABLE IF NOT EXISTS actor (actor_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, first_name VARCHAR(20) NOT NULL, last_name VARCHAR(20) NOT NULL);
CREATE TABLE IF NOT EXISTS film_actor (actor_id INT NOT NULL, film_id INT NOT NULL);
ALTER TABLE film ADD COLUMN (last_update VARCHAR(30) NOT NULL);
ALTER TABLE actor ADD COLUMN (last_update VARCHAR(30) NOT NULL);
ALTER TABLE film_actor ADD CONSTRAINT film_fk FOREIGN KEY (film_id) REFERENCES film (film_id) ON DELETE CASCADE;
ALTER TABLE film_actor ADD CONSTRAINT actor_fk FOREIGN KEY (actor_id) REFERENCES actor (actor_id) ON DELETE CASCADE;
INSERT actor (first_name, last_name, last_update) VALUES ('Javier', 'Guignard', '03/26/2018 19:28 p.m');
INSERT actor (first_name, last_name, last_update) VALUES ('Alexis', 'Ferrucci', '03/26/2018 19:28 p.m');
INSERT film (title, description, release_year, last_update) VALUES ('El Picante', 'Un hombre al que le gusta tomar mate en el laburo y que se enfrenta a 29 alumnos cabezas de pescado.', 2015, '03/26/2018 19:29 p.m');
INSERT film (title, description, release_year, last_update) VALUES ('El Picante 2', 'El cerebro de la informatica, aclamado por los Dioses en busca del conocimiento.', 2018, '03/26/2018 19:30 p.m');
