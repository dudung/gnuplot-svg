# zy-axis-grid
# Sparisoma Viridi
# dudung@gmail.com
# 2022.09.06.40132

# svg output is selected
set term svg size 300,300 font "Times, 14"

# grid
set grid
set tics scale 0
unset border

# x axis
set xrange [0:4]
set xtics 1
set arrow from 0,0 to 1,0
set label "x" at 1 + 0.1, 0 + 0.05 left enhanced font "Times, 20"

# y axis
set yrange [0:4]
set ytics 1
set arrow from 0,0 to 0,1
set label "y" at 0, 1 + 0.3 center enhanced font "Times, 20"

# output and label to display
set output "xy-axis-grid.svg"

# show results
plot NaN t ''