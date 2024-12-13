# Generate the final report
report: report/final_report.html

report/final_report.html: final_report.Rmd
	<TAB>Rscript -e "rmarkdown::render('final_report.Rmd', output_file = 'report/final_report.html')"

# Restore the package environment
install:
	<TAB>Rscript -e "renv::restore()"

# Generate report with Docker
generate-report:
	mkdir -p report
	docker run -it --rm \
    -v "$(pwd)/data:/project/data" \
    -v "$(pwd)/report:/project/report" \
    tarmou2/projectdata550:latest ls /project
