%% AMSC 460 - HW11
clear all; format compact; close all; syms f(x) x y z

%% Problem 1 

%%
% Use Newton's divided differences to find the Newton table, and a polynomial for interpolating the points $(-1,0),(2,1),(3,1),(5,2)$.

%% 
% P(x) = 1/3*(x+1)-1/12(x+1)(x-2) + 1/24(x+1)(x-2)(x-3)
%%
% = (1/3)x+1/3 -(1/12)x^2+(1/12)x+1/6 +(1/24)x^3-(1/6)x^2+(1/24)x+1/4
%%
% = (1/24)x^3-(1/4)x^2+(11/24)x+3/4
%% Problem 2 (
%%
% Let $P(x)$ be the degree 10 polynomial taking the value zero at  $x=1,2,...,10$ and where $P(12)=66$. Find $P(0)$. (Hint: Choose the interpolant basis wisely.)
%% 
% P(x) = a(x-1)(x-2)(x-3)...(x-10)
% and P(12) = 66
% P(12) = a(12-1)(12-2)(12-3)...(12-10) =66
%% 
% a *11! = 66 so we have a = 66/11!
%% 
% Therefore P(x) = 66/11!(x-1)(x-2)(x-3)...(x-10)
% So we can say P(0)= (66/11!)*10!=66/11=6