clear all;
%Name Yizhan Ao MATH240 Project4
%% Problem 1
format rat 
syms x
%(a)
e = [1 0 0 0 ; 0 1 0 0; 0 0 1 0; 0 0 0 1]
B = [1 1 2 4 ; 0 2 -1 -1; 0 0 3 0; 0 0 0 1]
C = [1 2 0 0 ; 3 1 3 3; 0 0 -1 0; 1 0 4 0]
%Since e is 4*4 I, B = eP(e<-B) = IP(E<-B) 
%and C = EP(E<-C) =IP(E<-C)= P(E<-C)
P = B
Q = C

%(b)
A = inv(Q)
R= A*P

%(C)
X = [ 0 0 0 1]'
R*X

%(d)
pt_B = [0 3 2 1]'
pt_c = R*pt_B

%(e)
P * pt_B 
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
V1 = [ 9 14 -11 3 0 ]'
V2 = [ -14 -4 -10 9 -5]'
V3 = [ 1 -10 4 -7 5]'
V4 = [ 6 8 -1 -12 -8]'
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
W3 = V3 -(dot(V3,W1)/dot(W1,W1))*W1- (dot(V3,W2)/ dot(W2,W2))*W2
W4 = V4 -(dot(V4,W1)/dot(W1,W1))*W1- (dot(V4,W2)/ dot(W2,W2))*W2- (dot(V4,W3)/dot(W3,W3))*W3 
 
%(e)
K1 = W1/norm(W1)
K2 = W2/norm(W2)
K3 = W3/norm(W3)
K4 = W4/norm(W4)
%(f)
Q = [K1 K2 K3 K4]
Q'*Q
%Q columns are orthogonal  since its transpose is equal to its identity
%matrix 
%(g)
R = Q'*A
Q*R
A
%A = Q*R
%(h)
[Q1 R1] = qr(A,0)
Q
R

%% Problem 6
W= [5 9 -2 2 -1; -5 -12 -4 3 -2; 0 2 4 -2 2; -4 -3 10 -4 5]
v1= [5 -5 0 -4 -3 4]'
v2= [9 -12 2 -3 -7 2]'
v3= [-2 -4 4 10 -2 -12]'
v4= [2 3 -2 -4 -2 7]'
v5 =[-1 -2 2 5 -1 -6]' 
A = [v1 v2 v3 v4 v5]
%(a)
rank(W)
rref(W)
%(b)
%only v1 v2 v4 has basis for W
B = [ V1 V2 V4] 
%(c)
[Q, R] = qr(B)
%(d)
e = Q*Q'
v = [1 1 1 1 1 ]'
e * v
%(e)
F = B'
rref(F)
%(f)
w1 = v1 
w2 = v2 -(dot(v2,w1)/dot(w1,w1))*w1
w3 = v3 -(dot(v3,w1)/dot(w1,w1))*w1 -(dot(v3,w2)/dot(w2,w2))*w2
w4 = v4 -(dot(v4,w1)/dot(w1,w1))*w1 -(dot(v4,w2)/dot(w2,w2))*w2 - (dot(v4,w3)/dot(w3,w3))*w3
w5 = v5 -(dot(v5,w1)/dot(w1,w1))*w1 -(dot(v5,w2)/dot(w2,w2))*w2 - (dot(v5,w3)/dot(w3,w3))*w3 - (dot(v5,w4)/dot(w4,w4))*w4
%(g)
M = [w1 w2 w3 w4 w5]
A.*v1