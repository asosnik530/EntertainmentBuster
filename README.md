# EntertainmentBuster

Segment 3 Role Breakdowns:
 - Andie Sosnik: Triangle
 - Caroline O’Connell: X
 - Stacy Chandisingh: Circle
 - Paromita De: Square


## Google Slides Presentation:

 - https://docs.google.com/presentation/d/1S1ZgQjKXm1rrYEpqQBf11-dbEdKso4bpcEN2l2_Oy-8/edit?usp=sharing

## Selected topic:
Which Netflix TV shows and Movies will have the most growth in the future?

## Why we selected this topic:
Our group noticed that we all have increased our use of Netflix over the past few years. As we discussed shows that suddenly became popular on Netflix, we started to ask what shows/movies would become the next hit? As a group, we thought it would be interesting to try and identify what show or movie would have the most growth in the future.

## Description of their source of data:
We will be using three sources of data to predict which TV Shows and Movies will grow the most in the future. We will be using three datasets from Kaggle. One of the datasets, "netflix-shows" provides the TV Shows and Movies on Netflix, details regarding the Country it was produced in, date it was added to Netflix, release year and duration. The additional two datasets from Kaggle provide the movies and TV Shows that are currently on Netflix, Prime Video, Hulu and Disney+, their IMDB ratings and genre. For these two datasets, we will be cleaning them up to only show the Shows/Movies available on Netflix. Once we have cleaned up both of these datasets, we will merge it with our netflix-shows dataset so that we can have one dataframe with each show/movie, their genre, IMDB rating, and the underlying details about each program from the netflix-shows dataset.
Sources of data: https://www.kaggle.com/ruchi798/movies-on-netflix-prime-video-hulu-and-disney, https://www.kaggle.com/ruchi798/tv-shows-on-netflix-prime-video-hulu-and-disney, https://www.kaggle.com/shivamb/netflix-shows

## Questions they hope to answer with the data:
We hope to identify whether a show or movie will become popular in the future? Is the program on Netflix? Which genres have the highest IMDB rating? Once we have identified shows that have the highest potential to grow, we want to look at the underlying information like which country it was produced in, what date it was added to Netflix and what was the release year

## Description of the communication protocols :
Our team will communicate via slack. We have also discussed the times that work best for us if we need to connect additionally outside of class hours.

## Technologies Used
 - Data Cleaning and Analysis: We will utilize Python to conduct preliminary data cleaning and analysis. SQL will allow us to join tables to calculate ratings averages across genres. 
 - Database Storage: We will utilize Jupyter Notebook to maintain our database. The libraries we will utilize include Pandas, HVPlot, Path, Plotly,Matplotlib, Tensorflow, Sklear, Json, Numpy, Re, SQLalchemy, Config, and Time. 
 - Machine Learning: We will utilize Python to develop our supervised machine learning model to predict, based on past viewing trends for certain genres, which shows of said genres will be popular in the future. 
 - Dashboard: Several software will be used to display our findings. We envision that we will have charts displaying the popularity of shows in comparison to key viewer demographics such as age and gender. 


## Machine Learning Model: Logistic Regression

