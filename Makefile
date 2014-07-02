.PHONY: all clean tidy

all:	clean	osa.pdf

%.pdf:	%.tex
	pdflatex $*
	pdflatex $*

tidy:
	rm -f *.aux *.dvi *.log *.out *.toc *.lof

clean:	tidy
	rm -f *.pdf
