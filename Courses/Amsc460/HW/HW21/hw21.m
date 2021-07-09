%% AMSC 460 - HW21
clear all; format compact; close all; syms f(x) x y z


%% Problem 1
%%
% If using the composite trapezoid rule, how many subintervals are needed to approximate the integral to within an absolute error of $10^{-8}$?
%
%%
img = imread('amsc460p1.jpg'); imshow(img)
syms n
vpasolve(9*exp(3)/(12*n^2)== 10^(-8))
%% Problem 2

%%
% Implement the composite trapezoid rule in MATLAB. For $n = 10^p$, with $p=1,2,3,4$, keep track of the error $E_T(n) = |I-T(f,n)|$, where $T(f,n)$ denotes the trapezoid rule with $n$ subintervals. Plot $E_T$ for the given values of $n$ on the same plot (use logarithmic axes for better scaling). Does your plot agree with the analysis performed in part (a)? \\
%%
I = int(f,0,1)
p=1:4;
for i=1:length(p)
    n(i)=10^p(i);
    T = trapz(f,n(i));
    E(i) = abs(I - T);
    fprintf('\n 10^%g T = %f, the error is %.9f',p(i),T,E(i));
end
