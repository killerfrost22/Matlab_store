%  name: Yao Yuan. MATH206, project1
clear all
syms p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15
p3 = sin(49);
p4 = cos(cos(48));
p5 = sind(cosd(26));
p6 = (acotd(sind(37)));
p7 = (log(42)/log(5)) + (log(29)/log(3)); 
syms x
p8 = solve(2*x+6==29);
syms x
p9 = solve(1-9*x^2 + 3*x^3-  8*x^4 == 1 + 3*x^2 - 9*x^3 - 5*x^4); 
syms x
p10 = solve(128^2 + 232^2 - 2*128*232*cosd(41) == x^2); 
syms t 
p11 = simplify((2*(4+(4 - (2/t)))) + (2/(2*(2+(6-t)))));
syms x y
[p12x, p12y] = solve (x*y - 2*x==2,y-5*x==8);
p13 = sqrt(17);   
p14 = 23 + p13;
p15 = sqrt(p14/6);

syms p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30
p16 = cos(5*p15);
syms a b
p17 = solve(2*x^2 + b*x + 6 == 0,b);
p18 = solve(8*a*b-b-6/b==2*a,b);
%p19
syms f(x)
f(x) = 3*x^2+9*x+3;
p20 = f(8)*f(8)+f(5-f(4))+f(f(9)*f(6));
p21 = simplify(f(1 + 3*x^2 + 2*x^3 - 2*x^4));
p22 = solve(f(x) == 7);
p23 = solve(7*f(7*x) == 8 + f(x+2) );
%p24
syms g(x)
g(x) = 3/(4+x);
%p25 
syms h(x)
h(x) = 2*x + 6;
p26 = solve(8*g(x) == h(9*x));
p27 = solve(g(h(x)) == h(g(x)));
syms x
p28 = vpasolve( 6*x^5 + 8*x^4 + 5*x^3 + 2*x^2 + 7*x + 9 == 0  );
p29 = vpasolve(0 == (x/9) + cos((x/9)-2) + exp((x/9)-2) - 2,x,9); 
%fplot(sin(x) + 7.3^(x-3))
p30 = vpasolve(0 == sin(x) + 7.3^(x-3),x,0);



