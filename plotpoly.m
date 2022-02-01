% @author Bereket Kebede, EECE 3207 TA SPRING 2022

% plot a polynomial funtion using two methods

% option 1
t = -10:0.1:10;
x = t.^3  + 5*t.^2 + 6*t.^5 + 5;
plot(t,x)

%%
% option 2
clear all
fplot(@(t) t.^3  + 5*t.^2 + 6*t.^5 + 5)
