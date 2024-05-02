# Makefile for Beamer Presentation

# Compiler
LATEX_COMPILER = pdflatex

# Source file
SOURCE = main.tex

# Output file
OUTPUT = presentation.pdf

# Build target
all: $(OUTPUT)

# Compile the source file
$(OUTPUT): $(SOURCE)
	$(LATEX_COMPILER) $(SOURCE)

# Clean up intermediate files
clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc

# Clean up all generated files
distclean: clean
	rm -f $(OUTPUT)