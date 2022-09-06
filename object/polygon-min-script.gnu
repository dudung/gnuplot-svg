# polygon-min-script.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.06.40132

# svg and output
set term svg size 540,300 font "Times, 16"
set output 'polygon-min-script.svg'

# rectangle
set object 1 polygon \
	from 1, 1 \
	to 2, 1 \
	to 2, 2 \
	to 3, 2 \
	to 4, 1 \
	to 5, 2 \
	to 4, 3 \
	to 3, 3 \
	to 2, 2.5 \
	to 1, 2

# grid and tics
set grid
set xrange [0:8]
set xtics 1
set yrange [0:4]
set ytics 1

# show results
plot NaN t ''