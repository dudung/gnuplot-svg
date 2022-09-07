# line-from-len-dir-call.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.07.40132

# svg and output
set term svg size 540,300 font "Times, 16"
set output 'line-from-len-dir-call.svg'

# rotated line 1
id = 1
x = 2
y = 1
length = 5
dir = 37
angle = (pi / 180) * dir
x1 = x + length * cos(angle)
y1 = y + length * sin(angle)
set arrow from x, y to x1, y1 size 0.1, 0

# rotated line 2
call 'line-from-len-dir.gnu' 6 1 5 127

# grid and tics
set grid
set xrange [0:10]
set xtics 1
set yrange [0:5]
set ytics 1

# show results
plot NaN t ''