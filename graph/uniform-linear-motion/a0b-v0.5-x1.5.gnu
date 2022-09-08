# a0b-v0.5-x1.5
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.08.40198

# svg and output
set term svg size 300,300 font "Times, 16" enhanced
set output 'a0b-v0.5-x1.5.svg'

# grid, tics, axis
set grid xtics ytics mytics
set xrange [0:8]
set xtics 1
set xlabel "{/Times:Italic t}"
set yrange [0:4]
set ytics 1
set mytics 2
set ylabel "{/Times:Italic v}"

# function
r(t) = 0.5 * t + 1.5

# show results
plot r(x) t '' w l lw 2 lc rgb '#0000ff'