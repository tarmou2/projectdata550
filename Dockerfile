# Use a base image with R and RMarkdown support
FROM rocker/verse:4.3.1

# Set the working directory within the container
WORKDIR /project

# Copy project files into the container
COPY output/final_report.Rmd /project/

# Install additional R packages if needed (e.g., tidyverse, rmarkdown)
RUN Rscript -e "install.packages(c('tidyverse', 'rmarkdown'))"

# Command to render the report
CMD ["Rscript", "-e", "rmarkdown::render('final_report.Rmd', output_dir = 'report')"]