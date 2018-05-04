This is a simple, plain Latex template package for the creation of Bachelor's and Master's theses. The template is tailored to the specific needs of engineering students pursuing a degree at the University of Lübeck.

What needs to be done for generating the final document?
0. Install the required software packages: 
    * Absolutely necessary: Latex and Biber. Both are included in the MikTex package for Windows.
    * Only required if figures shall be generated from scratch: gnuplot and Matlab.
1. Generate the required figure files.
    * Run scripts/ex2.m in Matlab.
    * Run scripts/emg-raw-plot.gp in gnuplot. (In the command line with gnuplot installed, do "gnuplot scripts/emg-raw-plot.gp".)
      This generates a file figures/generated/emg-signals.tex, which then needs to be compiled to generate the actual figures:
    * Run "pdflatex figures/generated/emg-signals.tex -output-directory=figures/generated"
2. Generate the actual document [this can probably be done automatically in your favorite Latex editor].
    * Run "pdflatex main.tex"
    * Run "biber main"
    * Run "pdflatex main.tex" two more times