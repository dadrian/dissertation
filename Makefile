all: proposal.pdf 

proposal.pdf: proposal.tex proposal/*.tex papers/**/paper/*.tex refs.bib includes/*.tex
	pdflatex proposal
	bibtex proposal
	pdflatex proposal
	pdflatex proposal

.PHONY: open
open: proposal.pdf
	open proposal.pdf

.PHONY: clean
clean:
	rm -f proposal.pdf *.aux *.blg *.bbl *.log *.tmp *.xref *.idv *.4og *.4ct *.lg *.4tc *.out *.toc *.loc *.lof *~
