%% AMSC 460 - HW16
clear all; format compact; close all; syms f(x) x y z


%% Problem 1
%%
% (a) Using MATLAB's backslash command, find the solution to the normal equations $A^T Ax = A^T b$.
%
%%
A = [1+10^(-8) -1;-1 1;1 -1]
b = [2;1;-1]
%%
AT = A.';
B = AT*A;
C = AT*b;
x1 = B\C

%%
% (b)Using MATLAB's \texttt{qr} command and backslash, find the solution to the triangular system $\widehat{R} x = (Q^T b)_{1:n}$. Compare this to the solution to the normal equations. How far apart are the answers?  Compute the distance in a norm of your choice.
%% 
[Q,R] = qr(A)
%%
Qt = Q.'
D = Qt*b
x2 = R\D
distance = abs(x1-x2)
norm(x1-x2)
%% 
% (c)Using MATLAB's \texttt{cond} command, what are the condition numbers of $A$, $A^T A$, and $\widehat{R}$? Which condition number should we worry about in double precision floating point arithmetic? Which computed answer is more accurate? 
%% 
cond(A)
%%
% Condition number of $A$, $A^T
cond(B)
cond(R)
% Since all of the items are much larger than 1 so both moethods are bad
% Therefore the QR decomposition is more accurate 