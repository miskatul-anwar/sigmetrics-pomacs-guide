# Simple build for both templates
# Requirements: latexmk, pdflatex (or lualatex/xelatex if you adjust)
# Usage:
#   make           # build both PDFs
#   make pomacs    # build pomacs_main.pdf
#   make conf      # build sigmetrics_conf_main.pdf
#   make clean     # remove build artifacts

LATEXMK = latexmk
LATEXMKFLAGS = -pdf -interaction=nonstopmode -halt-on-error

all: pomacs conf

pomacs: pomacs_main.pdf
conf: sigmetrics_conf_main.pdf

pomacs_main.pdf: pomacs_main.tex references.bib
	$(LATEXMK) $(LATEXMKFLAGS) pomacs_main.tex

sigmetrics_conf_main.pdf: sigmetrics_conf_main.tex references.bib
	$(LATEXMK) $(LATEXMKFLAGS) sigmetrics_conf_main.tex

clean:
	$(LATEXMK) -C
	rm -f *.bbl *.run.xml