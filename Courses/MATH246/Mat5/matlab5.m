%%Yizhan Ao & Yisheng Leng MATLAB 05 246

%% Problem 13 Part A

syms s t y(t) Y;
g = heaviside(t-pi())*(1) + heaviside(t-10)*(-1)
ezplot(g,[0,15]);
eqn = diff(y,2) + 3*diff(y) + 2*y == g;
lteqn = laplace(eqn, t, s);
neweqn = subs(lteqn, [laplace(y(t),t,s), y(0),subs(diff(y(t),t),t,0)], {Y, 1, 0});
ytrans = simplify(solve(neweqn,Y));
solution5 = ilaplace(ytrans, s, t);
figure
plot3 = ezplot(solution5, [0,15])
set(plot3, 'linewidth', 3, 'color', 'r')
axis auto
xlabel t, ylabel y
title 'Problem 13 Part A - LaPlace Method Solution'

%% Problem 14 Part B
% Use the Laplace Transform method to solve the following initial value
% problems. See problem 13 for additional instructions.
figure; hold on
syms s t y(t) Y
h = heaviside(t-5)-2*heaviside(t-10);
ezplot(h);
eqn = diff(y,2)+ 6*diff(y)+8*y == h;
lteqn = laplace(eqn,t,s);
neweqn = subs(lteqn, [laplace(y(t),t,s),y(0),subs(diff(y(t),t),t,0)], [Y,0,2])
ytrans = simplify(solve(neweqn, Y))
y= ilaplace(ytrans,s,t)
plot1 = ezplot(y, [0 15])
set(plot1, 'linewidth', 3, 'color', 'r')
axis auto
xlabel t, ylabel y
title 'Problem 14 Part B - LaPlace Method Solution'
hold off

%% Problem 17 Part A

tic
figure; hold on
sol2=dsolve('D2y+Dy+y=((t+1)^3)*exp(-t)*cos(t)*sin(3*t)','y(0)=1','Dy(0)=0')
p17partA = ezplot(sol2, [0 15])
set(p17partA, 'linewidth', 3, 'color', 'r')
axis auto
xlabel t, ylabel y
title 'Problem 17 Part A - Dsolve Method Solution'
hold off
toc
 
% Using the dsolve method from previous chapters for second order
% differential equations, it took about 0.46 seconds to get a result.
% However these results may vary because tic and toc depends on the program
% being used and the speed of the computer running the program. In this
% case, the LaPlace Transform method seemed to produce results faster.

%% Problem 17 Part B

tic
syms t s  y(t) Y
figure; hold on
eqn1 = diff(y,2)+ diff(y)+y(t)==((t+1)^3)*exp(-t)*cos(t)*sin(3*t);
lteqn1 = laplace(eqn1, t, s)
neweqn1 = subs(lteqn1, [laplace(y(t),t,s), y(0), subs(diff(y(t),t),t,0)], [Y, 1, 0])
ytrans1 = simplify(solve(neweqn1, Y))
y1 = ilaplace(ytrans1, s, t)
p17partB = ezplot(y1, [0 15])
set(p17partB, 'linewidth', 3, 'color', 'b')
axis auto
xlabel t, ylabel y
title 'Problem 17 Part B - LaPlace Method Solution'
hold off
toc
 
% Using the LaPlace Transform method from chapter 13, it took about 0.23
% seconds to get a result. However these resuts may vary because tic and
% toc depend on the program being used and the speed of the computer
% running the program. In this case, the LaPlace Transform method seemed to
% produce results faster.

%% Problem 17 Part C

figure; hold on
p17partB = ezplot(y1, [0 15])
p17partA = ezplot(sol2, [0 15])
set(p17partA, 'linewidth', 3, 'color', 'k')
set(p17partB, 'linewidth', 3, 'color', 'k')
axis auto
xlabel t, ylabel y
title 'Problem 17 Part A and B Solutions Plotted Together'
hold off
 
% Both the dsolve graph and the LaPlace Transform graph are the same.