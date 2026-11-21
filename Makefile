all: main.pdf

main.pdf: main.tex chapters/*.tex *.bib images/*
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

clean:
	rm -f main.aux main.bbl main.blg main.fdb_latexmk main.fls \
	      main.lof main.log main.lot main.out main.toc main.synctex.gz
