a = 4:0.1:5; % real axis
b = -1:0.1:1; % imaginary axis

[A,B] = meshgrid(a,b); 

x = A + 1i*B;
y = (x-2).*(x-7) + 7; 
surfc(a,b,abs(y)) 

xlabel('real(x)')
ylabel('imag(x)')
zlabel('|y|')
