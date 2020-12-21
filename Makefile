all: cv-alexey-beshenov-en.pdf cv-alexey-beshenov-es.pdf

cv-alexey-beshenov-en.pdf: cv-alexey-beshenov.tex
	xelatex -jobname=cv-alexey-beshenov-en '\let\english=1 \input' cv-alexey-beshenov.tex

cv-alexey-beshenov-es.pdf: cv-alexey-beshenov.tex
	xelatex -jobname=cv-alexey-beshenov-es '\let\spanish=1 \input' cv-alexey-beshenov.tex

clean:
	rm -f *.aux *.log *.out *.pdf
