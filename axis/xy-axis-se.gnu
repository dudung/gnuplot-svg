# xy-axis-se
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.06.40198

# svg output
set term svg size 300,300 font "Times, 16"

# no border
unset border

# arrow head
ahead = 'size 0.2,20 filled lw 2' 

# x axis
set xrange [4:0]
unset xtics
set arrow from 0,0 to 1,0 @ahead
set label "{/Times:Italic x}" at 1 + 0.1, 0 + 0.05 left

# y axis
set yrange [0:4]
unset ytics
set arrow from 0,0 to 0,1 @ahead
set label "{/Times:Italic y}" at 0, 1 + 0.25 center

# output
set output "xy-axis-se.svg"

# show results
plot NaN t ''