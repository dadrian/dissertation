all: proposal.pdf 

proposal.pdf: proposal/proposal.tex papers/**/paper/*.tex refs.bib
	pdflatex proposal/proposal
	bibtex proposal
	pdflatex proposal/proposal
	pdflatex proposal/proposal

.PHONY: open
open: proposal.pdf
	open proposal.pdf

.PHONY: clean
clean:
	rm -f proposal.pdf *.aux *.blg *.bbl *.log *.tmp *.xref *.idv *.4og *.4ct *.lg *.4tc *.out *.toc *.loc *.lof *~
