PANDOC = pandoc
ENGINE = lualatex

NAME = bio-bigwig

SOURCE = $(NAME).md
BIBTEX = $(NAME).bib
TARGET = $(NAME).pdf

$(TARGET): $(SOURCE) $(BIBTEX)
	$(PANDOC) -o $(TARGET) -C --pdf-engine=$(ENGINE) -V linkcolor=blue $(SOURCE)

all: clean $(TARGET)

clean:
	rm -f $(TARGET)
