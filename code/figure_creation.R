library(ggplot2)
library(readr)
data <- read.csv("C:/Users/tania/OneDrive/Documents/projectdata550/projectdata550/data/Motor_Vehicle_Occupant_Death_Rate__by_Age_and_Gender__2012___2014__HHS_Region_1_-_Boston_20241007.csv")

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
