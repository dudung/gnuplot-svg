# incline-call.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.06.40132

# arguments
id = ARG1
x = ARG2
y = ARG3
base = ARG4
height = ARG5
color = '#ffffff'
opacity = 0.5
set object id polygon from x, y to x + base, y to x + base, y + height
set object id polygon fc rgb color fillstyle solid opacity