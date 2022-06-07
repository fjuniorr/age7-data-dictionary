.PHONY: build

build: docs/index.html

docs/index.html: datapackage.Rmd datapackage.json
	Rscript -e 'rmarkdown::render("datapackage.Rmd", output_file = "index.html", output_dir = "docs")'
