-- Creating tables from data sets

CREATE TABLE netflix_titles (
 Title VARCHAR PRIMARY KEY NOT NULL,
 type VARCHAR,
 country VARCHAR,
 date_added date,
 release_year INT,
 rating VARCHAR,
 description VARCHAR,
 IMDb FLOAT,
 Genre VARCHAR
);

CREATE TABLE ratings (
 Title VARCHAR NOT NULL,
 IMDb INT NOT NULL,
 PRIMARY KEY (Title),
 FOREIGN KEY (Title) REFERENCES titles (Title)
);

-- Making sure the tables imported correctly
SELECT * FROM netflix_titles;
SELECT * FROM ratings;

-- Creating 2 new tables for TV Shows and Movies that contain ratings and release year

SELECT Title, IMDb, release_year
INTO tv_shows
FROM netflix_titles
WHERE type IS 'TV Show';

SELECT Title, IMDb, release_year
INTO movies
FROM netflix_titles
WHERE type IS 'Movie';

-- Check the tables
SELECT * FROM tv_shows;
SELECT * FROM movies;