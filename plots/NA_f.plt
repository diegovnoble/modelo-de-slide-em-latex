#!/usr/bin/gnuplot 
reset
set terminal epslatex size 3.5,2.62 color level3 nobackground clip colortext
set xlabel '$n$'
set ylabel '$tempo$'
unset xtics
unset ytics
unset border
set border 3 lw 5
set nokey

set style line 1 linecolor rgb '#1F3656' linetype 1 linewidth 5
set style line 2 linecolor rgb '#E54A45' linetype 1 linewidth 5
set style line 3 linecolor rgb '#8DC997' linetype 1 linewidth 5

set output 'big.tex'
set label 1 "$T(n)$" tc ls 1 at graph 0.7,0.4 
set label 2 "$c.f(n)$" tc ls 2 at graph 0.6,0.9 
plot [0:100][0:100] 'data_f' smooth csplines ls 1, 'data_fsup' smooth csplines ls 2
set output

set output 'omega.tex'
set label 1 "$T(n)$" tc ls 1 at graph 0.7,0.4 
set label 2 "$c.f(n)$" tc ls 3 at graph 0.7,0.1 
plot [0:100][0:100] 'data_f' smooth csplines ls 1, 'data_flow' smooth csplines ls 3
set output

set output 'tight.tex'
set label 1 "$T(n)$" tc ls 1 at graph 0.7,0.4 
set label 2 "$c1.f(n)$" tc ls 2 at graph 0.55,0.9 
set label 3 "$c2.f(n)$" tc ls 3 at graph 0.7,0.1 
plot [0:100][0:100] 'data_f' smooth csplines ls 1, 'data_fsup' smooth csplines ls 2, 'data_flow' smooth csplines ls 3
set output

