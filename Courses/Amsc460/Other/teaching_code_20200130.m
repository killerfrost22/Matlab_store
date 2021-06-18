clear all;

format long;

f = @(x) x.^3 + x - 4;

% % plotting the function
% x = -5:0.01:5;
% plot(x,f(x));
% hold on;
% plot(x,0*x);

% use bisection to find the root
% starting from [a_1,b_1]
% stops when (b_n - a_n)/2 < TOL

a = 1;
b = 4;
TOL = 1e-3;

fa = f(a);  % compute f once
fb = f(b);  % compute f once
if fa * fb >= 0
    'fail'
    return;
end

while (b - a)/2 >= TOL
    
    p = (a + b)/2
    fp = f(p);   % compute f once
    if fp == 0
        break;
    elseif fp * fa < 0
        b = p;
        % if you want to keep track of f(b)
        % fb = fp;
        % this is not necessary for bisection,
        % because we only care about signs, and 
        % fb and fp have the same sign
    else
        a = p;
        % similar remarks as previous case
    end
    
end

p = (a + b)/2;
my_result = p







