%% AMSC 460 - HW15
clear all; format compact; close all; syms f(x) x y z


%% Problem 1

%%
C = dlmread('OrbitData2.txt');
X = C(:,1);
Y = C(:,2);
Z = C(:,3);
plot3(X,Y,Z,'.','MarkerSize',10)
xlabel('X-Axis')
ylabel('Y-Axis')
zlabel('Z-Axis')
%%
% (a)Center the X; Y;Z coordinates around zero. For example, to center the x-values
% you would compute X 􀀀 X
%%
xyz0 = mean(C)
D = bsxfun(@minus,C,xyz0)

%%
% (b)The general equation of a sphere centered at the origin can be written
   %\[ax^2 +by^2 + c = z^2,\]
%% 
X2 = D(:,1).^2;
Y2 = D(:,2).^2;
A = zeros(1000,3);
A(:,1) = X2;
A(:,2) = Y2;
A(:,3) = 1;
w = D(:,3).^2;
%% 
% (c)Solve the normal equations for the system $A{\bf{u}} = {\bf{w}}$ to get the least-squares solution ${\bf{u}}$. (It is wise to compute $\mathrm{cond}(A^T A)$ to check the quality of the solution!)
%% 
A_T = A.'
B = A_T*A
C = A_T*w
tu = B\C
% tu is [-0.8012, -0.7230, 2.6731]^T
%%
% (d)Plot the coordinate data points and the equation of the ellipse in the same figure. (Use \texttt{fimplicit3} to plot the sphere. Also if the viewing angle is bad when publishing, you can change it by using the command \texttt{view}.)
f = @(x,y,z) 0.8012*x.^2 +0.7230*y.^2 -7.6731+z.^2;
fimplicit3(f)
xlabel('X-Axis')
ylabel('Y-Axis')
zlabel('Z-Axis')
%%
% (e) Compute the error for the fit using the Euclidean norm $\|\cdot\|_2$ of the residual ${\bf{r}} = {\bf{w}} - A{\bf{u}}.$
r = w-A*tu
norm(r,2)