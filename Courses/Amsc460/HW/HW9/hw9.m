%% AMSC 460 - HW8
clear all; format compact; close all; syms f(x) x y

%% Problem 1 (finished)
%% 
% Rearrange the following equations to form a strictly diagonally dominant system.
% Apply two steps of Jacobi and Gauss-Seidel methods starting with the zero vector.


%%
% The rearranged diagonally dominant system is 
syms u v
[1 3; 5 4] * [u;v] == [-1 ; 6]
%%
% solving for u and v
% u = (6-4v)/5, v= (-1-u)/3 
%%
% Using Jacobi method:
% [u0 ; v0] = [0 ; 0]
% So [u1; v1] = [6/5; -1/3]
%%
% [u2 ;v2] = [22/15; -11/15]
%%
% Gauss-Seidel Method:
% [u0 ; v0] = [0 ; 0]
% So [u1; v1] = [6/5; (-1-6/5)/3] = [6/5; -11/15]
%%
% [u2 ;v2] = [(6-(-44/15))/5 ; (-1-(134/75))/3] = [134/75; -209/225]

%% Problem 2 (Yup)
%%
% Ax = b
% using Jacobi method, (D+R)x= b 
% So , Dx = b-Rx, and x = D^-1(b-RX)
% Therefore x_n=1 = D^-1(b-RXn)
%%
% The Jacobi method for x_n+1 = D^-1(b-Rxxn)
%%
% x_1^(k+1) = (bi -a12*x^k-a13*x3^k)/a11
%%
% x_2^(k+1) = (bi+2 -a21*x^k-a23*x3^k)/a22
%%
% x_3^(k+1) = (bi+2 -a31*x^k-a33*x3^k)/a33
%%
% x_n^(k+1) = (bi+n -an1*x^k-an3*x3^k)/ann

%%
% Therefore the Jacobi method is given for matrix A