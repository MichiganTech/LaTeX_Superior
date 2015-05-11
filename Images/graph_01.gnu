set terminal postscript landscape enhanced color dashed 15
set output "graph_01.eps"
set xlabel "# of grids, N"
set ylabel "Time for phase 1, 2 and 3 (minutes), t"
# set title  "Timing measurements using 2 processors"
set xrange [2:16]
set yrange [-100:900]
set key top left
set grid
set datafile missing "---"
# Data points for 1 processor
set label "50"  at  3.85,100
set label "200" at  5.65,255
set label "395" at  7.65,435
# Data points for 2 processors
set label "26"  at  3.35,25
set label "94"  at  5.80,135
set label "203" at  7.65,250
set label "357" at  9.65,410
set label "556" at 11.65,620
set label "803" at 13.75,850
# Data points for 4 processors
set label "14"  at  3.85,-50
set label "47"  at  5.80,0
set label "102" at  7.65,50
set label "178" at  9.65,120
set label "278" at 11.65,210
set label "402" at 13.75,350
plot "graph_01.dat" using 1:($2) ti "NPROC = 1" with linesp lt 3 pt 6, \
     "graph_01.dat" using 1:($3) ti "NPROC = 2" with linesp lt 4 pt 4, \
     "graph_01.dat" using 1:($4) ti "NPROC = 4" with linesp lt 1 pt 2
