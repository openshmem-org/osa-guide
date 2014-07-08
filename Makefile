VERSION = 1.0

MAIN = osa

SOURCES = $(wildcard *.tex) osa.bib

TARGET = $(MAIN)-$(VERSION).pdf

.PHONY: all clean tidy

$(TARGET):	$(MAIN).pdf
	mv -f $^ $@

%.pdf:	%.tex osa.bib
	$(MAKE) clean
	pdflatex $(MAIN)
	- bibtex $(MAIN)
	pdflatex $(MAIN)
	pdflatex $(MAIN)

tidy:
	rm -f *.aux *.dvi *.log *.out *.toc *.lof

clean:	tidy
	rm -f *.pdf
