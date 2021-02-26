# EntertainmentBuster

## Selected topic:
Which TV shows and Movies will have the most growth in the future?

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
Data Cleaning and Analysis: We will utilize SQL and Python to conduct preliminary data cleaning and analysis. SQL will allow us to join tables to show relationships between viewing data and movie/tv data. For example, we could look at the number of viewers in comparison to a certain genre amongst the select programs we look at. Python will be utilized to clean the data and conduct analyses. 
Database Storage: We will utilize Jupyter Notebook to maintain our database. The libraries we will utilize include Pandas, HVPlot, Path, Plotly,Matplotlib, Tensorflow, Sklear, Json, Numpy, Re, SQLalchemy, Config, and Time. 
Machine Learning: We will utilize Python to develop our supervised machine learning model to predict, based on past viewing trends for certain genres, which shows of said genres will be popular in the future. 
Dashboard: Tableau will be used to display our findings. We envision that we will have charts displaying the popularity of shows in comparison to key viewer demographics such as age and gender. 

# EntertainmentBusters

## Machine Learning Model: Logistic Regression

<p align="center"><img src="https://github.com/asosnik530/EntertainmentBuster/blob/triangle_seg_1/Images/Machine%20Learning%20Model%20Diagram.png?raw=true" height = "500" width="700"></p>

1. Which model did you choose and why?
- We will be using the supervised learning logistic regression classification model, which will help us determine which Netflix TV shows and movies will be likely to grow in popularity. This model predicts binary outcomes based on multiple variables; therefore, it is a perfect fit for our dataset. We will be predicting the binary outcome of whether or not the Netflix program is likely to have positive growth based on multiple variables like IMDb ratings, genre, release years, country, content rating, and date added. 

2. How does this model work?
- We will be setting up our model by splitting the dataset into training and test sets using train_test_split from Scikit-learn's model selection which takes X and y as arguments to split the data. Splitting the dataset allows us to train the model on a portion of our data and then set aside the remaining portion of the dataset to evaluate our model. Our features (X) will be the input variables 'country', 'date_added', 'release_year', 'rating', 'duration','description', 'IMDb', and 'Genre'. Our target (y) will be the "Growth Outcome" column that will have a '0' for no growth and '1' for positive growth. In setting up our splitting function, we will specify a random state of 1 to assign the same rows to train and test sets respectively that will ensure we can obtain the results again if necessary. Since there is likely a class imbalance, we will also stratify the dataset to divide it proportionally among each classification. We will end up with 4 sets in total: X_train, X_test, y_train, and y_test. After instantiating the classifier model, we will use the fit() method to train the model. Next we will create predictions to validate the model by using the predict() method based on X_test and creating a dataframe of predicted values and actual values. It is then important for us to assess the performance of our model by using accuracy score function on our new dataframe and y_test values that will tell us how well our model is predicting the data. 

3. What is the model's accuracy?
- After running the test data, our model achieved an accuracy score of 1. 

## PostgreSQL

**This segment shows a PostgreSQL database housing a cleaned dataset showcasing information about TV shows and movies on the popular streaming service: Netflix.**

**The image below shows the "netflix_table" in the "netflix_db" database:**

![image1](resources/image1.png?raw=true "Title")

**The image below shows the "ratings_table" in the "netflix_db" database:**

![image2](resources/image2.png?raw=true "Title")

The schema for this PostgreSQL database can be viewed in this repository as "netflix_ERD.sql" file. 

![image4](resources/image4.PNG?raw=true "Title")

The datasets were cleaned and merged in Pandas to create a working dataframe and then a PostgreSQL connection string was connected to our "netflix_db" database. Upon establishing a connection, the dataframes were exported to PostgreSQL to be made as tables.

The following dependencies were used to aid in the PostgreSQL integration from Jupyter Notebook:


![image3](resources/image3.PNG?raw=true "Title")

