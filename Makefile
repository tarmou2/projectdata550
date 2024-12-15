# Generate the final report
report: final_report.html

final_report.html: final_report.Rmd
	Rscript -e "rmarkdown::render('final_report.Rmd')"

# Restore the package environment
install:
	Rscript -e "renv::restore()"

# Generate the final report
generate-report:
	docker build -t tarmou2/projectdata550 .
	docker run -it --rm \
      -v "$(pwd)/data:/project/data" \
      -v "$(pwd)/output:/project/output" \
      -v "$(pwd)/report:/project/report" \
      my-project Rscript -e "rmarkdown::render('final_report.Rmd', output_dir = 'report')"