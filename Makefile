report: final_report.html

final_report.html: final_report.Rmd
    Rscript -e "rmarkdown::render('final_report.Rmd')"