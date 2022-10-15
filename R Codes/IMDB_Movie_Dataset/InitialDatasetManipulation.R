# Movie Ratings Dataset Join test
getwd()

movies <- data.frame(read.csv("movies.csv"))
ratings <- data.frame(read.csv("ratings.csv"))
movie_ratings <- merge(x = movies, y = ratings, by = 'movieId', all.y = TRUE)

# Null checks
max(is.na(movie_ratings))

# Splitting the Genres into unique rows
# install.packages('magrittr') - for pipe operator
# install.packages('tidyverse') - to create unique rows
library(magrittr)
library(tidyverse)
movie_ratings <- movie_ratings %>% separate_rows(genres)
movies <- movies %>% separate_rows(genres)
unique(movies$genres)
  

