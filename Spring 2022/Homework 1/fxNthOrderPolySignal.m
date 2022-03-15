function [tVec,xVec] = fxNthOrderPolySignal(domainVec, rootsVec)
 
    tVec = domainVec(1):0.1:domainVec(2);
    polyVec = poly(rootsVec);
    xVec = polyval(polyVec,tVec)
    
    figure
    plot(tVec,xVec)
    title('x(t) vs t')
    xlabel('t');
    ylabel('x(t)');
end
