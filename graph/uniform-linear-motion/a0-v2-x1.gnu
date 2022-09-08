# a0-v2-x1
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.08.40198

# svg and output
set term svg size 300,300 font "Times, 16" enhanced
set output 'a0-v2-x1.svg'

# grid, tics, axis
set grid
set xrange [0:8]
set xtics 1
set xlabel "{/Times:Italic t}"
set yrange [0:8]
set ytics 1
set ylabel "{/Times:Italic x}"

# function
r(t) = 1 + 2 * t

# show results
plot r(x) t '' w l lw 2 lc rgb '#0000ff'