netflix_titles
-
Title VARCHAR pk
type VARCHAR
country VARCHAR
date_added date
release_year INT
rating VARCHAR
description VARCHAR
IMDb INT
Genre VARCHAR

ratings
-
Title VARCHAR pk FK >- netflix_titles.Title
IMDb INT

tv_shows
-
Title VARCHAR pk FK >- netflix_titles.Title
IMDb INT
release_year INT

movies
-
Title VARCHAR pk FK >- netflix_titles.Title
IMDb INT
release_year INT