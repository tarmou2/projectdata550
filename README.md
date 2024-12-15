# Project Overview

This project involves analyzing motor vehicle occupant death rates by age and gender across different states in the U.S. for the years 2012 and 2014. The goal is to compare death rates across all ages, and the analysis generates a table and a bar plot to visualize trends in these death rates.

# Data Description

The data for this project is stored in the `data/` folder. It contains motor vehicle occupant death rates by state for the years 2012 and 2014.
The data is used to generate a table comparing the death rates for all ages between 2012 and 2014, as well as a bar plot visualizing these trends across the states.

# Code Description

`code/table_creation.R`
- generates table1
- table1 includes motor vehicle occupant death rates for all ages for 2012 and 2014 by state
- saves table as a `.csv` object in the `code/` folder

`code/figure_creation.R`
- generates fig1
- reads data and uses `ggplot2` to create a bar plot comparing death rates by state for 2012 and 2014
- fig1 is the bar plot of motor vehicle death rates by state for 2012 vs. 2014
- saves figure as a `.png` object in the `code/` folder

# Setting up the Environment

To install the required R packages for this project, you can use `renv`. Follow these steps:

1. Clone the repository:
```
   git clone https://github.com/tarmou2/projectdata550.git
   cd projectdata550
```
2. Set up the environment using renv:
```
make install
```
# Generate Table and Figure
```
Rscript code/table_creation.R
Rscript code/figure_creation.R
rmarkdown::render("output/final_report.Rmd")

```

# To Restore
To restore the environment and synchronize the required packages:
```
make install
renv::restore()
```
# Build the Docker Image
This will create a Docker image named tarmou2/projectdata550 based on the instructions in the Dockerfile.
To build the Docker image, run:
```
docker build -t tarmou2/projectdata550 .
```

Link to DockerHub
The Docker image for this project:
https://hub.docker.com/r/tarmou2/projectdata550

# Generating the Report
This command mounts the data, output, and report directories to the container, runs the Docker image, and executes the R script to generate the final report in the report directory.
To generate the report, run:
```
docker run -it --rm \
  -v "$(pwd)/data:/project/data" \
  -v "$(pwd)/output:/project/output" \
  -v "$(pwd)/report:/project/report" \
  tarmou2/projectdata550:latest Rscript -e "rmarkdown::render('/project/output/final_report.Rmd', output_dir = '/project/report')"

```
After running this command, the final report will be available in the `report` directory.