# Latexmk configuration for BibTeX compilation
# This ensures proper compilation order: pdflatex -> bibtex -> pdflatex -> pdflatex

$pdf_mode = 1;        # Use pdflatex
$bibtex_use = 2;      # Run bibtex when needed
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';

# Clean up auxiliary files
@generated_exts = (@generated_exts, 'synctex.gz');
