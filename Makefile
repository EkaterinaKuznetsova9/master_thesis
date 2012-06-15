all: russian.pdf arxiv.pdf sdp.pdf random.pdf
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
sdp.pdf: sdp.tex
	pdflatex sdp
	pdflatex sdp
random.pdf: random.tex
	pdflatex random
	pdflatex random
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.pdf *.ps *.dvi 
