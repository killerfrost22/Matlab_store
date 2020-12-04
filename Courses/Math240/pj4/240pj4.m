clear all;
%Name Yizhan Ao MATH240 Project4
%% Problem 1
format rat 
%(a)
e = [1 0 0 0 ; 0 1 0 0; 0 0 1 0; 0 0 0 1]
B = [1 1 2 4 ; 0 2 -1 -1; 0 0 3 0; 0 0 0 1]
C = [1 2 0 0 ; 3 1 3 3; 0 0 -1 0; 1 0 4 0]
%Since e is 4*4 I, B = eP(e<-B) = IP(E<-B) 
%and C = EP(E<-C) =IP(E<-C)= P(E<-C)
P = B
Q = C

%(b)
R = (Q^-1)*P

%(C)
t3_e = [0; 0; 0; 1]
t3_C = (Q^-1)*t3_e

%(d)
pt_B = [0; 1;2;3]
pt_c = R*pt_B

%(e)
syms x
p(x) = 0*1+1(1+2*x)+2*(2-x+3*x^2)+3*(4-x+x^3)
%
%% Problem 2
format short 
A = [163 34 -8; -522 -108 26; 990 210 -47]
%(a)
[P,D] = eig(A)

%(b)
P*D*inv(P)
A
%YEs they are identical

%(c)
E1 = D(1,1)
V1 = P(:,1)
E2 = D(2,2)
V2 = P(:,2)
E3 = D(3,3)
V3 = P(:,3)
%E1,E2,E3 are eigenvalues an v1,2,3 are the eigen vectors 

%% Problem 3
A = [-23 -32 -10; 11 15 5; 18 26 7]
%(a)
A^2
A^3
A^4
A^5
A^6
A^7
A^8
%Pattern A^(4k) = I， k>0
%(b)
[P,D] = eig(A)
%(c)
D
D^2
D^3
D^4
%we cam further observe the fact that D^4 will be the identity matrix and
%the pattern is D^4*k where the k is 1,2,3,4 ...
%(d)
% 10000001 = 4n +1, n = 250000
%% Problem 4
%(a)
A = [3 1; 0 3]
[P,D] = eig(A)
%(b)
%from the part A we can tell P is not invertible 
P*D*inv(P)
%A is not equal to pdp^-1
%(c)
%Basis is for the eigenspace = [1;0]
%(d)
%There is no such basis that for R^2 therefore part b is wrong
%% Problem 5
%(a)
V1 = [ 8 -11 -11 -6 1 ]'
V2 = [ 15 7 -5 -6 11]'
V3 = [ 13 5 -7 -12 11]'
V4 = [ 3 14 -13 3 -6]'
%(b)
A = [V1 V2 V3 V4]
rref(A)
rank(A)
%there is a pivot in each column therefore the v1 v2 v3 v4 are linearly
%independent So v1- v4 are also linearly independent and form a basis for W

%(c)
W1 = V1 
W2 = V2 -(dot(V2,W1)/ dot(W1,W1))*W1
%(d)
W3 = V3 -(dot(V3,W1)/dot(W1,W1))*W1- 
%(e)

%(f)

%(g)

%% Problem 6
W= [5 9 -2 2 -1; -5 -12 -4 3 -2; 0 2 4 -2 2; -4 -3 10 -4 5]
%(a)
rank(W)
%(b)
A = (rref(W))
B =A
%(c)

%(d)

%(e)

%(f)

%(g)
