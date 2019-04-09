MAIN = thesis
REV = 4f237d9

default:
	pdflatex $(MAIN).tex

all:
	pdflatex $(MAIN).tex
	biber $(MAIN)
	makeglossaries $(MAIN)
	makeindex $(MAIN).nlo -s nomencl.ist -o $(MAIN).nls
	makeindex $(MAIN).idx
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex

clean:
	mv $(MAIN).tex temp.tex
	mv $(MAIN).pdf temp.pdf
	rm $(MAIN)*
	mv temp.tex $(MAIN).tex
	mv temp.pdf $(MAIN).pdf

diff:
	latexdiff-vc --git -r $(REV) $(MAIN).tex
	latexdiff-vc --git -r $(REV) chapters/0_abstract.tex
	latexdiff-vc --git -r $(REV) chapters/1_intro.tex
	latexdiff-vc --git -r $(REV) chapters/2_method.tex
	latexdiff-vc --git -r $(REV) chapters/3_results.tex
	latexdiff-vc --git -r $(REV) chapters/4_conclusion.tex
	latexdiff-vc --git -r $(REV) appendices/app.tex

difflatex:
	pdflatex $(MAIN)-diff$(REV).tex
	biber $(MAIN)-diff$(REV)
	makeindex $(MAIN)-diff$(REV).nlo -s nomencl.ist -o $(MAIN)-diff$(REV).nls
	pdflatex $(MAIN)-diff$(REV).tex
	pdflatex $(MAIN)-diff$(REV).tex
