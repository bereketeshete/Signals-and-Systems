%% Week 11 Recitation TA @ Bereket Kebede
% problem 4.41 , from Alkin 2014


% Compute the signal x ( t )
xp = @( t ) 2*( t <1)+1*( ( t >=1)&( t <=2) ) ; % One period
t = -4:0.005:6;
x = xp(mod( t , 3 ) ) ; % Periodic extension

% Compute the coefficients
k = 1:10;
a0 = 1;
a = ( sin (2* pi *k/3)+ sin (4* pi *k / 3 ) ) ./ ( pi *k ) ;
b = (2 -cos (2* pi *k/3) - cos (4* pi *k / 3 ) )./ ( pi *k ) ;

% Approximation with M=10 harmonics

for m=1:10 
    xhat = a0*ones ( size ( t ) ) + a (m) * cos (2* pi *m* t /3)+b(m) * sin (2* pi *m* t / 3 ) ;
end 
plot ( t , x , t , xhat ) ;
axis ( [-3 ,3 , -1 ,3.5] ) ;
xlabel ('t') ;
legend( 'Or iginal signal ' , 'Approx . with M=3 ' ) ;
grid ;
% Approximation e r ror for M=3
plot ( t , x - xhat) ;
axis ( [-3 ,3 , -1.2 ,1.2] ) ;
xlabel ('t') ;
grid ;
