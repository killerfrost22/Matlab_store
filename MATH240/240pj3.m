clear all;
%Name Yizhan Ao MATH240 Project3
%% Problem 1
%(a)
V1=[-6 4 -9 4]'
V2=[8 -3 7 -3]'
V3=[-9 5 -8 3]'
x=[4 7 -8 3]'
A=[V1 V2 V3 x]
rref(A)
%% Problem 2
%(a)
format short
A=[1 cos(0) (cos(0))^2 (cos(0))^3;1 (cos(0.1)) (cos(0.1))^2 (cos(0.1))^3;1 (cos(0.2)) (cos(0.2))^2 (cos(0.2))^3;1 (cos(0.3)) (cos(0.3))^2 (cos(0.3))^3
%(b)
rref(A)
det(A)
%(c)
%when the set of function <1 cos(t) cos(t^2) cos(t^3)> is invertile only 
%are linearly independent for all t. So, Ax=0 has only trivial solution and
%it is trivial only when A is invertible.
%(d)
B=[1 cos(0) (cos(0))^2 (cos(0))^3;1 cos(0.2) (cos(0.2))^2 (cos(0.2))^3;1 cos(0.5) (cos(0.5))^2 (cos(0.5))^3;1 cos(1) (cos(1))^2 (cos(1))^3]
rref(B)
det(B)
%(e)
%Since we know that sin(t)^2+cos(t)^2=1. So, 1, (sin(t))^2, (cos(t))^2 is
%linearly dependent.
%% Problem 3
%(a)
v1=[1 0 0 0 0 0 0]';
v2=[0 1 0 0 0 0 0]';
v3=[-1 0 2 0 0 0 0]';
v4=[0 -3 0 4 0 0 0]';
v5=[1 0 -8 0 8 0 0]';
v6=[0 5 0 -20 0 16 0]';
v7=[-1 0 18 0 -48 0 32]';
A=[v1 v2 v3 v4 v5 v6 v7]
rref(A)
%(b)
%it has pivot in every column, so C is linearly independent.
%(c)
%C is a basis for H because B is the basis for H. B spans C, so C is also a
%basis for B
%% Problem 4
format rat
A=[-2 2 1 8 2;1 -10 22 11 11;1 -4 7 1 3;-2 -4 16 18 10]
%(a)
rank(A)
ans = 2
%(b)
%rank(A)+dim(NulA)=4
%dim(NulA)=2, dim(ColA)=rank(A), hence dim(ColA)=2
%(c)
rref(A)
%(i)
%rref(A)=0
%X1-3(X3)-(17/3)(X4)-(7/3)(X5)=0
%X2-(5/2)(X3)-(5/3)(X4)-(4/3)(X5)=0
%X1=3(X3)+(17/3)(X4)+(7/3)(X5)
%X2=(5/2)X3+(5/3)X4+(4/3)(X5)
%X=X3[3;5/2;1;0;0]+X4[17/3;5/3;0;1;0]+X5[7/3;4/3;0;0;1]
%Basis for Nul(A)={[3;5/2;1;0;0],[17/3;5/3;0;1;0],[7/3;4/3;0;0;1]}
%(ii)
%Basis for Col(A)={[-2;1;1;-2],[2;-10;-4;-4]}
%(iii)
%Basis for row(A)={[1 0 -3 -(17/3) -(7/3)],[0 1 -(5/2) -(5/3) -(4/3)]}
%% Problem 5
%(a)
v1=[4 3 7 3]'
v2=[2 1 1 -1]'
v3=[1 1 3 2]'
v4=[-3 5 8 1]'
v5=[5 3 5 0]'
%(b)
A=[v1 v2 v3 v4 v5]
rref(A)
%(c)
%A is not linearly independent because there are only 3 pivots
%dim(W)=3, basis for W={4+3t+7t^2+3t^3, 2+t+t^2-t^3, -3+5t+8t^2+t^3}
%part(d)
%W is not equal to P3, dim(W)=3 but dim(P3)=4. 3<4. Hence W is not equal to
%%Problem 6
%(a)
v1=[2 -3 4 -2 1 2]'
v2=[0 -4 0 -3 2 1]'
v3=[2 0 4 5 -2 -1]'
v4=[1 -12 2 3 2 -2]'
%(b)
V=[v1 v2 v3 v4]
rref(V)
%col 4 can be as linear combination of other three columns.
%So,they are linearly independent.
%part(c)
%v4=-2*v1+(9/2)*v2+(5/2)*v3. Hence, A4=-2A1+(9/2)A2+(5/2)A3