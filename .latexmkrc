# latexmk config to use SumatraPDF on Windows for live preview
# If SumatraPDF is installed in a different path, update the path below.
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';
$pdf_previewer = 'start "" "C:/Program Files/SumatraPDF/SumatraPDF.exe" -reuse-instance %S';

# Use bibtex by default (change to biber if using biblatex+biber)
$bibtex = 'bibtex %O %B';