![image1](resources/ml_diagram.png?raw=true "Title")

 - Data Pre-Processing: For our preprocessing, we first examined the available data. The data available to us included several csv files from Kaggle that contained information on Netflix tv shows and movies, such as title, date released, country that produced the program, IMDB ratings, and genre. The data was cleaned and joined the data to ensure that all listings were Netflix programs and had country names and IMDB ratings as part of their listings, plus other relevant information. Additionally, the data cleaning included modifying the country column (only including one country name for programs that originally listed multiple producing countries) and genre column (combining similar genres under a specific genre). 
 
 - Feature Engineering and Feature Processing: For our machine learning model we imported the following dependencies to conduct our model: matplotlib, pandas, sklearn(train_test_split, LogisticRegression, accuracy_score, StandardScaler, OneHotEncoder), numpy, and path. We determined our independent variables to be genre, duration, IMDB rating, average rating per genre, release year, and producing country. Our dependent variable is the “Growth Outcome”, where ‘0’ equates to no growth and ‘1’ equates to positive growth. There were several steps to creating the initial Growth Outcome variable. First, we calculated the average rating for a program by genre. Then, once, we saw that the highest average rating was 7.41 for the ‘Crime’ genre, we decided to use 7.41 as a benchmark for growth in ratings. Finally, we calculated the Growth Outcome for each program, where any program that had an average rating equal to or greater than 7.41 received a mark of ‘1’ as a positive growth outcome, and any program receiving an average rating of less than 7.41 received a ‘0’ mark as no growth outcome. Further, we encoded the titles to give them a numerical value for our model. This completed our work on our initial data file to be run in our machine learning model. However, there was a concern about potential multicollinearity since the average genre ratings and genre were both independent variables. To reduce this potential multicollinearity, we calculated average ratings for producing country and release year as well. We then calculated a combined average rating from all of these ratings. We also dropped the average rating for genre from our independent variables. The lowest average combined rating for a listing was 5.33, and the highest average combined rating was 7.53. , We decided to use 6.5 as our new benchmark for the Growth Outcome. Our current machine learning model is based on this most recent modification.


 - Training and Testing Processes, and Accuracy Score: We instantiated our logistic regression supervised machine learning model with the following conditions:’solver = lbfgs, random_state = 1, max_iter = 200’. Training occurred with 2,918 listings and testing occurred with 5,720 listings. With our initial machine learning model with a Growth Outcome benchmark of 7.41, after training the model with 2,918 listings and testing the model with 5,720 listings, our model’s accuracy score was calculated to be approximately .998972. With the update to the Growth Outcome calculations we made, our model’s current accuracy score is approximately .854.
 
 - Limitations and Benefits of Model Choice:We considered the possibility that our machine learning model could be an unsupervised machine learning model, if our growth in ratings variable would be continuous and non-labeled. However, considering the way we further envisioned this growth variable (to be categorical), we decided to go with a supervised machine learning model using logistic regression.

 - Updates on Changes in Our Model (from Segment 2 to Segment 3): To further validate the model, we tested the model on a trial dataset five additional Netflix programs from different genres: “Bridgerton”, “Queer Eye”, “Extraction”, “Molly’s Game”, and “Emily in Paris”. The purpose of this validation was to see if what would our model would predict to have “positive growth” or “no growth”. The model predicted all programs except “Extraction” and “Emily in Paris” to have “positive growth”. 

![image1](resources/table.png?raw=true "Title")

<iframe src="https://giphy.com/embed/4CjqVUPIfyAwnG5VCE" width="480" height="269" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/4CjqVUPIfyAwnG5VCE">via GIPHY</a></p>

https://media.giphy.com/media/4CjqVUPIfyAwnG5VCE/giphy.gif

 - How can this model be finetuned? This model could be finetuned in a number of ways. First, we could consider modifying the date added data. Given that Netflix viewing has undoubtedly increased in the past year due to COVID, we could see how the model fares with programs released before 2020 and programs released after 2020. Also, we could also reconsider which independent variables are included in the machine learning model based on seeing how the current model fares with other streaming programming such as Disney+ and Hulu. Finally, if we had access to user demographics for the viewers, we could further predict if a show would have positive growth or not based on additional variables such as viewer age, gender, and number of years subscribing to the streaming service. 


## Database

 - A SQL database has been created using Pandas and Postgres with pgAdmin 4. Our database folder within the repo contains the files that created the database connection which stores our static data and connects to the model. Using SQL, 8 new tables were created from the 2 original csv files. These tables were created as a query to show a breakdown of Netflix TV shows and movies based on their ratings and release year. The tables were made using a left join. Each set of TV shows and movies were categorized into 3 subsets based on ratings and then sorted and grouped by release years. Below is an example of the 1st set of TV shows in category 1 and the categories were as follows: 

1. Horrible to Poor: ratings between 0/10 to 3/10
2. Mediocre to Ok: ratings between 4/10 to 6/10
3. Good to Excellent: ratings between 7/10 to 10/10

![image1](resources/tv_shows_1.png?raw=true "Title")

 - The file named “Netflix_Queries.sql” shows the queries used in pgAdmin 4 to create all tables. After all tables were created, they were exported as csv files and saved in the “Data Files” folder for further analysis and visualizations. We also created a connection string using SQLAlchemy to run a query on popular titles based on ratings and genre. The file named “Netflix_Database_Connection.ibynb” shows a breakdown of the connection string. Below is a breakdown of our ERD relationships for our SQL database.

![image1](resources/ERD_Relationships.png?raw=true "Title")

## Visualizations

Link to dashboard blueprint on google slides: 
- https://docs.google.com/presentation/d/1dMSXbWPZI7iQ7lK7niY1OKjWJ9ewC3vSaB6phdXrjt0/edit#slide=id.p

Link to tableau dashboards with visualizations: 
- Public Dashboard #1: https://public.tableau.com/profile/stacy.chandisingh#!/vizhome/NetViz/Story2?publish=yes


