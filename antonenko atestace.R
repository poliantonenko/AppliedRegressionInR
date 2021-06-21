library(tidyverse)

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


movies %>%
  ggplot(aes(x= binary))+
  geom_bar()

movies %>%
  ggplot(aes(x= rated, fill= binary))+
  geom_bar(position = "dodge")

movies %>%
  ggplot(aes(x=year, fill = binary))+
  geom_bar(position = "stack")

movies %>% 
  ggplot(aes(x= imdb_rating))+
  geom_histogram()
