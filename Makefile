TEX=platex
OPTIONS=-halt-on-error
SOURCE=source/
BIN=bin/
PDF=pdf/

.PHONY: all, dvi, clean

all: $(PDF)std.pdf

$(PDF)std.pdf: $(BIN)std.dvi
	dvipdfmx $< -o $@

$(BIN)std.dvi:
	$(TEX) $(OPTIONS) -output-directory=$(BIN) $(SOURCE)std.tex

clean:
	rm -rf $(BIN)* $(PDF)*
