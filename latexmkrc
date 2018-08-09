# Generate auxialiary files
$recorder = 1;

# The output file dir
$out_dir = "./build";

$pdf_mode = 2; # Ensure that dvi and ps file are created (POWERDOT)
#$pdf_mode = 1; # Ensure that pdflatex is used (USUAL)
$view = "pdf"; #

# Biber configurations 1: only use bibtex or biber if the bib files exist; never delete .bbl files in a cleanup.
$bitex_use = "1";
$biber = "biber --input-encoding=UTF-8 --output-encoding=UTF-8 --output-safechars --isbn-normalise";

# Silent mode: -quiet should be passed to latexmk
$latex_silent_switch = "-interaction=batchmode";
$biber_silent_switch = "--quiet";
$dvips_silent_switch = "-q";
$pdflatex_silent_switch = "-interaction=batchmode";

# Preview: -pvc should be passed to latexmk
$pdf_previewer = "nohup atril %O %S & > /dev/null &";
#$pdf_previewer = "start xpdf -remote %R %O %S";
#$pdf_update_method = 4;
#$pdf_update_command = "xpdf -remote %R -reload";

# Compilers parameters
$latex = "latex -shell-escape -file-line-error %O %S";
$pdflatex = "pdflatex -shell-escape -file-line-error %O %S";

# Force embed fonts
$ps2pdf = "ps2pdf -q -dCompatibilityLevel=1.4 -dEmbedAllFonts=true -dSubsetFonts=true %O %S %D";
