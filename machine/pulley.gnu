# pulley.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.06.40132

# arguments
id = ARG1
x = ARG2
y = ARG3
r = ARG4
x1 = x - 0.5 * r
y1 = y - r
x2 = x1 + r
y2 = y1 + 2 * r
set object id circle at x, y size r
set object id+1 rectangle from x1, y1 to x2, y2 fc '#f0f0f0'
set object id+2 circle at x, y size 0.1