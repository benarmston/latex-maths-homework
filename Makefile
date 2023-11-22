FILE = answers

.PHONY: all
all: $(FILE).pdf

$(FILE).pdf: $(FILE).aux $(FILE).tex
	pdflatex $(FILE).tex

$(FILE).aux: $(FILE).tex
	pdflatex $(FILE).tex

.PHONY: clean
clean:
	rm -f *.log *.pdf *.aux
