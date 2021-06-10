%% AMSC 460 - HW8
clear all; format compact; close all; syms f(x) x y

%% Problem 1 (finished)
%% 
% Let A ∈ R2×2 be given by A = [1 1+ ϵ; 1- ϵ 1]
% Find kAk∞ and kA−1k∞. What is cond∞(A)? Is this matrix well-conditioned or ill-conditioned?
% Let b = [1 + (1 + ϵ )ϵ, 1]^T. Find the exact solution of Ax = b. Use MATLAB’s
% backslash command to solve Ax = b for progressively smaller values of ϵ = 10^k
% for k = −5, −6, .... At which value of ϵ does the computed solution no longer accurately
% represent the true solution?

img = imread('amsc460hw3p3.jpg'); imshow(img)

%%
k = 5;
while k < 9
    e = 10^-k; % use e to represnt ϵ
    A=[1 1+e; 1-e 1];
    b = transpose([1 + (1 + e )*e, 1]);
    x=A\b
    fprintf(['\twhen ϵ = 10^-%.1f\n'], k)
    k = k + 1;
end
%%
%    At ϵ = 10^-7 the computed solution no longer accurately represent the true solution.



%% Problem 2 (Yup)
%%
% (MATLAB) Consider the system Ax = b where b = [.254 .127]^T and
% A = [.913 .659; .457 .330].Use the MATLAB backslash command to find the exact solution x. Usethe
% command cond to find the 2-norm condition number of A.
% Consider the two approximate solutions x1 = [−0.0827 0.5]^T, and x2 = [0.999 − 1.001]^T
% Using the norm command, compute
% (a) the relative forward errors for x1 and x2 using the 2-norm
% (b) the relative backward errors for x1 and x2
% Comment on the size of your backward and forward errors. Does a small backward
% error imply an approximate solution is accurate? How do your observations relate
% to the condition number of A?

A = [0.913 0.659; 0.457 0.330];
b = transpose([0.254 0.127]);
x = A\b
Two_norm_condition_number_of_A = cond(A,2)

x1 = transpose([-0.0827 0.5]);
x2 = transpose([0.999 -1.001]);

relative_forward_errors_for_x1 = cond(x-x1,2)/cond(x,2)
relative_forward_errors_for_x2 = cond(x-x2,2)/cond(x,2)

%%
%    relative forward errors for x1 and x2 are small

relative_backward_errors_for_x1 = cond(b-A*x1,2)/cond(b,2)
relative_backward_errors_for_x2 = cond(b-A*x2,2)/cond(b,2)

%%
%    relative backward errors for x1 and x2 are small

%%
%    A small backward error does not imply an approximate solution is
%    accurate. The condition number of A is equal to  1.248e+04 which is
%    very large, which is bad and we call it ill-conditioned, and we expect
%    to lose 4 digits of accuracy in computing x.


%%
 A = [2 1; 4 3]
 [L,U,P] = lu(A)


%% Problem 3 (optional)
%%
% Let D ∈ Rn×n be the diagonal matrix with d1, d2, ..., dn on the diagonal. Show that
% the ∞-condition number is given by cond∞(D) = maxi|di| / mini|di|.
% 

%% Problem 4
%%
%% Problem 5
