%% Ruiqi Lai
%% 1
clear all;
%% 2
syms x;
%% 3
p3 = cos(26)
%% 4
p4 = sin(sin(24))
%% 5
A = sin(sin(32));
p5 = radtodeg(A)
%% 6
p6 = radtodeg(atan(cos(41)))
%% 7 
p7 = log2(40)+ log(32)/log(6)
%% 8
syms x;
p8 = solve(4*x + 7 == 22)
clear;
%% 9
syms x;
p9 = solve(1+9*x^2+8*x^3+4*x^4 == 1-7*x^2-8*x^3+9*x^4)
clear;
%% 10
p10 = (442^2 + 492^2 - 2*442*492*cos(32))^0.5
%% 11
syms t;
p11 = simplify(3/(4*(5+(4-t)))+(5*(6/2-(6+t))))
clear;
%% 12
syms x y;
A = (x*y - 7*x ==5);
B = (y - 3*x == 6);
eqns = [A,B];
vars=[x y];
[p12x,p12y]=solve(eqns,vars)
clear;
%% 13
p13 = 50^0.5
%% 14
p14 = p13+32
%% 15
p15 = (p14/5)^0.5
%% 16
p16 = cos(5*p15)
%% 17
syms b x;
p17 = solve(9*x^2+b*x+2==0,b)
clear;
%% 18
syms a b;
p18 = solve(8*a*b+b+4/b==7*a,b)
clear;
%% 19
syms f(x) x;
 f(x) = 7*x^2 +9*x+2
%% 20
p20 = f(6)*f(7)+f(9+f(8))+f(f(2)*f(9))
%% 21
p21 = simplify(f(1-5*x^2 - 4*x^3 +4*x^4))
%% 22
p22 = solve(f(x)==4)
%% 23
p23 = solve(5*f(9*x) == 5 + f(x+3))
%% 24
syms h(x) g(x) x;
g(x) = 6/x
%% 25
h(x) = 4*x +2
%% 26
p26 = solve(7*g(x)==5*h(x))
%% 27
p27 = slove(g(h(x))==h(g(x)))
clear;
%% 28
syms x;
p28 = vpasolve(2*x^5+7*x^4+9*x^3+8*x^2+7*x+8==0)
clear;
%% 29
syms x;
p29 = vpasolve(x/6+cos(x/6-2)+exp(x/6-2)-2,x,6)
clear;
%% 30
syms x;
p30 = vpasolve(sin(x)+5.2^(x-8)==0,x,200)

