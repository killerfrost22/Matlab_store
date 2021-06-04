%% AMSC 460 - HOMEWORK 2
%%
% (a) Write a MATLAB program to implement Newton’s method for root finding.
%%
%
%    clear all
%    syms x
%    f = input('Type your equation please: f = ');
%    x = input('The starting guess x0 = ');
%    xNew = x + 100;
%    fd = inline(diff(sym(f)));
%
%    iter = 0;
%    err = 100;
%
%    while err > 10^-8 %could be any number
%        xNew = x - (f(x)./fd(x));
%        err = abs(x-xNew);
%        x = xNew;
%        iter = iter + 1;
%        fprintf('\tAfter %g steps, root = %.15g\n', iter, xNew)
%    end

%%
% (b) To compare root finding algorithms, we will approximate √2 using two methods:
% Newton and Bisection. Using the equation f(x) = x^2 − 2 = 0, use your program from
% part (a) to ensure √2 is obtained. For Newton, use x0=2, and for Bisection use the
% starting bracket [1, 2]. In each case use 10^−8 for the error tolerance.

% Use Newton’s method:
clear all
syms x
f = @(x) x^2-2;   % Given f(x) = x^2 − 2
x = 2;  % The starting guess x0 = 2
x1 = x + 100;
fd = inline(diff(sym(f)));

iter = 0;
err = 100;

while err > 10^-8
    x1 = x - (f(x)./fd(x));
    err = abs(x-x1);
    x = x1;
    iter = iter + 1;
    fprintf('\tAfter %g steps, root = %.15g\n', iter, x1)
end


% Use Bisection method
f = @(x) x^2-2; a=1; b=2;
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

%%
% (c) Modify the algorithms to keep track of the absolute error en = |r - xn| at
% each iteration. Store these errors in a vector (for plotting purposes). Then plot
% the absolute errors on the same graph, and with a semilogarithmic y-axis (use
% semilogy in MATLAB). Which algorithm used the least steps to achieve the
% required error tolerance?


%%
% Modified method:
clear all
syms x
f = @(x) x^2-2;   % Given f(x) = x^2 − 2
x = 2;  % The starting guess x0 = 2
r = sqrt(2);      % Given root =  √2
xNew = x + 100;
fd = inline(diff(sym(f)));

iter = 0;
err = 100;
en = 0;

while err > 10^-8
    xNew = x - (f(x)./fd(x)); %absolute error en = |r - xn|%
    err = abs(x-xNew);
    x = xNew;
    en = abs(r-x);
    iter = iter + 1;
    N(iter) = en;
    fprintf(['\tAfter %g steps, root = %.15g,',...
        ' absolute error = %.15g\n'], iter, xNew, en)
end

%%
% Modified Bisection method:

f = @(x) x^2-2; a=1; b=2;
fa = f(a); fb = f(b);
k=0; Ben = 0; r=sqrt(2);

while (b-a)/2 > 10^-8
  c = (a+b)/2;
  Ben = abs(r-c); %absolute error en = |r - xn|
  fc = f(c);
  k = k+1;
  B(k) = Ben;
  fprintf(['\tAfter %g steps, root = %.15g,',...
        ' absolute error = %.15g\n'], k, c, Ben)
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

%%
hold on;
semilogy(B);
semilogy(N);
legend({'Bisection method','Newton’s method'});
hold off;
%The Newton's method used the least steps to achieve the required error tolerance.
