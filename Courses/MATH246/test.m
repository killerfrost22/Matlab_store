% Matlab Project 3
% Whitney Wilson
% Emmaneul Taylor
% Kenneth Bryant

%% Problem 4
f4= @(t,y) (y-sqrt(t)).*(1-y.^2); % defines the function
[t,ya]= ode45(f4, [0 8], -1.6:.2:1.6); % stores the t and y values for different solutions
plot(t, ya)                         % plots the different points without circles

% Problem 4b
% When b< -1 the solution curves increase towards an asymptote at b= -1.
% When -1< b<1 the solution curves decrease towards b= -1. The point b= -1
% is asymptotically stable. When 0< b<1 the solution curves increase
% towards b= 1. When bh= 1 it is a constant solution.

hold on
syms t y;
p = ezplot(y-sqrt(t), [0 8 0 8]);
set(p,'Linewidth', 2);
% It makes sense that the solytion curvges are asymptotic to this parabola
% because this is one of the zeroes for the equation. At this point the
% differential equation equals 0.



[T, Y] = meshgrid(0:0.2:8, -1.6:0.2:1.6);
S = (Y-sqrt(T)).*(1-Y.^2)
L= sqrt(1 +S.^2);
quiver(T,Y, 1./L, S./L, 0.5), axis equal tight 
xlabel 't', ylabel 'y'
title 'Graph of Problem 4d'
hold off

%% Problem 7
% 
f7 = @(t,y) -exp(y)./(t.*exp(y)-sin(y));
[tfor, yfor] = ode45(f7, (2:.5: 4), 1.5);
plot(tfor, yfor) % plots numerical solution
hold on
format long
[tfor yfor] % prints out the corresoponding t and y values

[tbak, ybak] = ode45(f7, (2:-.5:.5), 1.5);
format long
[tbak ybak] % prints out the corresoponding t and y values
plot(tbak, ybak) % plots numerical solution
hold on


sol7afunc=cos(y) + t*exp(y); % solution to the diffeq from previous hw
c=subs(sol7afunc,[t,y],[2,1.5]);
p =ezplot(sol7afunc-c,[.5,4,0,3]); % plots actual solution
set(p, 'color', 'r');
hold off
title 'graph for 7a'

% actual values 
%t =1, y = 2.269811843492618
%t= 1.5, y = 1.822765651057094
%t= 3, y =1.045263208819677

% numerical answers
%t=1, y= 2.269811752222526
%t= 1.5, y = 1.822765668361479
%t= 3, y =   1.045263208334591

fig=figure;
[t, ya] = ode45(f7, [2:2: 1000], 1.5);
plot(t, ya)
title 'Graph1'
% as t goes to infinity

figure;
[t, ya] = ode45(f7, [2:-.01:0], 1.5);
plot(t, ya)
title 'Graph2'
%% Problem 10
f10a= @(t,y) exp(-3.*t)+ 1./(1+y.^2)
ode45(f10a, [0 1000], -1)
title 'graph of 10a'
% as t increases towards infintity the graph will also increase towards
% infinity because the e^(-3t) will just continue to increase forever

fig=figure;
f10b = @(t,y) exp(-2.*t) + y.^2
ode45(f10b, [0 1000], -1)
title 'graph of 10b'
% as t increases towards infinity the graph will approach the value of
% zero. this is because the function e^-2t will approach the value of e^0
% which is 1, and -1 + that value will approach 0 but it will never reach it.

%% Problem 13

 syms t y
%a)
f = @(t, y) (9*t^2 - 3*y)/t;
t0 = -.5
y0 = 3.15
b = -3
n = 10
[t9, y9] = myeuler(f, t0, y0, b, n)
figure(10);
plot(t9,y9)

%b)
f = @(t, y) (9*t^2 - 3*y)/t;
t0 = -.5
y0 = 3.15
b = -3
n = 10
[t10, y10] = ImprovedEulerFunc(f, t0, y0, b, n)
figure(11);
plot(t10,y10)

%c)
f = @(t, y) (9.*t.^2 - 3.*y)./t;
[t11, y11] = ode45(f,[-.5 .5],3.15);
figure(12);
plot(t11, y11)
t11=[-.5,-.06:.02:.06]
[t12, y12] = ode45(f,t11,3.15);
figure(13);
plot(t12, y12)
%The interval is defined up until t=0 (so in this case from [-.06,0)).

%d)
q = @(t, y) (((9/5)*t^2) + C/(t^3)) - y
subs(q, 't', -.5)
v = ans
subs(v, 'y', 3.15)
syms C1
solve(- 8*C1 - 27/10,'C1')
C1 = ans

q = @(t, y) (((9/5)*t^2) + C/(t^3)) - y
subs(q, 't', .5)
v = ans
subs(v, 'y', 3.15)
syms C2
solve(8*C2 - 27/10,'C2')
C2 = ans

q = @(t, y) (((9/5)*t^2) + C/(t^3)) - y
subs(q, 't', -.5)
v = ans
subs(v, 'y', -3.45)
syms C3
solve(39/10 - 8*C3,'C3')
C3 = ans

q = @(t, y) (((9/5)*t^2) + C/(t^3)) - y
subs(q, 't', .5)
v = ans
subs(v, 'y', -3.45)
syms C4
solve(8*C4 + 39/10,'C4')
C4 = ans

yc1 = @(t, y) ((9.*t.^2)./6) - y %We know for y(0)=0 that c=0.
figure(14); ezplot(yc1)
yc2 = @(t, y) (((9./5).*t.^2) - (27./80)./(t.^3)) - y
figure(15);ezplot(yc2)
yc3 = @(t, y) (((9./5).*t.^2) + (27./80)./(t.^3)) - y
figure(16);ezplot(yc3)
yc4 = @(t, y) (((9./5).*t.^2) + (39./80)./(t.^3)) - y
figure(17);ezplot(yc4)
yc5 = @(t, y) (((9./5).*t.^2) - (39./80)./(t.^3)) - y
figure(18);ezplot(yc5)

%ode45 shows that as t gets closer to the value 0, dy/dt approaches infinity and
% as a result the graph goes to infinity at 0. You can tell this from the
% differential equation because dy/dt is undefined at 0.  The other
%numerical methods end up making mistakes becasue they do not consider both sides of the point.
%ode45 looks at both sides of the point that is being approximated so it can see where
%the derivative becomes undefined.