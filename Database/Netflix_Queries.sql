-- SCHEMA

-- Creating tables from imported data sets

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

-- Creating 2 new tables for TV Shows and Movies that contain ratings and release years

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

-- QUERIES

-- Create query tables based on ratings sorted by release year: 
-- (1) Horrible to Poor (2) Mediocre to Ok (3) Good to Excellent

-- TV Shows that are (1) Horrible to Poor

SELECT COUNT (release_year), Title
INTO tv_shows_1
FROM tv_shows as t
LEFT JOIN ratings as r
ON t.Title = r.Title
WHERE IMDb BETWEEN '0' AND '3'
GROUP BY release_year
ORDER BY release_year;


-- TV Shows that are (2) Mediocre to Ok

SELECT COUNT (release_year), Title
INTO tv_shows_2
FROM tv_shows as t
LEFT JOIN ratings as r
ON t.Title = r.Title
WHERE IMDb BETWEEN '4' AND '6'
GROUP BY release_year
ORDER BY release_year;


-- TV Shows that are (3) Good to Excellent

SELECT COUNT (release_year), Title
INTO tv_shows_3
FROM tv_shows as t
LEFT JOIN ratings as r
ON t.Title = r.Title
WHERE IMDb BETWEEN '7' AND '10'
GROUP BY release_year
ORDER BY release_year;

-- Movies that are (1) Horrible to Poor

SELECT COUNT (release_year), Title
INTO movies_1
FROM movies as m
LEFT JOIN ratings as r
ON m.Title = r.Title
WHERE IMDb BETWEEN '0' AND '3'
GROUP BY release_year
ORDER BY release_year;

-- Movies that are (2) Mediocre to Ok

SELECT COUNT (release_year), Title
INTO movies_2
FROM movies as m
LEFT JOIN ratings as r
ON m.Title = r.Title
WHERE IMDb BETWEEN '4' AND '6'
GROUP BY release_year
ORDER BY release_year;

-- Movies that are (3) Good to Excellent

SELECT COUNT (release_year), Title
INTO movies_3
FROM movies as m
LEFT JOIN ratings as r
ON m.Title = r.Title
WHERE IMDb BETWEEN '7' AND '10'
GROUP BY release_year
ORDER BY release_year;

-- Check the new query tables
SELECT * FROM tv_shows_1
SELECT * FROM tv_shows_2
SELECT * FROM tv_shows_3
SELECT * FROM movies_1
SELECT * FROM movies_2
SELECT * FROM movies_3