# pulley-call.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.06.40132

# svg and output
set term svg size 540,300 font "Times, 16"
set output 'pulley-call.svg'

# grid and tics
set grid
set xrange [0:16]
set xtics 1
set yrange [0:8]
set ytics 1

# pulley 1 -- use object directly
id = 100
x = 4
y = 3
r = 1
x1 = x - 0.5 * r
y1 = y - r
x2 = x1 + r
y2 = y1 + 2 * r
set object id circle at x, y size r
set object id+1 rectangle from x1, y1 to x2, y2 fc '#f0f0f0'
set object id+2 circle at x, y size 0.1

# pulley 2 -- use other script with variable
id = 103
x = 6
y = 6
r = 1
x1 = x - 0.5 * r
y1 = y - r
x2 = x1 + r
y2 = y1 + 2 * r
call 'pulley.gnu' id x y r

# pulley 3 -- use other script without variable
call 'pulley.gnu' 106 9 3 2

# string
set arrow from 3, 3 to 3, 6 size 0.4, 17 lw 1 filled
set arrow from 5, 3 to 5, 6 size 1, 0 lw 1
set arrow from 7, 6 to 7, 3 size 1, 0 lw 1
set arrow from 11, 3 to 11, 7 size 1, 0 lw 1

# show results
plot NaN t ''