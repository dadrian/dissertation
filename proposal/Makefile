all: proposal.pdf

proposal.pdf: *.bib *.tex
	pdflatex proposal
	bibtex refs
	pdflatex proposal
	pdflatex proposal

open: proposal.pdf
	open proposal.pdf

.PHONY: clean
clean:
	rm -f proposal.pdf *.aux *.blg *.bbl *.log *.tmp *.xref *.idv *.4og *.4ct *.lg *.4tc *.out *~
