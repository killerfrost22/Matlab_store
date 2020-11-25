clear all;
%Name Yizhan Ao MATH240 Project1
%% Problem 1
%(a)
A = [1 1 2 5; -2 -7 -2 -14; 3 -2 5 32];
%(b)
A(2,:)=A(2,:)+2*A(1,:);
A(3,:)=A(3,:)+-3*A(1,:);
A(3,:)=(A(3,:)-A(2,:))/(-3);

%(c)
A(2,:)=(A(2,:)-2*A(3,:))/(-5);
A(1,:)=A(1,:)-A(2,:)-2*A(3,:);
%(d)
A = [1 0 0 21; 0 1 0 -2; 0 0 1 -7]
%% Problem 2
%(a)
B = [1 -2 0 4 -1 4; -3 3 12 -17 5 -9; 2 -4 0 11 4 17; 1 -20 72 -32 -1 4];
%(b)
B(3,:)=(B(3,:)-2*B(1,:))/3;
B(4,:)=B(4,:)-B(1,:);
B(2,:)=B(2,:)+3*B(1,:);
B(4,:)=0;
B(2,:)=B(2,:)/-3;
%(c)
B(2,:)=B(2,:)-(5/3)*B(3,:);
B(1,:)=B(1,:)+2*B(2,:)-4*B(3,:);

%(d)
C = [1 -2 0 4 -1 4; -3 3 12 -17 5 -9; 2 -4 0 11 4 17; 1 -20 72 -32 -1 4];
C = rref(C);
%(e)
syms x1 x2 x3 x4 
[1 0 0 0]*x1 + [-8 -4 0 0]*x2 +[0 0 1 0]*x3 + [-17 -4 2 0]*x4 == [-20 -6 -3 0];
%% Problem 3
%(a)
A = [8 3 -3 3; 5 -3 -7 2; 5 6 -5 -6];
format long;
A = double(rref(A));
%(b)
C = [8 3 -3; 5 -3 -7; 5 6 -5]; 
D=[3; 2 ;-6];
format long 
D= linsolve(C,D);
%(c)
A = [8 3 -3 3; 5 -3 -7 2; 5 6 -5 -6];
format rat;
A = double(rref(A));
%(d)
C = [8 3 -3; 5 -3 -7; 5 6 -5]; 
D=[3; 2 ;-6];
format rat;
D= linsolve(C,D);
%% Problem 4
%(a)
syms N
% no shells
M = [270 51 70 400; 10 5.4 15 30; 2 5.2 0 10];
format long;
N = rref(M);
% Answer: 0.99 Serving of mac&cheese 1.54 serving of brocoli and 0.79
% serving of chicken

%(b)
O = [260 51 70 400; 9 5.4 15 30; 5 5.2 0 10];
format long;
P = rref(O)
% Answer: 1.09 Serving of shells 0.88 serving of brocoli and 1.03
% serving of chicken
%% Problem 5
%(a)
R = [25.1 26.1 24.1; 20.9 15.9 17.9; 27.7 23.7 24.7];
R = rref(R);
%(b)
%No because last row is not inbound it is an zero array
%(c)
%No Linearly dependent because there is a unique solution to this matrix
%The solutionis R^2 and the matrix isR3 so we are linearly independent
%% Problem 6
%(a)
syms a b;
%(b)
A = [8 -5  a; 4 1 b];
A = rref(A);
%(c)
syms w1 w2;
w1=a/28 + (5*b)/28;
w2=(2*b)/7 - a/7;

%% Problem 7
%（a）
A = [7 6 7 9 -7; 1 -2 5 11 0; 4 -2 8 20 4; 2 -3 1 11 -5];
A = rref(A);

%(b)
% this is linearly dependent because the vector of row 4 doesn't make sense
% 0 = 1 therefore it is linearly dependet

%(c)
syms x1 x2 x3 x4 x5
2*x1 - 3*x2 +4*x3 - 6*x4 ==7 ;

%(d)
%If a set S = { v1, ... , v P} in IB.11 contains the zero vector, then the set is linearly
%dependent
%(e)
% No it doesn't span in the R4 because it doesn;t have a solution in R4 R3
% is empty when we do the reduced row echelon form