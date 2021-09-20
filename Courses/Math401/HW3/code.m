format short  
syms x y 
A = [1 0 0 0; 0 cos(-pi/2) -sin(pi/2) 0; 0 sin(-pi/2) cos(-pi/2) 0; 0 0 0 1]
B = [1 0 0 0; 0 1 0 0; 0 0 0 0; 0 0 1/y 1]
C = [1 0 0 0; 0 cos(pi/2) -sin(-pi/2) 0; 0 sin(pi/2) cos(pi/2) 0; 0 0 0 1]
D = A*B*C;
%% b 
% [1 ;2 ;3 ;1]
E = [1 ;2 ;3 ;1];
B = [1 0 0 0; 0 1 0 0; 0 0 0 0; 0 0 1/10 1];
ans1 = A*B*C*E
% [-4 ;-1 ;0 ;1]
F = [4 ;-1 ;0 ;1];
ans2 = A*B*C*F

% [-5 ;2 ;3 ;1]
G = [5 ;2 ;3 ;1];
ans3 = A*B*C*G