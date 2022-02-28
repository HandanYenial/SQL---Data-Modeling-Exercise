-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

--CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL, 
  orbits_around INTEGER NOT NULL REFERENCES suns (id)
  galaxy TEXT NOT NULL,
  
);

INSERT INTO planets
  (name, orbital_period_in_years, orbits_around, galaxy, moons)
VALUES
  ('Earth', 1.00,1, 'Milky Way'),
  ('Mars', 1.88, 1, 'Milky Way', '{"Phobos", "Deimos"}'),
  ('Venus', 0.62, 1, 'Milky Way', '{}'),
  ('Neptune', 164.8, 1, 'Milky Way', '{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}'),
  ('Proxima Centauri b', 0.03, 2, 'Milky Way', '{}'),
  ('Gliese 876 b', 0.23, 3, 'Milky Way', '{}');--
  
 CREATE TABLE suns(
 id SERIAL PRIMARY KEY,
 name TEXT NOT NULL,
 );

 
 CREATE TABLE moons(
 id SERIAL PRIMARY KEY,
 name TEXT NOT NULL,
 );
  
-- insert into moons (name) values ('The Moon'),('Phobos'),('Deimos'),(''),(' Naiad'),('Thalassa'),
 
CREATE TABLE planet_moons(--planet has multiple moons
id SERIAL PRIMARY KEY,
planet_id INTEGER NOT NULL REFERENCES planets (id),
moon_id INTEGER NOT NULL REFERENCES moons (id),
);
 
 --INSERT INTO planet_moons(planet_id,moon_id) VALUES (1 , 1),(2,2),(2,3),
 
  
  
