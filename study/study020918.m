syms x
fplot(sin(x))
fplot(sin(x), [0,20*pi])
syms f(x)
f(x) = sin(1/x)
 
f(x) =
 
sin(1/x)
 
fplot(f(x), [0, 0.1])
fplot(t*sin(t),t*cos(t),[0,10*pi])
Undefined function or variable 't'.
 
syms x y t
fplot(t*sin(t),t*cos(t),[0,10*pi])
syms x
diff(log(6*x+2))
syms f(x,y);
f(x,y) = 2*x^2*y^3+x*sin(x*y);
diff(f(x,y),x)

syms f(x)
f(x)=x^2+5*x+3;
subs(diff(f(x)),x,6)
fplot(diff(sin(x^2)))

int(7/(1 + x^2))
%indefinite integral
int(x^3+log(x),5,10)
%definite integral
subs(x^2-x+2,x,3)
%plug in numbers into function
