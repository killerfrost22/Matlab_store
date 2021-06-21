%% AMSC 460 - HW11
clear all; format compact; close all; syms f(x) x y z

%% Problem 1 (finished)(AFFRImative)

%%
% Write down the polynomial that interpolates f(x) = e^x at the points x0 = 0 and
% x1 = 1 in Lagrange form and Newton form (using divided differences). Check that
% these polynomials are the same.
%%
% f(x) = e^x, so the three points are (0,1) (1,e) 
% P(x)= 1((x-1)/(0-1))+e((x-0)/(1-0))
% The final answer is P(x)=ex-x+1

%% Problem 2 (WTh）
%%
% The Vandermonde matrix can be badly conditioned and is not ideal for solving
% many interpolation problems. On the other hand, some of this ill-conditioning can
% be mitigated by scaling the data. Suppose we are given data points (x0, y0), ..,(xn, yn)
% with x0 < x1 < ... < xn. Consider scaling the x values by letting zi = xi - α/β
% where α and β are given numbers with β > 0. The data points (xi, yi) change to
% (zi, yi), and the interpolation polynomial changes to
% pn(z) = a0 + a1z + · · · + anzn.

%%
% (a) The original data interval is x0 ≤ x ≤ xn. What is the data interval when using
% z = (x − α)/β? What matrix equation must be solved to find the a’is in the above formula for pn(z)?

%%
% (b) Taking a hint from the previous step, the data will be scaled so that the new
% data interval is instead −1 ≤ z ≤ 1. What must α and β be here?
%%
%    Then z0 = (x0-α)/β = -1  => x0 = -β+α
%    and  zn = (xn-α)/β = 1   => xn =  β+α
%    Then x0 + xn = -β+α+β+α = 2α
%         =>      α = (x0 + xn) / 2
%    and  xn - x0 = β+α - (-β+α) = 2β
%         =>      β = (xn - x0) / 2

%%
% (c) Consider the following population data for the USA over the 100 year period
% between 1900 and 2000.
% The y values represent the population of the USA in millions. Using the direct
% approach (Vandermonde), plot the interpolation function using the original xi
% data. You should use MATLAB’s vander command to construct the Vandermode matrix V .
% Using MATLABs cond commmand, what is the condition
% number cond(V) of the associated Vandermonde matrix V ?

x = [1900 1910 1920 1930 1940 1950 1960 1970 1980 1990 2000];
y = [76.21; 92.23; 106; 123.2; 151.3; 179.3; 203.3; 226.5; 248.8; 281.4; 308.7]*1000000;
V = vander(x)
%%
cond(V)
%%
p = V\y;
t = linspace(1900,2000,11);
f = polyval(p,t);
plot(x,y,'o',t,f,'r-+')
legend({'given y', 'estimate y using Vandermonde'})

%%
% (d) Using the same population data from part (c), scale the data to [−1, 1] and find
% the coefficients for pn(z). What is the condition number in this case? Once the a'is are computed
% the resulting (unscaled) polynomial is
% pn(x) = a0 + a1(x − α/β) + · · ·an(x − α/β)^n.
%
% Plot this function and compare it with the function you found in part (c). Com-
% ment on the difference between the two.

a = (2000+1900)/2; % α = (x0 + xn) / 2
b = (2000-1900)/2; % β = (xn - x0) / 2
disp('Scale the data to [−1, 1]：')
z = (x-a)/b
%%
disp('The new Vandermode matrix V：')
Vz = vander(z)
%%
disp('The new condition number：')
cond(Vz)
%%
disp('the coefficients for pn(z)：')
p2 = Vz\y
%%
t = linspace(-1,1,11);
f2 = polyval(p2,t);
plot(z,y,'o',t,f2,'g-+')
legend({'given y', 'estimate y using Vandermonde'})
%%
%    The y using interpolation function in 4(d) is more accurate,
%    Also the condition number in 4(d) is way smaller than the condition number in 4(c)
