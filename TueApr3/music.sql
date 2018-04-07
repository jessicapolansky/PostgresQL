CREATE TABLE artist (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR
  );

CREATE TABLE song (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR
);

CREATE TABLE album (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR,
  year INTEGER
  );

CREATE TABLE track (
  id SERIAL NOT NULL PRIMARY KEY,
  duration NUMERIC,
  album_id INTEGER
);

CREATE TABLE songwriter (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR
);

CREATE TABLE written_by (
  id SERIAL NOT NULL PRIMARY KEY,
  songwriter_id INTEGER REFERENCES songwriter (id),
  song_id INTEGER REFERENCES song (id)
);

CREATE TABLE appears_on (
  id SERIAL NOT NULL PRIMARY KEY,
  artist_id INTEGER REFERENCES artist (id),
  album_id INTEGER REFERENCES album (id)
);

CREATE TABLE performed_by (
  id SERIAL NOT NULL PRIMARY KEY,
  artist_id INTEGER REFERENCES artist (id),
  song_id INTEGER REFERENCES song (id)
);

CREATE TABLE song_album (
  id SERIAL NOT NULL PRIMARY KEY,
  song_id INTEGER REFERENCES song (id),
  album_id INTEGER REFERENCES album (id)
  );