%% AMSC 460 - HW6
clear all; format compact; close all; syms f(x) x y

%% Problem 1
% Obtain the precise operation count (number of operations $+, -,*,/ $) for
% computing a matrix-matrix product $AB$. Suppose each matrix is $n\times n$.

%% 
% (AB)ij = ∑aibkj (1<=i<=n&1<=j<=n). For matrix B the ith component will have n
% multiplications, and n -1 additions . The total amout will be 2n-1 for
% each i. 

%% 
% The total count for bij in matrix B * A is n(2n-1) = 2n^3-n
% Since B is n*n matrix , so the total operation wil be n*n(2n-1)= 2n^3-n^2
%%
% O(n^3)
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
% 
%%
for j = n to 1
  if uij=0 stop
  xj = bj/uij
     for i = 1 to j-1
         bi = bi-uijxj
     end
end

%% 
% Since it is a n*n matrix, for every i, the operation will be consisted of 1 divion 
% 1 subtraction and (n-(i+1))+1 = n-i multiplications and n-i-1 addditions
%
% Adding up all operations and sum it from i =1 to n we can have (2n-1=1)/2 = n^2
% So the total operation count is n^2 
