# Use a base image with R and RMarkdown support
FROM rocker/verse:4.3.1

# Set the working directory
WORKDIR /project

# Copy project files into the container
COPY ./data /project/data

# Install additional R packages if needed
RUN Rscript -e "install.packages(c('tidyverse', 'rmarkdown'))"

# Command to render the report
CMD ["Rscript", "-e", "rmarkdown::render('/project/output/final_report.Rmd', output_dir = '/output')"]
