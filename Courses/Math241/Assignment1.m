clear all;
%Name: Yizhan Ao MATH241 project #1
%%
% 1(a)
syms f x
f = x^4 - 3*x^3 + 7*x^2 -x+3;
p1 = diff(diff(f)) %a.1
p2 = solve(f == 348103)
p3 = double(solve(f == 348103))
% 1(b)
syms x
p3 = int((2*x+1)/(4*x^2+12*x-7))
p4 = int((cos(x))/((1+(sin(x))^2)^1/2),0, pi/2)
%%
% 2(a)
syms t 
v = [3*t^2 + cos(t), t+2 , exp(t)]
% 2(b)
syms a r
a = diff(v)
r = int(v)
% 2(c)
syms speed 
speed = subs(norm(v),4)
%%
% 3(a)

P1 = [-2, -1/4, 3/5];
P2 = [1/10, 2, -2/5];
P3 = [1, -1, 3/7];
% 3(b)
syms n 
n = cross(P2-P3, P3-P1)
% 3(c)
syms x y z 
% 3(d)
V = [x , y , z];
% 3(e)
plane = dot(n, P2-P1)
syms g 
dot(V-p1, n)
g = solve((dot(V-P1, n)), z)
% 3(f)
syms r t V1
r = [(3*t)/4 , (t/2)+2 , ((8*t)/3)-1];
V1= r;
% 3(g)
syms t0
t0 = solve(dot((V1-P1),n), t)
% 3(H)
syms intpoint
intpoint = subs(V1,t0)
% 3(I)
fplot3(3/4* t ,1/2* t+2 ,8/3*t-1, 'r')
hold on 
fsurf(g,[-10, 10, -10, 10])
hold off

%%
%copy code here 
t = 0: 0.1:4*pi;
x = sin(t);
y = sin(2*t);
z = sin(3*t);
length = 0;
for k = 1:40*pi
    dx = x(k+1)- x(k);
    dy = y(k+1)- y(k);
    dz = z(k+1)- z(k);
    length = length + norm([dx dy dz]);
end
length
%4.a
t = 0: 0.05:5*pi;
x = sin(t);
y = sin(2*t);
z = sin(3*t);
length = 0;
for k = 1:100*pi
    dx = x(k+1)- x(k);
    dy = y(k+1)- y(k);
    dz = z(k+1)- z(k);
    length = length + norm([dx dy dz]);
end
length
%4.b
syms t 
syms s
s = norm(diff([sin(t) sin(2*t) sin(3*t)]));
exact = double(int(s, 0,5*pi));
error = double(abs(length - exact));
%4.c
fplot3(sin(t) , sin(2*t), sin(3*t), [0,5*pi])