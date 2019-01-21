CREATE TABLE movies (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  director_id INTEGER,

  FOREIGN KEY(director_id) REFERENCES director(id)
);

CREATE TABLE directors (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  genre_id INTEGER,

  FOREIGN KEY(genre_id) REFERENCES genre(id)
);

CREATE TABLE genres (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

INSERT INTO
  genres (id, name)
VALUES
  (1, "Horror"),
  (2, "Action"),
  (3, "Comedy"),
  (4, "Drama");

INSERT INTO
  directors (id, name, genre_id)
VALUES
  (1, "Steven Spielber", "Action"),
  (2, "Ava DuVernay", "Drama"),
  (3, "Guillermo del Toro", "Horror");

INSERT INTO
  movies (id, name, director_id)
VALUES
  (1,"Indiana Jones",1),
  (2,"ET",1),
  (3,"The Shape Of Water",3),
  (4,"Selma",2),
  (5,"Hellboy",3),
  (6,"Pans Labyrinth",3);
