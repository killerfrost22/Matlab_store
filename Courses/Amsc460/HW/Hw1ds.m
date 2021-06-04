

%% HOMEWORK 1 - Problem 4

%%
% 4. Suppose you wish to find values of x where f (x) = 0, but f is given first in terms
% of y, and then a second equation determines y for any given x.
% Let f(y) = y^3 + 3*y + 1, and y + x = e^(-6*y) .
% To evaluate f given x, the second equation must first be solved for y and then this
% value substituted into f(y).

%%
% (a) Describe how the bisection method could be used to find an x such that f(x) = 0.
%%
%    According to the Intermediate Theorem we can to find an interval where zhe zero of f(y) lies in.
%    Then try different number a and b to get f(a)>0 and f(b)<0, then we have an interval we want.
%    Use bisection method to find the zero of f(y) in the interval.
%    As the interval become smaller and smaller, we got the midpoint close enought to the zero of f(y).
%    Then we can plug the zero of f(y) which is the y value it into y + x = e^(-6*y) to get
%    the x value we need.

%%
% (b) Writing f as f(y(x)), explain how Newton’s method could be used to find the root
% x such that f(x) = 0.
%%
%    First we take a gusee where is the zero of f(y(x)) could be and denote it as y0,
%    then we apporximate the root by let y_(n+1) = y_n - [f(y_n)/f'(y_n)] until a sufficiently
%    precise value is reach. then plug that y_(n+1) into y + x = e^(-6*y) to get the x value we need.

%%
% (c) Using MATLAB (and any method you prefer), find the root x where f (x) = 0.

%%
% Use Bisection method
clear all
f = @(y) y^3 + 3*y +1;
f(0); f(-1);
fprintf(['Because f(0)= %g > 0 f(-1)= %g < 0. So find a root in', ...
        ' [-1, 0]'], f(0),f(-1))


%%
a=-1; b=0;
fa = f(a); fb = f(b);
k=0;

while (b-a)/2 > 10^-8
  c = (a+b)/2;
  fc = f(c);
  k = k+1;
  fprintf('\tAfter %g steps, root = %.15g\n', k, c)

  if fc == 0
    break
  end
  if sign(fc)*sign(fa) < 0
    b = c; fb = fc;
  else
    a = c; fa = fc;
  end
end
xc = (a+b)/2;
fprintf('Then we have y = %0.15g is an approxiamte zero of f(y)',c)

%%
%    Plug this y into y + x = e^(-6*y)
syms y x
y = c;
x = exp(-6*y) - y
fprintf('Then we have x = %0.15g, and f(x) = 0',x)


fNew = @(h) ( 4*x*(h.^2) - (h.^3) - 6*(x^2)*h + 4*(x^3) );
fNew = @(h) ( 4*x*h.^3 - h.^4 - 6*x^2*h.^2 + 4*h*x^3 )./(h);