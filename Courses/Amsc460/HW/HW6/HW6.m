%% AMSC 460 - HW6
clear all; format compact; close all; syms f(x) x y

%% Problem 1
% Obtain the precise operation count (number of operations $+, -,*,/ $) for
% computing a matrix-matrix product $AB$. Suppose each matrix is $n\times n$.


%% Problem 2
%%
% Suppose we have an n × n matrix. In class we discussed how the elimination
% step of Gaussian elimination (LU) is O(n^3), while back-substitution (or forward-
% substitution) is only O(n^2). The back-substitution steps for finding the components
% xi of a solution can be concisely written as xn = bn/unn,xi =1/uii(bi −∑uijxj)
% , for i = n − 1, ..., 1.
%
% Show that the total operation count (number of operations +, −, ∗, /) for 
% constructing x is exactly n^2. 

%% Problem 3
%%
% (Optional, not graded) Write down the forward substitution algorithm and 
% pseudocode for solving an $n\times n$ lower triangular matrix system. 
% [A matrix is lower triangular if $a_{ij}=0$ for $i<j$.