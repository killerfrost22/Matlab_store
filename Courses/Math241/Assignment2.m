clear all; 
%Name: Yizhan Ao Math241 Project2
%%
%1(a)
syms f x y z Du u g
f(x,y,z) = x*y*exp(-x*z*y^3-x)+(x^2)*y*z;
g = gradient(f)
z = g(1,-1,1)
u = [4, 7,1]
v = norm(u)
Du = norm(dot(z,u))
% 1(b)
syms a b c
a = double(norm(z))
%%
syms x y k X Y real
f=x^2+2*y^2
g=4*x-6*y-25;
g1 = (2/3)*x-(25/6);
[A,B,C]= solve (gradient(f) == k*gradient(g), g==0, [x,y,k] );

[X, Y] = meshgrid (-6:.1:6 , -6:.1 :6) ;
Z=X.^2+2*Y.^2 ;
[T, h]= contour(X,Y, Z) ; %We pl o t the con tou r map of f (x , y )
clabel(T, h) ;
hold on
fplot ( g1, [-2,6],'Linewidth',2 ) %EDIT THIS LINE
hold on
scatter (A,B, 150 , 'filled')
text (A,B, 'Max' , 'FontSize' ,15 )% EDIT THIS LINE
hold off

%2(a+b) Finished before

%2(c)
%disp(Max);
%%
%3(a)
syms x y h n 
f(x,y) = (x^3*y-x*y^3)/(x^2+y^2)
fx(x,y) = diff(f,x)
fy(x,y) = diff(f,y)
%3(b)
lx = limit (((((x+h)^3*y-(x+h)*y^3)/((x+h)^2+y^2))-(x^3*y-x*y^3)/(x^2+y^2))/h,h,0)
ly = limit (((((x)^3*(y+h)-(x)*(y+h)^3)/((x)^2+(y+h)^2))-(x^3*y+-x*y^3)/(x^2+y^2))/h,h,0)
%3(c)
lxy = limit(( ((3*(x+y)^2*y - y^3)/((x+y)^2 + y^2) + (2*x*(- (x+y)^3*y + (x+y)*y^3))/((x+y)^2 + y^2)^2)-lx)/h,h,0)
fxxy =diff(fx,y);
fyx = diff(fy,x)
lyx = limit(((2*(y+x)*(- x^3*(y+x) + x*(y+x)^3))/(x^2 + (y+x)^2)^2 - (- x^3 + 3*x*y^2)/(x^2 + y^2)-lx)/h,h,0)

%3(e)
 fsurf(f(x,y),[-0.5,0.5 -0.5,0.5])

%%

%4(a)
 f(x, y) = x^4 + y^4 - (4*x^2)*y + 2*y
%4(b)
fx = diff(f,x);
fxx = diff(diff(f,x),x)

fy = diff(f,y);
fyy = diff(diff(f,y),y)

fxy = diff(diff(f,x),y)
fyx = diff(diff(f,y),x)

%4(c+d)
assume (x ,'real' );
assume (y ,'real' );

[B]=vpasolve(fyy==0);
[A]=vpasolve(fxx==0);
[x,y]=vpasolve(fx==0);
[x,y]=vpasolve(fy==0);
[x]=vpasolve(fxy==0);

%4(e)
subs(vpasolve(fyy==0), [x], {A})
subs(solve(fxx==0), [y,y], {A,B})
subs(solve(fx==0), [x,y], {A,B})
subs(solve(fy==0), [x,y], {A,B})

%4(f)
C=subs(fyy(0,0));
C=subs(fxx(x,y));
C=subs(fx(x,y));
C=subs(fy(x,y));

%4(g)
fsurf(x,y,z,C)
hold on 
scatter(A,B,C,100,'filled')
hold off
%4(h)
disp(max)
disp(min)
