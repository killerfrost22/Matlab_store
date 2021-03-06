%% AMSC 460 - HW7
clear all; format compact; close all; syms f(x) x y

%% Problem 1
% Obtain the precise operation count (number of operations $+, -,*,/ $) for
% computing a matrix-matrix product $AB$. Suppose each matrix is $n\times n$.
%%
% Since LU decomposition is O(n^2)
% The total of 0.001 seconds solving Cx=b using an LU decomposition
% Solving Ax =b using LU may take 0.0001* ((10^12)/(10^4))= 10^5 seconds
% which will be around 28 hours, in that case we will not consider LU to
% solve Ax = b 

%% Problem 2
%%
% Find the P A = LU decomposition (using partial pivoting) for the matrix
% A = [2 1; 4 3] All calculations should be recorded and done by hand. Check your answer using
% MATLAB’s lu command.


%%
 A = [2 1; 4 3]
 [L,U,P] = lu(A)

