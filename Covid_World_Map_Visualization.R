# Load the required packages
library(ggplot2)
library(mapdata)
library(tidyverse)
library(scales)
library(dplyr)

#Setting the Working Directory
setwd("C:/Users/R Projects")
covid_death <- read.csv("CovidDeaths.csv")


#Bar plotting of total death count in each continent
continental_death_total <- covid_death %>%
  group_by(location) %>%
  filter(date == '10-10-2022' & continent !="" & total_deaths != "") %>%
  summarise(continental_sum = sum(total_deaths))


View(continental_death_total)
#Total Death Per Continent Bar Graph
continental_death_total%>%
  ggplot(aes(x = continent, y = continental_sum))+
  geom_bar(stat = "identity", fill = "#40798C") +
  labs(
    title = "Total Death Per Continent",
    y = "Total Death Count",
    x = "Continent"
  )

continental_death_total


#Bar plotting of total death count in each continent
continental_death_total <- covid_death %>%
  group_by(location) %>%
  filter(date == '10-10-2022' & continent !="" & total_deaths != "") %>%
  summarise(continental_sum = sum(total_deaths))
View(continental_death_total)

#Bar plotting of total death count in each continent
continental_death_total <- covid_death %>%
  group_by(continent) %>%
  filter(date == '10-10-2022' & continent !="" & total_deaths != "") %>%
  summarise(continental_sum = sum(total_deaths))
View(continental_death_total)

#Total Death Per Continent Bar Graph
continental_death_total%>%
  ggplot(aes(x = location, y = continental_sum))+
  geom_bar(stat = "identity", fill = "#40798C") +
  labs(
    title = "Total Death Per Continent",
    y = "Total Death Count",
    x = "Continent"
  )


#Total Death Per Continent Bar Graph
continental_death_total%>%
  ggplot(aes(x = continent, y = continental_sum))+
  geom_bar(stat = "identity", fill = "#40798C") +
  labs(
    title = "Total Death Per Continent",
    y = "Total Death Count",
    x = "Continent"
  )

#Bar plotting of total death count in each continent
continental_death_total <- covid_death %>%
  group_by(continent) %>%
  filter(date == '10-10-2022' & continent !="" & total_deaths != "") %>%
  summarise(continental_sum = sum(total_deaths))

#Bar plotting of total death count in each continent
continental_death_total <- covid_death %>%
  group_by(continent) %>%
  filter(date == '10-10-2022' & continent !="" & total_deaths != "") %>%
  summarise(continental_sum = sum(total_deaths))
continental_death_total

covid_map <- covid_death %>%
  group_by(location) %>%
  filter(date == '10-10-2022' & continent !="") %>%
  mutate(Percentage_Population_Infected =     round((sum(total_cases)/population)*100,2) ) %>%
  select(location, Percentage_Population_Infected) %>%
  rename(region = location)
covid_map
covid_map <- covid_death %>%
  group_by(location) %>%
  filter(date == '10-10-2022' & continent !="") %>%
  mutate(Death_Percentage =round((max(total_deaths)/population)*100,1)) %>%
  select(location, Death_Percentage) %>%
  rename(region = location)
covid_map
mapdata_death <- left_join(mapdata2, covid_map, by ="region")
mapdata2 <- map_data("world")
mapdata_death <- left_join(mapdata2, covid_map, by ="region")
View(mapdata_death)


#****MAP CREATION***
World_Map <- ggplot(mapdata_death, aes(x = long, y = lat, group = group, fill = Death_Percentage)) +
  geom_polygon() +
  scale_fill_gradient(low = "#F4D58D", high = "#BF0603") +
  labs(title = "World Map", x = "Longitude", y = "Latitude") +
  guides(fill = guide_colorbar(barwidth = 0.5, barheight = 10, 
                               title.position = "top", title.hjust = 0.5, 
                               label.position = "left", label.hjust = 1))
  theme_void()

  
  World_Map
