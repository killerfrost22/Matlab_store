clear all;
%Name Yizhan Ao & Yisheng Leng MATH246 Project2
%% Exercise 1
% pages 143 - 144 Question no. 7
% a 
clear all;
clc;
syms t y;
f=@(t,y) exp(y)./(sin(y)-t.*exp(y));
x=[1 1.5 3];
for i=1:3
    tspan = [2 x(i)];
    y0 = 1.5;
    [t,y] = ode45(f, tspan, y0);
    fprintf('At t=%f, using ode45 y(%2.2f)=%f\n',t(end),t(end),y(end))
end

%% b
%finding solution for 2<t<4
    tspan = [2 4];
    y0 = 1.5;
    [t1,y1] = ode45(f, tspan, y0);
    figure(1)
    plot(t1,y1,'b','linewidth',2)
  
    tspan = [2 0.5];
    y0 = 1.5;
    [t2,y2] = ode45(f, tspan, y0);
    hold on
    plot(t2,y2,'b','linewidth',2)
    xlabel('t')
    ylabel('y(t)')
    hold off


%% c
[t6,ya6]=ode45(f,[2,0.00001],1.5);
[t3,ya3]=ode45(f,[2,100],1.5);
plot(t6,ya6,t3,ya3)
grid
%% Exercise 2
% pages 145 
% Question 10a 
clear all;
clc;
t=0:0.001:10;
h=0.001;
L=-1;
y=zeros(1,length(t));
y(1)=L;
for k=2:length(t)
y(k)=y(k-1)+h.*(exp(-3.*(k-2).*0.001)+(1./(1+(y(k-1).^2))));
end
plot(t,y)

%% Question 10c
clear all;
clc;
f=@(t,y) cos(t)-y^3;
y0=0;
tsp=[0,10];
[T,Y]=ode45(f,tsp,y0);
disp([T Y])
plot(T,Y);

%% Exercise 3
% pages 146 
% Question 13 
% a
f=@(t,y) 9*t-3*y/t;
[xi,yi]=myeuler(f,-0.5,3.15,1.5,10)
plot(xi,yi)
%% b
f = @(t, y) (9*t^2 - 3*y)/t;
t0 = -.5
y0 = 3.15
b = -3
n = 10
%[t10, y10] = ImprovedEulerFunc(f, t0, y0, b, n)
%figure(11);
%plot(t10,y10)


%% c
clear all
clc
f=@(t,y) (-3*y+9*t^2)/t;
tsp=-0.5:0.01:0.5;
y0=3.15;
[T,Y]=ode45(f,tsp,y0);
plot(T,Y);
t=-0.06:0.02:0.06;
c=1;
for i=1:length(T)
if(abs(t(c)-T(i))<1e-4)
fprintf('For t=%.2f, y=%f\n',t(c),Y(i));
c=c+1;
if(c>length(t))
break;
end
end
end
%% d
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

%Ode45 makes t gets closer to the value 0, dy/dt approaches I and 
% as a result that the graph will goes to identity to 0. We can tell
%the differential equation because dy/dt is undefined at 0. Euler can end
%up making mistakes that it is not accurate as the original one because
%they dont consider both sides of the point. ODE 45 will consider both
%sides of the point and it is more accurate 
