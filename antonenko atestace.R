---
  title: "Applied regression in R assignment"
  author: "Polina Antonenko"
---

#LIBRARIES:

library(tidyverse)
library(ggeffects)
install.packages("patchwork")
library(patchwork)

options(scipen = 999)

#DATA IMPORT

movies <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-03-09/movies.csv')

movies <- movies %>% 
  mutate(rated= as.factor(rated))

movies<-movies %>%
  mutate(rated = replace(rated, rated =="N/A", NA)) %>% 
  mutate(rated = fct_collapse(rated, "NR"= c("Not Rated","Unrated"))) %>%
  mutate(rated = replace(rated, rated == "NR", NA)) %>% 
  mutate(rated= fct_collapse(rated, "NC-17"= c("NC-17", "X"))) %>% 
  mutate(rated= fct_collapse(rated, "PG"= c("PG", "TV-PG"))) %>% 
  mutate(rated= fct_collapse(rated, "PG-13"= c("PG-13", "TV-14")))

#PLOTS
movies %>%
  ggplot(aes(x= binary))+
  geom_bar()+
  theme_minimal()

movies %>%
  ggplot(aes(x= rated, fill= binary))+
  geom_bar(position = "dodge")+
  theme_minimal()

movies %>%
  ggplot(aes(x=year, fill = binary))+
  geom_bar(position = "stack")+
  theme_minimal()

movies %>% 
  ggplot(aes(x= imdb_rating))+
  geom_histogram()+
  theme_minimal()

movies<- movies %>%
  mutate(binary= as.factor(binary))

movies$binary = as.numeric(movies$binary)

mod1 =lm(binary~ year+imdb_rating+metascore+rated+budget_2013, data=movies)
is.numeric(movies$year)
summary(mod1)
