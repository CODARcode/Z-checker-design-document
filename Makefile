all: cheetah.pdf

cheetah.pdf: *.tex Narrative/*.tex
	latexmk --pdf z-checker.tex

.PHONY:
clean:
	rm -f *.dvi *aux *toc *bbl *log *out *pdf *fls *.blg *.fdb_latexmk

.PHONY:
cleanall: clean
	rm -f cheetah.pdf
