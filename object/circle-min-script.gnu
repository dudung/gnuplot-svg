# circle-min-script.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.06.40132

# svg and output
set term svg size 540,300 font "Times, 16"
set output 'circle-min-script.svg'

# circle
set object 1 circle at 2, 2  size 1

# grid and tics
set grid
set xrange [0:8]
set xtics 1
set yrange [0:4]
set ytics 1

# show results
plot NaN t ''