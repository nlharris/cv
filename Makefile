all: cmungall_cv.pdf

%.pdf: %.tex
	latex $* && latex $* && bibtex $* && latex $* && pdflatex $*

clean:
	rm *.{aux,bbl,log,out,blg}
