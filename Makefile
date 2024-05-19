MAIN=thesis
LIBVERSION=thesis-lib
LATEX=xelatex
BIBTEX=bibtex
RM=rm -f
NTU_WATERMARK_LINK=https://www.lib.ntu.edu.tw/doc/CL/watermark.pdf

# use your own password
PDF_PWD=rdkRq8u8lAzARCIPa8Us

# files to compile
files := $(wildcard *.tex) ntuthesis.cls thesis.bib
# content files
files := $(files) $(wildcard chapters/*.tex) $(wildcard tables/*.tex) $(wildcard figures/*.tex)
# embeded files
files := $(files) $(wildcard images/*) $(wildcard pdfs/*.pdf)

.SUFFIXES: .tex

ifdef PASSWORD
all: $(MAIN).pdf $(MAIN)-with-pass.pdf
else
all: $(MAIN).pdf
endif

ifdef WATERMARK
TEXFLAG+="\def\withwatermark{1} "
endif

ifdef DOI
TEXFLAG+="\def\withdoi{1} "
endif

ifdef CERTIFICATION
TEXFLAG+="\def\withcertification{1} "
endif

ifdef FIRSTPAGE
TEXFLAG+="\def\firstpage{1} "
else
TEXFLAG+="\def\excludefirstpage{1} "
endif

TEXFLAG+="\input{$(MAIN)}"

$(MAIN).pdf: $(files) src/without-watermark.tex
	cp src/without-watermark.tex watermark.tex
	$(LATEX) $(MAIN)
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)
	$(RM) watermark.tex

ntulib: pdfs/watermark.pdf src/with-watermark.tex $(files)
	cp src/with-watermark.tex watermark.tex
	$(LATEX) $(MAIN)
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)
	pdftk $(MAIN).pdf output $(LIBVERSION).pdf owner_pw $(PDF_PWD) allow Printing allow ScreenReaders
	$(RM) watermark.tex

pdfs:
	mkdir pdfs

pdfs/watermark.pdf: | pdfs
	curl "http://etds.lib.ntu.edu.tw/files/watermark.pdf" -o "pdfs/watermark.pdf"

clean:
	$(RM) *.log *.aux *.dvi *.lof *.lot *.toc *.bbl *.blg *.out

clean-pdf:
	$(RM) *.pdf

clean-all: clean clean-pdf

setup:
	sudo apt-get install texlive texlive-xetex texlive-latex-recommended texlive-latex-extra texlive-bibtex-extra texlive-science texlive-humanities pdftk curl
