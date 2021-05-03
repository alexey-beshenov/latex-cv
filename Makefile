all: alexey-beshenov-cv.pdf \
	alexey-beshenov-cv-es.pdf \
	alexey-beshenov-cv-fr.pdf \
	alexey-beshenov-research-statement.pdf

alexey-beshenov-cv.pdf: cv.tex
	xelatex -jobname=alexey-beshenov-cv '\let\english=1 \input' cv.tex

alexey-beshenov-cv-es.pdf: cv.tex
	xelatex -jobname=alexey-beshenov-cv-es '\let\spanish=1 \input' cv.tex

alexey-beshenov-cv-fr.pdf: cv.tex
	xelatex -jobname=alexey-beshenov-cv-fr '\let\french=1 \input' cv.tex

alexey-beshenov-research-statement.pdf: research-statement.tex
	pdflatex -jobname=alexey-beshenov-research-statement research-statement.tex
	bibtex alexey-beshenov-research-statement
	pdflatex -jobname=alexey-beshenov-research-statement research-statement.tex
	pdflatex -jobname=alexey-beshenov-research-statement research-statement.tex

clean:
	rm -f *.aux *.log *.out *.pdf
