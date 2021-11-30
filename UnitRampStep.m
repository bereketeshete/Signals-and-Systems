% author @ Bereket Kebede, T.A
% Fall 2021, EECE 3203 University of Memphis, 2021
% I have written this code to help you understand the ramp,unit-step and unit-impulse functions
% if you have any questions, send me an email at bkebede@memphis.edu
% Don't send me an email to review your code for the homeworks

t = -1:0.01:1; 

subplot(3,1,1); 
plot(t,ramp(t))
title('Ramp function')
axis([-2 2 -1 2])

subplot(3,1,2); 
plot(t,unit_step(t))
title('Unit-step function')
axis([-2 2 -1 2])

subplot(3,1,3); 
plot(t,unit_impulse(t))
title('Unit-impulse function')
axis([-2 2 -1 2])

%%
function x = ramp(t)
x = zeros(size(t));
for i=1:length(t)
    if t(i) > 0
        x(i) = t(i);
    else
        x(i) = 0;
    end
end
end

%%
function x = unit_step(t)
x = zeros(size(t));
for i=1:length(t)
    if t(i) > 0
        x(i) = 1;
    else
        x(i) = 0;
    end
end
end

%%
function x = unit_impulse(t)
x = zeros(size(t));
for i=1:length(t)
    if t(i) > 0.5
        x(i) = 0;
    elseif t(i) < -0.5
        x(i) = 0;
    else
        x(i) = 1;
    end
end
end

