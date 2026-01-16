TEX := main.tex
PDF := $(TEX:.tex=.pdf)

.PHONY: all pdf clean cleanall

all: pdf

pdf: $(PDF)

$(PDF): $(TEX)
	@if command -v latexmk >/dev/null 2>&1; then \
		latexmk -pdf -interaction=nonstopmode -halt-on-error $(TEX); \
	else \
		pdflatex -interaction=nonstopmode -halt-on-error $(TEX); \
		pdflatex -interaction=nonstopmode -halt-on-error $(TEX); \
	fi

clean:
	@if command -v latexmk >/dev/null 2>&1; then \
		latexmk -c $(TEX); \
	else \
		rm -f *.aux *.log *.out *.toc *.synctex.gz; \
	fi

cleanall: clean
	rm -f $(PDF)
