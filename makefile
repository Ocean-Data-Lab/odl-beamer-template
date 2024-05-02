# Makefile for Beamer Presentation

# Compiler
LATEX_COMPILER = pdflatex

# Source file
SOURCE = src/main.tex

# Output file
OUTPUT_DIR = out
OUTPUT_FILE = main.pdf
OUTPUT = $(OUTPUT_DIR)/$(OUTPUT_FILE)

# Build target
all: $(OUTPUT)

# Create output directory
$(OUTPUT): $(SOURCE)
	mkdir -p $(OUTPUT_DIR)
	$(LATEX_COMPILER) -output-directory=$(OUTPUT_DIR) $(SOURCE)
	# Run pdflatex again to resolve all references and cross-references
	$(LATEX_COMPILER) -output-directory=$(OUTPUT_DIR) $(SOURCE)
	# You might want to run pdflatex more times depending on your document needs

# Clean up intermediate files
clean:
	rm -f $(OUTPUT_DIR)/*.aux $(OUTPUT_DIR)/*.log $(OUTPUT_DIR)/*.nav $(OUTPUT_DIR)/*.out $(OUTPUT_DIR)/*.snm $(OUTPUT_DIR)/*.toc

# Clean up all generated files
distclean: clean
	rm -f $(OUTPUT)

