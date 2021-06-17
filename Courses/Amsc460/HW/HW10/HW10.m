%% AMSC 460 - HW10
clear all; format compact; close all; syms f(x) x y z

%% Problem 1 (finished)(AFFRImative)
%%
% Consider the following system of equations.
% f1(x, y, z) = x^2 + y^2 + z^2 − 1 = 0,
% f2(x, y, z) = 2x^2 + y^2 − 2z = 0, 
% f3(x, y, z) = 3x^2 − 4y + z^2 = 0
% This system can be concisely represented as F(x) = 0, where F(x) = (f1, f2, f3)^T,
% x = (x, y, z)^T and 0 = (0, 0, 0)^T.

%%
% (i) Find the Jacobian matrix DF(x).

f1(x, y, z) = x^2 + y^2 + z^2 - 1;
f2(x, y, z) = 2*x^2 + y^2 - 2*z; 
f3(x, y, z) = 3*x^2 - 4*y + z^2;
F = @(x,y,z) [f1(x,y,z);f2(x,y,z); f3(x,y,z)];
DFx = jacobian([x^2 + y^2 + z^2,2*x^2 + y^2 - 2*z, 3*x^2 - 4*y + z^2], [x, y, z])

%%
% (ii) (MATLAB) Starting with the initial condition x0 = (0.5, 0.5, 0.5)^T, implement 5
% steps of the multivariable Newton method to find the approximation x5.

x0 = [0.5; 0.5 ; 0.5]
i = 0;
while i < 5
    DFx0(1,1) = 2*x0(1); DFx0(1,2) = 2*x0(2); DFx0(1,3) = 2*x0(3);
    DFx0(2,1) = 4*x0(1); DFx0(2,2) = 2*x0(2); DFx0(2,3) = -2;
    DFx0(3,1) = 6*x0(1); DFx0(3,2) = -4; DFx0(3,3) = 2*x0(3);
    Fx0 =[ (x0(1)^2 + x0(2)^2 + x0(3)^2 -1) ; (2*x0(1)^2 + x0(2)^2 - 2*x0(3)); (3*x0(1)^2 - 4*x0(2) + x0(3)^2)];
    S = DFx0\Fx0;
    x1 = x0 - S;
    x0 = x1
    i = i+1;
    fprintf('\tAfter %g steps\n', i)
end


%%
% (iii) Compute the absolute backward error of the approximate solution x5 in the 2-norm.
x5= [0.6907;0.4401;0.5739]
a = f1(0.6907,0.4401,0.5739)
b = f2(0.6907,0.4401,0.5739)
c = f3(0.6907,0.4401,0.5739)
Fdx = F(a,b,c)
M = norm(Fdx,2)
ans = double(norm(Fdx,2))