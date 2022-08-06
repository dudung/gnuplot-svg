# quadratic-curve-standard.gnu
# plot quadratic curve using standard form
# Sparisoma Viridi
# dudung@gmail.com
# 2022.08.06.40198

# define a quadratic function
a = 1
b = -10
c = 21
f(x) = a * x**2 + b * x + c

# define data points
$data << EOD
3 0
7 0
EOD

# set terminal and output file
set output "quadratic-curve-standard.svg"
set term svg size 480,300 font "Times, 14"

# set axes settings
set xtics 1
set xrange [0:10]
set xlabel "x"
set ytics 5
set yrange [-5:25]
set ylabel "y"
set grid

# set number of samples
set samples 100

# do plotting
set label "f(x) = " . a . "x^2 + " . b . "x + " . c at 5,10 center
plot f(x) t "" lw 2 lc 7, "$data" w p t "" ps 1 pt 7 lc 6