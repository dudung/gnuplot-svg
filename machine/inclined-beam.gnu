# inclined-beam.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.06.40132

# arguments
x = ARG1
y = ARG2
length = ARG3
angle = ARG4
x1 = x + length * cos(pi * angle / 180)
y1 = y + length * sin(pi * angle / 180)
set arrow from x, y to x1, y1 size 1, 0 lw 4