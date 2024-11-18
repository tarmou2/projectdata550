# Project Data 550

This repository contains the code and data for the final project. The project involves analyzing motor vehicle occupant death rates by age and gender across different states in the U.S. for the years 2012 and 2014. 

#Project Overview
The goal of this analysis is to compare the motor vehicle occupant death rates for all ages across different states for the years 2012 and 2014. The analysis generates a table and a bar plot to visualize the trends in these death rates.

#How to Generate the Final Report
To generate the final report, follow these steps:

  Clone this repository:
   ```bash
   git clone https://github.com/tarmou2/projectdata550
   
install.packages(c("ggplot2", "dplyr", "knitr", "readr"))

source("code/table_creation.R")
source("code/figure_creation.R")

rmarkdown::render("output/final_report.Rmd")

