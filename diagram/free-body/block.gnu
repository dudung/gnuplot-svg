# block.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.07.40198

# arguments
id = ARG1
x = ARG2
y = ARG3
width = ARG4
height = ARG5
angle = (pi / 180) * ARG6

# parameters
x1 = x + width * cos(angle)
y1 = y + width * sin(angle)
x2 = x - height * sin(angle)
y2 = y + height * cos(angle)
x3 = x + width * cos(angle) - height * sin(angle)
y3 = y + width * sin(angle) + height * cos(angle)

# polygon
set object id polygon from x, y to x1, y1 to x3, y3 to x2, y2
set object id fc rgb "white"