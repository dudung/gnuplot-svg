# quadratic-curve-vertex.gnu
# plot quadratic curve using vertex form
# Sparisoma Viridi
# dudung@gmail.com
# 2022.08.07.40198

# define a quadratic function
a = 0.2
xp = 5
k = 3
f(x) = a * (x - xp)**2 + k

# define data points
$data << EOD
0 8
5 3
EOD

# set terminal and output file
set output "quadratic-curve-vertex.svg"
set term svg size 480,300 font "Times, 14"

# set axes settings
set xtics 1
set xrange [0:10]
set xlabel "x"
set ytics 1
set yrange [3:8]
set ylabel "y"
set grid

# set number of samples
set samples 100

# do plotting
set label \
sprintf("f(x) = %.2f (x - %.1f)^2 + %.1f", a, xp, k) \
at 5,6 center
plot f(x) t "" lw 2 lc 7, "$data" w p t "" ps 1 pt 7 lc 6