% Smiley Face created by Justin Wyss-Gallifent

syms T(a,b) R(t)
T(a,b) = [1 0 a;0 1 b;0 0 1];
R(t) = [cos(t) -sin(t) 0;sin(t) cos(t) 0;0 0 1];

S = transpose([
    -1     2     1
     1     2     1
    -3     0     1
     3     0     1
    -1    -3     1
     1    -3     1
    -2    -2     1
     2    -2     1
     0    -3.5   1
    -2.5  -1     1
     2.5  -1     1
])

scatter(S(1,:),S(2,:),'filled') 
axis square
axis([-5 5 -5 5])

S = rotx(pi/2)

