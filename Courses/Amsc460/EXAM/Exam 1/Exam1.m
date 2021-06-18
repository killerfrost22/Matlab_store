%% AMSC 460 - EXAM 1
clear all; format compact; close all; syms f(x) x y

%% Problem 1 (finished)
%% 
% Consider a base 2 normalized floating point system with mantissa of length 4, and
% exponent in the range −5 ≤ E ≤ 5.

%%
% (a) What is the distance between the number 8 and the next largest floating point
% number in this system?
%% 
% The next largest ： 1.1111*2^5 = 111110 
% 111110_2 =62_10
% 62-8 =54
%% 
% (b) What is the distance between the number 8 and the next smallest floating point
% number?
%% 
% The next largest ： 1.0001*2^3 = 1000.1 
% 1000.1_2 =8.5_10
% 8.5-8 =0.5
%%
% (c) Is 1.05 exactly representable in this system? Explain why or why not
%% 
% Not representable. Since 1.05_10 = 1.00001100110_2, and non terminating binary it will
% be rounded off 
    
%% Problem 2 (Yup)
%%
% (a) Pivoting is not necessary in Gaussian elimination for wellconditioned systems.
%% 
% False because naive Gaussian elimination with no pivoting will sometimes fail (divide by zero)on a well-conditioned matrix.
%%
% (b) If xa is an approximate solution of a linear system, obtained
% using PA = LU, then xa can be considered accurate provided ||Ax||_inf < 10^-16.

%%
% FALSE 
%%
% (c) Suppose we have computed a factorization A = LU where A is an n*n matrix.
% How would you use this to solve the system AT x = b in O(n2) operations? Be
% precise about the steps you would take, and why your method ends up being
% O(n2).
%%
% IF A = LU then the Ly= b, y1 = b1/L11, y2 = (b2-L21*y1)/L22
% The O(n) time will be needed
%%
% O(n^2) calculations we can get y = Ly = b
% Similarly, Ux = y. U(n,n)= yn/xn, x(n-1) = (y(n-1)-U(n-1,n)*xn)/U(n-1,n-1>>>>)
% Therefore the n^2 time can be resolved 

%% Problem 3 (Yup)
%%
% (a) Prove that g has a root in the interval (2, 3).
%%
g(x) = 4^x-6*x^2;
double(g(2))
double(g(3))
%%
% Since g(x) is continuous on [2, 3], and g(2) = -8 < 0 and f(3) = 10 > 0.
% By the Intermediate Theorem, g(x) has at least one root on the interval [2, 3].

%%
% (b) Suppose we decide to find the root using the bisection method. How many
% iterations are needed to guarantee the root is accurate to within 10^-6, starting
% with the bracket (2,3)?

g = @(x) (4^x)-6*x^2
g(2)*g(3)
a =2 
tol = 10^(-6)
(log(3-a)-log(tol))/log(2)-1
%%
% 19 iterations in total since 18.93 rounded in is 19, we have to take x0 as the
% first iteration
%%
% (c) Show that finding a root of g is equivalent to solving x = log_4(6*x^2)
%%
% 4^x -6*x^2 = 0 -> 4^x = 6x^2
% log_4(4^x)=log_4(6x^2)
% x = log_4(6*x^2)
% QED
%%
% (d) Explain whether or not fixed point iteration will converge for the problem in
% part (c), using any initial guess from the interval (2; 3). [Note that it is not
% enough to check a few values, since the question is about all starting guesses
% from this interval.]
%%
% Guess x is between 2,3  x = log_4(6x^2),
% x = log_4(6x^2)=f(x)
% Updating using x_n+= f(xn)
% According to fixed point thereom, f(x) = log_4(6x^2) is continuous on (2,3)
% f'(x) = 12x *1/(6x^2*ln4)= 2/(ln4*x) exist for all x in (2,3)
%plug in the number for x
% Then lim xn = x, so it converges to a fixed point x for any xi in (2,3)
%% Problem 4(>.<::::()
%%  
% Suppose we attempt to solve the equation x^2 +x^12 = 4 by rewriting as the following
% nonlinear system:
% x^2 +y^2 =4, y= x^8 
%%
% (a) Set up and explain the Newton method to solve this system. Calculate the
% Jacobian and right hand side of the method.

%%
f1(x,y) = x^2 +x^12 - 4;
f2(x,y) = x^2 +y^2 - 4;
f3(x,y) = -x^6 + y;
F = @(x,y) [f2(x,y); f3(x,y)];
DFx = jacobian([ x^2 +y^2,-x^6 + y], [x,y])
%%
% Jacobian (x0) will be [2 2; -6 1]
% [2 2; -6 1]*x^(0) = [ -10; 2 ] This is the newton method first step
% my initial guess for x^(0) is [1, 2]
% Using Gauss elimination we can have [1 2; 0 12]* x^(0)= [-5 ; 7]
% We can put the solution in then
% The right hand side is from x_n+1 = x_n -[DF(xn)]^-1*F(xn)
% xn is the starting guess


%%
% (b) Explain what a good starting guess would be for the solution(s).
%%
% There is no best initial guess (that would be the root itself)
% instead, a suitable initial guess is needed
% if quickly possible, plot the function
% to compute a numerical approximation to a particular root, choose an initial guess close enough to that root
% close enough means a position x0, 
% if evaluation of the function is expensive and/or computing its derivative is not directly possible, 
% in such a case, use evaluated function values for finding the root and simultaneously plotting the function to get a better understanding of its behavior.
% wouse auxiliary or alternative methods, if necessary


%%
% (c) Write down the details for the system of equations needed to make the first
% Newton iteration. Do this without using matrix inverses. [You do NOT have
% to solve this system.]
%%
% To avoid computing inverses method is to get s = DF(xn^-1)*F(xn)
% Fix x0 starting guess 
% Solve for b in the linear system
% Update x1=x0-s
% Repeat the iteration 

%% Problem 5 (Yup)
%%
% Write down the Lagrange interpolating polynomial that interpolates the function
% f(x) = x4 at the points x = -1, x = 0, and x = 2.
%% 
% f(x) = x^4, so the three points are (-1,1) (0,0) (2,16)
% P(x)= (x)(x-2)/((-1)(-3))+0(x+1)(x-2)/((1)(-2))+16*(x+1)(x-0)/((2+1)(2))
% The final answer is P(x)=3x^2+2x
