clear all;
%Name Yizhan Ao & Yisheng Leng MATH246 Project1
%% Exercise1
%% Problem7a
    syms x
    P7a = x^3/(x^2 +1)
    diff(P7a)

%% Problem7c
    syms x
    P7c = atan(x)
     diff(P7c,3 )
   
%% Exercise2
% Problem10a
    syms t y
    f(t)=t^6-4*t^4-2*t^3+3*t^2+2*t
    fplot(f(t),[-3/2,5/2]) 
%% Problem10b
    axis([-1.5 0 -0.4 0.1])
%There are 2 local min points and 1 local max points.
%% Problem10c
    g(t) = diff(t^6 - 4*t^4 - 2*t^3 + 3*t^2 + 2*t)
    solution=round(vpa(solve(g(t)==0,t)),2)
    x = round(vpa(fzero(g,-1)),2)
%% Problem10d
    syms t
    y = t^6 -4*t^4 - 2*t^3 + 3*t^2+ 2*t;
    ddy = diff(diff(y));
    fplot (ddy,[-1.2,-0.8])
    %The inflection ppomy os x = -1 when ddf = 0 and x = -1