set datafile separator ","

# set terminal epslatex size 8.86cm,14cm standalone 10
set terminal epslatex size 9.1cm,14cm standalone 10 header '\newcommand{\hl}[1]{\setlength{\fboxsep}{0.75pt}\colorbox{white}{\footnotesize{#1}}}'

load "scripts/plt-config.gp"

# Raw EMG Plot
set output "figures/generated/emg-signals.tex"

set yrange [-0.01:0.71]
set xrange [0:22]

set xlabel "Time (s)"
set ylabel "EMG signal (mV)" offset 1, 0

set label 1 at 20.5, 0.65 '\hl{Raw $\cdot \frac{1}{10}$}' left front
set label 2 at 20.5, 0.52 '\hl{TS}' left front
set label 3 at 20.5, 0.42 '\hl{ATS}' left front
set label 4 at 20.5, 0.34 '\hl{HP200}' left front
set label 5 at 20.5, 0.28 '\hl{\shortstack{ATS +\\HP200}}' left front
set label 6 at 20.5, 0.22 '\hl{EKS2}' left front
set label 7 at 20.5, 0.15 '\hl{EKS25}' left front
set label 8 at 20.5, 0.08 '\hl{SWT}' left front
set label 9 at 20.5, 0.02 '\hl{EMD}' left front
plot "data/emg_signals.csv" using 1:($2 / 10 + 0.65) with lines black, \
	"data/emg_signals.csv" using 1:($3 + 0.52) with lines black, \
	"data/emg_signals.csv" using 1:($4 + 0.42) with lines black, \
	"data/emg_signals.csv" using 1:($5 + 0.34) with lines black, \
	"data/emg_signals.csv" using 1:($6 + 0.28) with lines black, \
	"data/emg_signals.csv" using 1:($7 + 0.22) with lines black, \
	"data/emg_signals.csv" using 1:($8 + 0.15) with lines black, \
	"data/emg_signals.csv" using 1:($9 + 0.08) with lines black, \
	"data/emg_signals.csv" using 1:($10 + 0.02) with lines black

	
# Teardown
set output # closes the output file; important in interactive use
quit