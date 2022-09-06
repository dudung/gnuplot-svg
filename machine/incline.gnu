# incline.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.06.40132

# svg and output
set term svg size 540,300 font "Times, 16"
set output 'incline.svg'

# grid and tics
set grid
set xrange [0:16]
set xtics 1
set yrange [0:8]
set ytics 1

# incline 1
id = 1
x = 1
y = 1
base = 4
height = 2
color = '#aaaaff'
opacity = 0.3
set object id polygon from x, y to x + base, y to x + base, y + height
set object id fc rgb color fillstyle solid opacity

# incline 2
id = 2
x = 7
y = 1
base = 10
height = 4
color = '#00ff00'
opacity = 0.5
call 'incline-call.gnu' id x y base height color opacity

# show results
plot NaN t ''