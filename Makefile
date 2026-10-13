SRC:=main.tex
COMPILER?=lualatex
BIB_COMPILER?=biber
CLEAN_EXT:=aux bbl bcf blg fdb_latexmk fls log out run.xml synctex.gz cut bcf-SAVE-ERROR bbl-SAVE-ERROR

all:
	$(COMPILER) $(SRC)
	$(BIB_COMPILER) main
	$(COMPILER) $(SRC)

clean:
	rm -f $(foreach ext,$(CLEAN_EXT),*.$(ext))
