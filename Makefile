
PAPER = sonucraporu

TEX = $(wildcard ./*.tex) 

.PHONY: all, clean
all: $(TEX) $(FIGS) 
	pdflatex $(PAPER) 
	pdflatex $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)
bibtex:
	cp /home/calkan/Dropbox/bibliography/calkan.bib ./
clean:
	rm -rf *.dvi *.log *.aux *.bbl *.blg *.pdf

