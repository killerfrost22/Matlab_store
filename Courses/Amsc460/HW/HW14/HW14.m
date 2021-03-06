%% AMSC 460 - HW11
clear all; format compact; close all; syms f(x) x y z


%% Problem 2 (
%%
% Consider the function 
% [f(x) = \frac{e^{3x}\sin(200x^2)}{1+20x^2}\]
syms x n 
f(x) = (exp(3*x)*sin(200*x^2)/(1+20*x^2))
ezplot(f(x))
%%
z=6
test = 1: z
for k =1:z
    i = 0:test(k)
    xi = i/z
    spline(xi,fx)
end
%% 
% $|J(x)|\le 1$
%%
% (b)Suppose we would like to approximate $J$ with a Chebyshev interpolant. Determine how many interpolation points  are required on the interval $[0,10]$ so that the error (in the max-norm) is no more than $10^{-6}$. [You don't have to write down the interpolant.]
%% 
%
%% 
% 
%% 
%
% 