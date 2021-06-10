%% AMSC 460 - HW7
clear all; format compact; close all; syms f(x) x y

%% Problem 1
% Obtain the precise operation count (number of operations $+, -,*,/ $) for
% computing a matrix-matrix product $AB$. Suppose each matrix is $n\times n$.


%% Problem 2
%%
% Find the P A = LU decomposition (using partial pivoting) for the matrix
% A = [2 1; 4 3] All calculations should be recorded and done by hand. Check your answer using
% MATLAB’s lu command.


%%
 A = [2 1; 4 3]
 [L,U,P] = lu(A)


%% Problem 3
%%
% (Optional, not graded) Find the LU decomposition of 
% A = [4 2 0; 4 4 2; 2 2 3]

%% Problem4
%%
%% Problem 3
% (Optional, not graded) Suppose $L$ is a nonsingular lower tr  iangular matrix, 
% $P$ is a permutation matrix, and $\textbf{b}$ is a given vector. How would 
% you efficiently solve the following two linear systems? Without using 
% inverses of course... Comment on the operation counts involved. 
% [Consider that permutation matrices $P$ are orthogonal, so we know $P^{-1}=P^T$.]
