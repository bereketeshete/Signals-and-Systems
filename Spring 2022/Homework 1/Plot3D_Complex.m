a = 4:0.1:5; % real axis
b = -1:0.1:1; % imaginary axis

[A,B] = meshgrid(a,b); % this is the first command used to plot any 3D surfaces to form matrix

x = A + 1i*B;
y = (x-2).*(x-7) + 7; 
surfc(a,b,abs(y)) 

xlabel('real(x)')
ylabel('imag(x)')
zlabel('|y|')
