%% Week 11 Recitation TA @ Bereket Kebede
% problem 4.43 , from Alkin 2014

k = -20:20;
d = 0.4 ;
%c = d* sinc(k*d) ;
c = sin (pi*k*d)./(pi*k);
stem( k , c ) ;
axis ( [-20.5,20.5,-0.3,1.2] ) ;
title ('c_k, EFS Line Spectrum Recitation Tutorial') ;
xlabel ('k') ;
grid ;