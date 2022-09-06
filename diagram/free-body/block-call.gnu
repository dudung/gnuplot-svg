# block-call.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.07.40198

# svg and output
set term svg size 540,300 font "Times, 16"
set output 'block-call.svg'

# rotated block 1
id = 1
x = 2
y = 0
width = 5
height = 2
angle = (pi / 180) * 37
x1 = x + width * cos(angle)
y1 = y + width * sin(angle)
x2 = x - height * sin(angle)
y2 = y + height * cos(angle)
x3 = x + width * cos(angle) - height * sin(angle)
y3 = y + width * sin(angle) + height * cos(angle)
set object id polygon from x, y to x1, y1 to x3, y3 to x2, y2
set object id fc rgb "white"

# rotated block 2
call 'block.gnu' 2 8 1 2 2 60

# grid and tics
set grid
set xrange [0:10]
set xtics 1
set yrange [0:5]
set ytics 1

# show results
plot NaN t ''