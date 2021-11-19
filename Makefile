submission/presentation.html : submission/presentation.rmd\
	submission/styles.css\
	figures/microsimulation.png\
	figures/result_base.png\
	figures/sample_size.png\
	figures/cross_validation_folds.png
	R -e 'rmarkdown::render("submission/presentation.rmd", output_format = "all")'
