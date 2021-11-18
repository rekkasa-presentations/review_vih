submission/presentation.html : submission/presentation.rmd\
	submission/styles.css\
	figures/microsimulation.png
	R -e 'rmarkdown::render("submission/presentation.rmd", output_format = "all")'
