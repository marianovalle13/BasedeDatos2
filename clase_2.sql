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
INSERT actor (first_name, last_name, last_update) VALUES ('mariano', 'valle', '13/10/2018 13:21 p.m');
INSERT actor (first_name, last_name, last_update) VALUES ('cristian', 'mora', '13/09/2018 11:21 p.m');
INSERT film (title, description, release_year, last_update) VALUES ('Mision imposible', 'Un agente especial llamado Ethan debe dar todo de el si desea cumplir su mision.', 2008, '13/10/2018 20:10 p.m');
INSERT film (title, description, release_year, last_update) VALUES ('SAW', 'Jovenes son arrojados a un terrorifico escenario donde deberan cumplir con las reglas de una juego de la muerte', 2001, '13/10/2018 19:00 p.m');
