%  name: Yizhan Ao. MATH206, project2
clear all;
syms x
p3 = diff(1+3*x^2-4*x^3+8*x^4);
syms x
p4 = diff(diff(sin(7*x+8)));
syms x
p5 = subs(diff((1-9*x^2-7*x^3+4*x^4)^(1/6)),x,2.8);
syms t
p6 = subs(diff(diff(3+(5-(3*(6/t))))),t,2.3);
syms x
p7 = int((3*x^2+9*x+2)*exp(9*x+8));
syms x
p8 = int(sin(2*x+9),8,50);
syms f(x)
f(x) = 6*x+6+3/x;
p9 = f(x);
p10 =f(3)+ subs(diff(f(x)),x,4);
p11 = subs(diff(f(x)),x,-3)- 2*subs(diff(f(x),2),x,9);
p12 = diff((7*x+4)*(f(x)));
p13 = simplify(int(9*x+5+(4*x+9)*f(x)));
syms g(x)
g(x) = 1+3*x^2 +4*x^3 +7*x^4;
p14 = g(x);
p15 = simplify(diff(g(x))+g(9*x+6));
p16 = subs(diff(g(sin(x))^(1/3),2),x,2);
p17 = int(g(x),0.02,0.39) + int(x*g(9*x+2),0.03,0.46);
syms y(t)
p18 = dsolve(diff(y)+y/t == 9*t+9+cos(t));
syms h(t)
p19 = subs(dsolve(diff(h)+9*cos(t) == h(t), h(5) == 0) ,t,0);
p20 = fplot(3*x^2+7*x+2);
p21 = 0;
syms x
for x = [5:5:1250]
    p21= x + p21;
end
p22 = 1;
while(4^(p22)<(10^39))
    p22 = p22+1;
end
p23 = 27;
for x=[1:41]
    p23 = p23 + (6^x)/(11^(x+1));
end
p24 = 5;
while (p24 < 667388693)
    p24 = 6.48+((p24)^3.7);
end
