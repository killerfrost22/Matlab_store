clear all; 
%Name: Yizhan Ao Math241 Project3
%%
%1(a)
%r(u, v) = h(3 + sin(v)) cos(u),(3 + sin(v)) sin(u), vi, for 0 ? u, v ? 2?
syms f x y z u v 
r(u,v) = [(3 + sin(v))*cos(u),(3+sin(v))*sin(u), v], 0 <= u, v <= 2*pi;
ru = diff(r,u)
rv = diff(r,v)
crossproductrurv = cross(ru,rv)
F = norm(crossproductrurv)
Fun = int(int((abs(cos(v)*(sin(v) + 3)*cos(u)^2 + cos(v)*(sin(v) + 3)*sin(u)^2)^2 + abs(cos(u)*(sin(v) + 3))^2 + abs(sin(u)*(sin(v) + 3))^2)^(1/2),u, 0 , 3), v , 0, 2*pi)
S = double(int(int(int(Fun,0,pi)),0, 2*pi))
% 1(b)
fsurf(F)
%%
%2(a)
syms u v
for a=3:4
for b=5:6
figure
fsurf ((1+1/5* sin( a*u)*sin (b*v))*sin(v) * cos(u) ,(1+1/5* sin (a*u) * sin(b*v))* sin(v)*sin(u) ,(1+1/5*sin(a*u)*sin(b*v))*cos(v) , [0 2* pi 0 pi])

end
end

%2(b)
syms rho phi theta
V = double(int(int(int((rho^2)*sin(phi),rho, 0, 1), phi,0,pi), theta, 0, 2*pi))
%%
%3(a)
f(x,y,z)= [sin(y),x*cos(y)+cos(z),-y*sin(z)]
curlF = curl(f)
Fcdr = f(2,2,2) - f(1,1,1)

%3(b)
f(x,y,z) = [(2*x)/((x^2)+(y^2)+(z^2)),(2*y)/((x^2)+(y^2)+(z^2)),(2*z/((x^2)+(y^2)+(z^2)))]
curlF = curl(f)
Fcdr = f(2,2,2) - f(1,1,1)
%%
%4(a)
syms  u v t
F = [y *z 2*x*z exp(x*y)]
param = [4*cos(u) 4*sin(u) v]
param2 = [u*t u*cos(v)*u*sin(v) 5]
%4(b)
curl(F)

