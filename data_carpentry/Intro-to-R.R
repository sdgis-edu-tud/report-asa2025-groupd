install.packages("here")
install.packages("tidyverse")
# install.packages('here')
# install.packages('tidyverse')
library(tidyverse)
library(here)
# Download the data
download.file(
  "https://bit.ly/geospatial_data",
  here("data", "gapminder_data.csv")
)
numeric_vector <- c(2, 6, 3)
character_vector <- c('Amsterdam', "'s Gravenhage", 'Delft')
str(character_vector)
logical_vector <- c(TRUE, FALSE, TRUE)
str(logical_vector)
ab_vector <- c('a', 'b')
abcd_vector <- c(ab_vector, 'c', 'd')
combined_vector <- c(abcd_vector, numeric_vector)
with_na <- c(1, 2, 1, 1, NA, 3, NA )
mean(with_na)
mean(with_na, na.rm = T) 
is.na(with_na)
sum(is.na(with_na))
!is.na(with_na)
sum(!is.na(with_na))
without_na <- with_na[!is.na(with_na)]
nordic_str <- c('Norway', 'Sweden', 'Norway', 'Denmark', 'Sweden')
nordic_cat <- factor(nordic_str)
nordic_cat
str(nordic_cat)
levels(nordic_cat)
nlevels(nordic_cat)
nordic_cat <- factor(
  nordic_cat,
  levels = c(
    "Norway",
    "Denmark",
    "Sweden" )
  )
gapminder <- read.csv("data/gapminder_data.csv")
str(gapminder)
head(gapminder)
summary(gapminder)
nrow(gapminder)
ncol(gapminder)
country_vec <- gapminder$country
head(country_vec)
# install.packages(dplyr)
year_country_gdp <- select(gapminder, year, country, gdpPercap)
head(year_country_gdp)
year_country_gdp <- gapminder %>%
  select(year, country, gdpPercap)
head(year_country_gdp)
year_country_gdp_euro <- gapminder %>%
  filter(continent != "Europe" & year >= 2000) %>%
  select(year, country, gdpPercap)
head(year_country_gdp_euro)
year_lifeExp_continent <- gapminder %/%
  filter(continent == "Europe" | continent == "Asia") %>%
  select(year, country, lifeExp)

