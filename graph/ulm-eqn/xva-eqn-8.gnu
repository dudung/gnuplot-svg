# xva-eqn-8.gnu
# Sparisoma Viridi
# https://github.com/dudung/gnuplot-svg
# 2022.09.09.40198

# svg, grid, xlabel
set term svg size 200,240 font "Times, 16" enhanced
set grid
set tics scale 0.4
set xlabel "{/Times:Italic t}" offset 0, 0.5
set xrange [0:]
set ylabel '' offset 2
set lmargin 6
set rmargin 1

# colos
pos_color = '#0000ff'
vel_color = '#00ff00'
acc_color = '#ff0000'

# functions num
num = 8
r(t) = -3*t - 5
v(t) = -3
a(t) = 0

# position graph
set output 'xva-eqn-'.num.'-pos.svg'
set ylabel "{/Times:Italic x}"
plot r(x) t '' w l lw 2 lc rgb pos_color

# velocity graph
set output 'xva-eqn-'.num.'-vel.svg'
set ylabel "{/Times:Italic v}"
plot v(x) t '' w l lw 2 lc rgb vel_color

# acceleration graph
set output 'xva-eqn-'.num.'-acc.svg'
set ylabel "{/Times:Italic a}"
plot a(x) t '' w l lw 2 lc rgb acc_color