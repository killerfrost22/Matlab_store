%% Yizhan Ao and Yisheng Leng Matlab project 4
%% Problem 10 Part A
syms u(x)
M = 5*(sin(2*(pi)*x))^2/(exp(x) + 1) - exp(x)*u(2)/ (exp(x) + 1);
ode = (x+1)*diff(u,x,2)+diff(u,1) == 5*(sin(2*pi*x))^2
dsolve(ode, u(0)==0,u(1)==0)
fplot(ans,[0,1])
%% Problem 10 Part B

rhs=@(x,u) [u(2); 5*(sin(2*(pi)*x))^2/(exp(x) + 1) - exp(x)*u(2)/ (exp(x) + 1)];
[ta, ya] = ode45(rhs, [0 1], [0 -0.5564]);
r = ya(end, 1);
plot(ta, ya(:,1))

%The maximum displacement is occuring when 0.3-0.4
%% Problem 10 Part C
rhs2 = @(x,y)[y(2); 5*(sin(2*pi*x))^2/(exp(x)+1)-exp(x)*y(2)/(exp(x)+1)]
init = bvpinit(0 : 0.1: 1, [0 0]);
cond = @(ya,yb) [ya(1); yb(1)];
solu = bvp4c (rhs2, cond,init);
xx = 0: 0.03:1;
yy = deval(solu, xx)
plot(xx,yy(1,:))

%% Problem 15 Part A

figure; 
hold on
p=ezplot(dsolve('D2u + u = 3*cos(.5*t)', 'u(0) = 0', 'Du(0) = 0'), [0 15]);
q=ezplot(dsolve('D2u + u = 3*cos(.6*t)', 'u(0) = 0', 'Du(0) = 0'), [0 15]);
r=ezplot(dsolve('D2u + u = 3*cos(.7*t)', 'u(0) = 0', 'Du(0) = 0'), [0 15]);
s=ezplot(dsolve('D2u + u = 3*cos(.8*t)', 'u(0) = 0', 'Du(0) = 0'), [0 15]);
t=ezplot(dsolve('D2u + u = 3*cos(.9*t)', 'u(0) = 0', 'Du(0) = 0'), [0 15]);
set(p);
set(q);
set(r);
set(s);
set(t);
axis([0 15 -20 20]);
xlabel('Time'), ylabel('Displacement')
title 'Q 15 Part A'
hold off
 
% The different plots for the different values for w. When w is getting 
% closer to w0, the amplitude of the waves starts to change drastically.
 
%% Problem 15 Part B

figure;
% equ == 'D2u + u = 3*cos(t)';
p = ezplot(dsolve('D2u + u = 3*cos(t)', 'u(0) = 0', 'Du(0) = 0'), [0 15]);
set(p);
xlabel('Time'), ylabel('Displacement')
title 'Interval [0 15]'
 
figure;
q = ezplot(dsolve('D2u + u = 3*cos(t)', 'u(0) = 0', 'Du(0) = 0'), [0 30]);
set(q);
xlabel('Time'), ylabel('Displacement')
title 'Interval [0 30]'
 
%% Problem 15 Part C
figure; 
hold on
p=ezplot(dsolve('D2u + u = 3*cos(.9*t)', 'u(0) = 0', 'Du(0) = 0'), [0 120]);
set(p);
xlabel t, ylabel y
title 'Interval [0 30]'

q = ezplot(dsolve('D2u + u = 3*cos(t)', 'u(0) = 0', 'Du(0) = 0'), [0 120]);
set(q);
xlabel('Time'), ylabel('Displacement')
title 'Interval [0 30]'
hold off

% This occurs when there is a periodic change in the amplitude which 
% is known as a beat in modifying the amplitude modulation. 