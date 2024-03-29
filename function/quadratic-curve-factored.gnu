# quadratic-curve-factored.gnu
# plot quadratic curve using factored form
# Sparisoma Viridi
# dudung@gmail.com
# 2022.08.06.40198

# define a quadratic function
a = 0.5
x1 = 2
x2 = 8
f(x) = a * (x - x1) * (x - x2)
y1 = f(x1)
y2 = f(x2)

# define data points
$data << EOD
2 0
8 0
EOD

# set terminal and output file
set output "quadratic-curve-factored.svg"
set term svg size 480,300 font "Times, 14"

# set axes settings
set xtics 1
set xrange [0:10]
set xlabel "x"
set ytics 2.5
set yrange [-5:10]
set ylabel "y"
set grid

# set number of samples
set samples 100

# do plotting
set label \
sprintf("f(x) = %.2f (x - %.1f) (x - %.1f)", a, x1, x2) \
at 5,2.5 center
plot f(x) t "" lw 2 lc 7, "$data" w p t "" ps 1 pt 7 lc 6