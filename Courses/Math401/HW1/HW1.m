M = [0.02 0.06 0.1; 0 0.4 0.1; 0.18 0.01 0.1]
I = eye(3)
d = det(I-M)
K = inv(d)
O = [200;180;175]
W= K*O
A32 = [0.98 -0.06; -0.18 -0.01]
%%
% Question 1
% a 
M = [0.13 0.08; 0.17 0.11]
% b
K = (inv(eye(2))-M)
% c + d
M = [0.13 0.08; 0.17 0.11];
X = inv(eye(2)-M)
A = X * [60; 90]
A - M * [60; 90]
X(:,1)*60+X(:,2)*90


% e 
M = [0.83 1.89]
%%
% Q2
M = [0.02 0 0.02 0.04;0 0.01 0.05 0.04;0.03 0 0.01 0.02;0.02 0.05 0.01 0];
judge = true;
i = 1 ;
temp = 0 ;
sum = eye(4);
while (flag)
    sum = sum + M^i;
    if (temp == sum)
        disp(i);
        flag = false;
    else
        temp = sum; 
        i = i+1;
    end
end


 I = eye(4)-M
adj = adjoint(I)
inv(I)
final = adj/det(I)
format short
base = eye(2)
%%
% Q6
format rational
M = [0.06 1.02; 0.05 0.1]
K = eye(2)-M
Z = inv(K)
M2 = [1.02 0.06; 0.05 0.1]
K2 = eye(2)-M2
Z2 = inv(K)
% b
d = [9 ; 6]
Y= d .* Z
format rational
M = [0.6 0.7; 0.5 0.5]
K = eye(2)-M
Z = inv(K)

% b
d = [100 ; 200]
Y= d .* Z
Y2 = d .* Z2