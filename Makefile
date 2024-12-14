# Generate the final report
report: report/final_report.html

report/final_report.html: final_report.Rmd
	mkdir -p report
	Rscript -e "rmarkdown::render('final_report.Rmd', output_file = 'report/final_report.html')"

# Restore the package environment
install:
	Rscript -e "if (!requireNamespace('renv', quietly = TRUE)) install.packages('renv'); renv::restore()"

# Build the Docker image
docker-build:
	docker build -t tarmou2/projectdata550 .

# Generate the report with Docker
generate-report:
	mkdir -p report
	docker run --rm -v "$(pwd):/project" tarmou2/projectdata550 Rscript -e "renv::restore()"
