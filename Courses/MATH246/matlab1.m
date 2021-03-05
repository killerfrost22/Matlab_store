%% MATLAB PROJECT 1
%% Exercise_1
%% Problem7a
syms x
diff( x^3 / (x^2 + 1));
% Problem7c
diff(atan(x),3);
%% Exercise_2
% Problem10a
syms t
f(t) = t^6 - 4*t^4 - 2*t^3 + 3*t^2 + 2*t;
fplot(f(t),[-3/2,5/2]) 
%% Problem10b
axis([-1.5 1 -0.9 1.7])
%There are 2 local min points and 1 local max points.
%% Problem10c
g(t) = diff(t^6 - 4*t^4 - 2*t^3 + 3*t^2 + 2*t)
solution=round(vpa(solve(g(t)==0,t)),2)
%There are four of them.
x = round(vpa(fzero(g,-1)),2)
%% Problem10d
h(t) = diff(f(t),2)
fplot(h(t),[-1.2,-0.8])
grid
%The graph of g(t) shows that the second derivative of f(t) is equal to 0
%when t=-1. Therefore, the critical point near -1 is a inflection point. 
