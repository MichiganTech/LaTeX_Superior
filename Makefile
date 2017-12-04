# Makefile
#
# Compile superior_proposal.tex to generate superior_proposal.pdf
# and clean up any unnecessary files.

# Necessary variables
PROPOSAL     = superior_proposal
DEPENDENCIES = $(PROPOSAL).tex  \
               MichiganTech.cls \
               Images/MichiganTech.eps \
               Images/MichiganTech.png
TMP_FILES    = acr   alg   aux   bbl  bcf  blg   blx   brf   dvi  \
               fdb_latexmk fls   gnuplot   glg   glo   gls   idx  \
               ilg   ind   ist   loa  lof  log   lol   lot   maf  \
               mtc   mtc0  nav   nlo  out  out.ps      pdfsync    \
               ps    pyg   run.xml    sagetex    snm   sout       \
               stc   sympy       synctex.gz      table  tdo  thm  \
               toc   vrb   xdy   xwm

# Default target
all:
	@echo
	@echo
	@echo  "  Use one of the following two methods"
	@echo
	@echo  "    make LATEX       (iff all images are EPS or PS)"
	@echo  "    make PDFLATEX    (iff all images are JPG, PDF, PNG)"
	@echo
	@echo

LATEX: $(DEPENDENCIES)
	make clean
	latex  $(PROPOSAL).tex
	bibtex $(PROPOSAL)
	latex  $(PROPOSAL).tex
	latex  $(PROPOSAL).tex
	dvips -R0 -Ppdf -t letter -o $(PROPOSAL).ps $(PROPOSAL).dvi
	sed -i '/^SDict begin \[$$/,/^end$$/d' $(PROPOSAL).ps
	ps2pdf -dPDFSETTINGS=/prepress -dSubsetFonts=true -dEmbedAllFonts=true -dMaxSubsetPct=100 $(PROPOSAL).ps $(PROPOSAL).pdf
	make clean

PDFLATEX: $(DEPENDENCIES)
	make clean
	pdflatex $(PROPOSAL).tex
	bibtex   $(PROPOSAL)
	pdflatex $(PROPOSAL).tex
	pdflatex $(PROPOSAL).tex
	make clean

clean:	
	@echo
	@for tmp in $(TMP_FILES) ; \
	do \
    rm -f $(PROPOSAL).$$tmp ; \
    rm -f Images/*-eps-converted-to.pdf ;\
	done
	@echo
