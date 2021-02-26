CREATE TABLE netflix_table (
 Title TEXT PRIMARY KEY NOT NULL,
 type TEXT,
 country TEXT,
 date_added TIMESTAMP,
 release_year INT,
 rating TEXT,
 duration TEXT,
 description TEXT,
 IMDb FLOAT,
 Genre TEXT
);

CREATE TABLE ratings_table (
 Title TEXT NOT NULL,
 IMDb INT NOT NULL,
 PRIMARY KEY (Title),
 FOREIGN KEY (Title) REFERENCES netflix_table (Title)
);