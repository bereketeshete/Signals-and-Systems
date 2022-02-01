% @author Bereket Kebede, EECE 3207 TA SPRING 2022

% Aprox, 10 min
% Define a function, https://www.mathworks.com/help/matlab/ref/function.html
% Use plot function, https://www.mathworks.com/help/matlab/ref/plot.html

function x = drawpoly(domainsVector, rootsVector)
    x=1;
    
    % create the polynomial from the roots
    for i = rootsVector
        x = x .*(domainsVector-i);
    end
    
    % plot the polynomial
    plot(domainsVector,x);
    title('Continuous-time polynomial signal x(t) of arbitrary order')
    xlabel('domainsVector (t)')
    ylabel('x(t)')
end
