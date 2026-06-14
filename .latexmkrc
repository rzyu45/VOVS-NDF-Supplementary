# Supplementary-material build recipe.
# The document uses IEEEtran with \usepackage{cite} and \bibliographystyle{IEEEtran},
# so the toolchain is pdflatex + bibtex (the same as the main manuscript).
#
#   latexmk        build  (pdflatex -> bibtex -> pdflatex, repeated until stable)
#   latexmk -pvc   continuous preview, rebuild on every save
#   latexmk -c     remove auxiliary files, keep main.pdf
#   latexmk -C     remove everything, including main.pdf

$pdf_mode    = 1;        # 1 = produce the PDF with pdflatex
$bibtex_use  = 2;        # run bibtex as needed; treat .bbl as regenerable
$max_repeat  = 5;

@default_files = ('main.tex');
