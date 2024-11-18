library(dplyr)
library(knitr)
library(readr)
getwd()

data <- read.csv("C:/Users/tania/OneDrive/Documents/projectdata550/projectdata550/data/Motor_Vehicle_Occupant_Death_Rate__by_Age_and_Gender__2012___2014__HHS_Region_1_-_Boston_20241007.csv")

table_data <- data %>%
  select(State, All.Ages..2012, All.Ages..2014)

kable(
  table_data,
  caption = "Motor Vehicle Occupant Death Rates for All Ages (2012 vs. 2014)",
  col.names = c("State", "Death Rate (2012)", "Death Rate (2014)"),
  digits = 2
)
