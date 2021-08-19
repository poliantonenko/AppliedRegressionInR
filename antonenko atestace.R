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

#PLOTS
#dependent
sum(is.na(movies$metascore))

meta_h <- 
  movies %>% 
  filter(!is.na(metascore)) %>%
  ggplot(aes(x=metascore)) +
  geom_histogram(color = "white")

meta_b <-
  movies %>% 
  filter(!is.na(metascore)) %>% 
  ggplot(aes(y=metascore)) +
  geom_boxplot()

meta_p <-
  movies %>% 
  filter(!is.na(metascore)) %>%
  ggplot(aes(y=metascore, x=seq_along(metascore)))+
  geom_point()+
  labs(x="row numbers")

meta_h+meta_b+meta_p


#main independent
sum(is.na(movies$budget_2013))#no missings

movies %>% 
  ggplot(aes(x=budget_2013))+
  geom_histogram()

movies %>%
  filter(!is.na(metascore)) %>%
  ggplot(aes(y=metascore, x= budget_2013))+
  geom_point()+
  geom_smooth()  

#other independent
#year
sum(is.na(movies$year))#no missings

movies %>% 
  ggplot(aes(x= year))+
  geom_bar()

movies %>% 
  ggplot(aes(y= metascore, x= year))+
  geom_point()

#rated
sum(is.na(movies$rated))

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
  ggplot(aes(x=rated))+
  geom_bar()

movies %>% 
  filter(!is.na(metascore)) %>% 
  ggplot(aes(x= rated, y= metascore))+
  geom_boxplot()

#runtime
movies$runtime2 <- as.numeric(gsub(' min', '', movies$runtime))

sum(is.na(movies$runtime2))

movies %>% 
  filter(!is.na(runtime2)) %>% 
  ggplot(aes(x= runtime2))+
  geom_histogram(stat="count")

movies %>% 
  filter(!is.na(runtime2)) %>% 
  filter(!is.na(metascore)) %>% 
  ggplot(aes(x=metascore, y= runtime2))+
  geom_point()

#binary
sum(is.na(movies$binary))#no missings

movies %>% 
  ggplot(aes(x= binary))+
  geom_bar()

movies %>% 
  filter(!is.na(metascore)) %>% 
  ggplot(aes(x= binary,y = metascore))+
  geom_boxplot()
  