# Display 'Hello, World!' to test blog max size
# Sparisoma Viridi
# dudung@gmail.com
# 2022.08.06.40198

# svg output is selected
set term svg size 540,300 font "Times, 14"

# axis settings
set xtics 1
set xrange [0:4]
set xlabel "x"
set ytics 1
set yrange [0:4]
set ylabel "y"

# a function
f(x) = 0

# output and label to display
set output "hello-max-width.svg"
set label "Hello, World! Width is 540." at 2, 2 center enhanced font "Times, 20"

# show results
plot f(x) t ""