VERSION = 1.0

TARGET = osa-$(VERSION).pdf

.PHONY: all clean tidy

all:	clean	osa.pdf

%.pdf:	%.tex
	pdflatex $*
	pdflatex $*
	mv -f $@ $(TARGET)

tidy:
	rm -f *.aux *.dvi *.log *.out *.toc *.lof

clean:	tidy
	rm -f *.pdf
