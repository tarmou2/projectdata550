# Generate the final report
report: final_report.html

final_report.html: final_report.Rmd
    Rscript -e "rmarkdown::render('final_report.Rmd')"

# Restore the package environment
install:
	Rscript -e "renv::restore()"

generate-report:
	docker run -it --rm \
	-v "C:/Users/tania/OneDrive/Documents/projectdata550/projectdata550/data:/project/data" \
	-v "C:/Users/tania/OneDrive/Documents/projectdata550/projectdata550/output:/project/output" \
	tarmou2/projectdata550:latest Rscript -e "rmarkdown::render('/project/output/final_report.Rmd', output_dir = '/project/output')"
