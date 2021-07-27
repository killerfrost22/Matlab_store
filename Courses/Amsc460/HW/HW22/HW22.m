%% AMSC 460 - HW22
clear all; format compact

%% Problem 1 (finished)
%% 
%
%%
%% Problem 2
%%
%
h = 0.2; % step
a = 0; % initial point
b = 20; % terminal point
y0 = 8; % initial value y(a)
n = floor((b-a)/h); % the number of steps (rounded);
y = zeros(n+1,1); % memory allocation
T = zeros(n,1); % memory allocation
y(1)=8;
T(1)=h^2 * y0^2;
y(2)= y(1)-0.005*T(1);
for k= 2:n
T(k) = T(k - 1) + h*(y(k) + y(k - 1))/2;
y(k + 1) = y(k) + h*y(k)*(- 0.005*T(k));
end
f=@(t,y)1.3*y-0.25*y^2+2*sin(t)
%%
Y=forward_Euler(f,0,20,8,n)+y-y0
%%
t=0:0.2:20;
%%
plot(t,Y(:,2))