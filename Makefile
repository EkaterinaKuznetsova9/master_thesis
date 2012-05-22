all: russian.pdf arxiv.pdf
russian.pdf: russian.tex ../bibtex/ir.bib
	pdflatex russian
	bibtex russian
	pdflatex russian
	pdflatex russian
arxiv.pdf: arxiv.tex ../bibtex/ir.bib
	pdflatex arxiv
	bibtex arxiv
	pdflatex arxiv
	pdflatex arxiv
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.pdf 
