SRC:=main.tex
COMPILER?=lualatex

all:
	$(COMPILER) $(SRC)
