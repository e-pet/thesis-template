unset key # turn off legend
# remove border on top and right and set color to gray
set style line 11 lc rgb '#808080' lt 1
set border 3 back ls 11
set tics nomirror

# Background grid
set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

# Add arrows to axes lines
set arrow from graph 1,0 to graph 1.05,0 size screen 0.025,15,60 \
    filled ls 11
set arrow from graph 0,1 to graph 0,1.05 size screen 0.025,15,60 \
    filled ls 11