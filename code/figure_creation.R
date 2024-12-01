library(ggplot2)
library(readr)
getwd()
setwd("C:/Users/tania/OneDrive/Documents/projectdata550/projectdata550")
data <- read.csv("data/Motor_Vehicle_Occupant_Death_Rate__by_Age_and_Gender__2012___2014__HHS_Region_1_-_Boston_20241007.csv")
library(here)
here()
data <- read.csv(here("data", "Motor_Vehicle_Occupant_Death_Rate__by_Age_and_Gender__2012___2014__HHS_Region_1_-_Boston_20241007.csv"))

str(data)      
head(data)     
summary(data)  

ggplot(data, aes(x = State)) +
  geom_bar(aes(y = All.Ages..2012, fill = "2012"), stat = "identity", position = "dodge") +
  geom_bar(aes(y = All.Ages..2014, fill = "2014"), stat = "identity", position = "dodge") +
  labs(
    title = "Motor Vehicle Death Rates by State (2012 vs. 2014)",
    x = "State",
    y = "Death Rate",
    fill = "Year"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
