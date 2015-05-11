# Makefile to compile superior_proposal.tex to generate superior_proposal.pdf
# and clean up any unnecessary files.

# Basic variables
SHELL    = sh
RM       = rm
MV       = mv
AWK      = awk
SED      = sed
LATEX    = latex
BIBTEX   = bibtex
DVIPS    = dvips
DVIPDF   = dvipdf
PS2PDF   = ps2pdf
SLEEP    = sleep

FILENAME  = superior_proposal
TMP_FILES = $(FILENAME).aux \
            $(FILENAME).bbl \
            $(FILENAME).dvi \
            $(FILENAME).log \
            $(FILENAME).nav \
            $(FILENAME).out \
            $(FILENAME).ps  \
            $(FILENAME).snm \
            $(FILENAME).synctex.gz \
            $(FILENAME).toc \
            $(FILENAME).vrb

# Targets
all:
	make proposal

proposal:
	@echo
	@echo "Check if $(FILENAME).tex exists"
	@echo "If yes, compile; if not, move on"
	@echo
	if [ -f "$(FILENAME).tex" ]; \
	then \
	  make clean; \
	  latex  $(FILENAME); \
	  latex  $(FILENAME); \
	  bibtex $(FILENAME); \
	  latex  $(FILENAME); \
	  latex  $(FILENAME); \
	  dvips -R0 -Ppdf -t letter -o $(FILENAME).ps $(FILENAME).dvi; \
	  sed -i '/^SDict begin \[$$/,/^end$$/d' $(FILENAME).ps; \
	  ps2pdf -dPDFSETTINGS=/prepress -dSubsetFonts=true -dEmbedAllFonts=true -dMaxSubsetPct=100 $(FILENAME).ps $(FILENAME).pdf; \
	  make clean; \
	fi
	@echo

clean:	
	@echo
	rm -f $(TMP_FILES) *.gnuplot *.table
	@echo
