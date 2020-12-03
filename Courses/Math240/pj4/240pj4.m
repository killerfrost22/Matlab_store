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

%(d)

%% Problem 4
%(a)

%(b)

%(c)

%(d)

%% Problem 5
%(a)

%(b)

%(c)

%(d)

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
