# nulm-xva-eqn-5.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.09.40132

# svg, grid, xlabel
set term svg size 300,300 font "Times, 16" enhanced
set grid
set tics scale 0.4
set xlabel "{/Times:Italic t}" offset 0, 0.5
set xrange [0:]

# color
pos_color = '#0000ff'
vel_color = '#00ff00'
acc_color = '#ff0000'

# functions num, prefix
prefix = 'nulm-xva-eqn-'
num = 5

a0 = 2
v0 = -5
r0 = 6.25

r(t) = r0 + v0 * t + 0.5 * a0 * t**2
v(t) = v0 + a0 * t
a(t) = a0

# position graph
set output prefix.num.'-pos.svg'
set ylabel "{/Times:Italic x}"
set yrange [:]
plot r(x) t '' w l lw 2 lc rgb pos_color

# velocity graph
set output prefix.num.'-vel.svg'
set ylabel "{/Times:Italic v}"
set yrange [:]
plot v(x) t '' w l lw 2 lc rgb vel_color

# acceleration graph
set output prefix.num.'-acc.svg'
set ylabel "{/Times:Italic a}"
set yrange [a0-1:a0+1]
plot a(x) t '' w l lw 2 lc rgb acc_color
