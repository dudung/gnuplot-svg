# incline.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.06.40132

# arguments
id = ARG1
x = ARG2
y = ARG3
base = ARG4
height = ARG5
color = ARG6
opacity = @ARG7
set object id polygon from x, y to x + base, y to x + base, y + height
set object id fc rgb color fillstyle solid opacity