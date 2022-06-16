library(tidyverse)
library(skimr)

life_ex <- read_csv("Life_Expectancy_Data.csv")
whr_data <- read_csv("2016_WHR_data.csv")

full_j <- full_join(life_ex, whr_data, by = c("Country" = "country", "Year" = "year"))
inner_j <- inner_join(life_ex, whr_data, by = c("Country" = "country", "Year" = "year"))
whr_j <- right_join(life_ex, whr_data, by = c("Country" = "country", "Year" = "year"))
life_j <- left_join(life_ex, whr_data, by = c("Country" = "country", "Year" = "year"))
anti_j <- anti_join(life_ex, whr_data, by = c("Country" = "country", "Year" = "year"))

glimpse(inner_j)
skim(inner_j)

df <- inner_j

df %>% 
  filter(`Life Ladder` == max(`Life Ladder`))



