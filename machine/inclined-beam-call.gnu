# inclined-beam-call.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.06.40132

# svg and output
set term svg size 540,300 font "Times, 16"
set output 'inclined-beam-call.svg'

# grid and tics
set grid
set xrange [0:16]
set xtics 1
set yrange [0:8]
set ytics 1

# inclined beam 1 -- use object directly
x = 2
y = 1
length = 10
angle = 37
x1 = x + length * cos(pi * angle / 180)
y1 = y + length * sin(pi * angle / 180)
set arrow from x, y to x1, y1 size 1, 0 lw 4

# inclined beam 2 -- use other script with variables
x = 3
y = 1
length = 13
angle = 22.6
x1 = x + length * cos(pi * angle / 180)
y1 = y + length * sin(pi * angle / 180)
call 'inclined-beam.gnu' x y length angle

# inclined beam 2 -- use other script without variables
x = 3
y = 1
length = 13
angle = 22.6
x1 = x + length * cos(pi * angle / 180)
y1 = y + length * sin(pi * angle / 180)
call 'inclined-beam.gnu' 5 4 5 143

# show results
plot NaN t ''