%% AMSC 460 - HW11
clear all; format compact; close all; syms f(x) x y z

%% Problem 1 
%%
% Suppose in designing a natural logarithm function for a calculator on the interval $[1,e]$, we are using a Chebyshev polynomial approximation. What is the smallest degree $n$ of the polynomial that ensures an accuracy of $10^{-6}$ over the interval $[1,e]$?
%%
% From Chebyshev polynomial we have [a,b]=[1,e] and f(x)=lnx. The maximum
% will be(n-1)! where 

%%  
% because the maximum of 1/z on [1, e] occurs at z = 1. We now look for an integer d such that the error
% is strictly smaller than 10^−6

%% 
% d = 10 error ≤ 1.7*10^−5
%%
% d = 13 error ≤ 1.04*10^−6
%%
% d = 14 error ≤ 4.17·10^−7

%%
% Thus n = 14 is required, the (n-1)th degree polynomial so 13.
%%
% 
%% Problem 2 (
%%
% Special functions appear in physics and applied mathematics, often as a solution to some ODE. The following function is in the \emph{Bessel} family (\url{https://en.wikipedia.org/wiki/Bessel_function})[J(x) = \frac{1}{\pi}\int_0^\pi\!\cos(x\sin(s))\,\mathrm{d}s.\]

%%
% (a)Show that $|J(x)|\le 1$, $|J'(x)|\le 1$, $|J''(x)|\le 1$, and in general that $|J^{(k)}(x)|\le 1$ for any positive integer $k$.

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