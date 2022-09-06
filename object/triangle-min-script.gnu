# triangle-min-script.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.06.40132

# svg and output
set term svg size 540,300 font "Times, 16"
set output 'triangle-min-script.svg'

# triangle
set object 1 polygon \
	from 1, 1 \
	to 7, 1 \
	to 7, 3

# grid and tics
set grid
set xrange [0:8]
set xtics 1
set yrange [0:4]
set ytics 1

# show results
plot NaN t ''