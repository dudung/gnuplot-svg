# line-from-len-dir.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.07.40132


# arguments
x = ARG1
y = ARG2
length = ARG3
dir = ARG4

# calculation
angle = (pi / 180) * dir
x1 = x + length * cos(angle)
y1 = y + length * sin(angle)

# line
set arrow from x, y to x1, y1 size 0.1, 0