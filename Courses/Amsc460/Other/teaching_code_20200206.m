clear all;
format long;

f = @(x) x.^3 - 25;

% exact solution
temp = roots([1,4,0,-10]);
p_exact = temp(3)

% % plotting the function f
% x = 1:0.01:2;
% plot(x,f(x));
% hold on;
% plot(x,0*x);

% index of g
ind = 3
if ind == 1
    g = @(x) x - f(x);
elseif ind == 2
    g = @(x) x - f(x)/20;
elseif ind == 3
    g = @(x) x - f(x)/100;
elseif ind == 4
    g = @(x) x - f(x)./(3*x.^2+8*x);
end

% % plotting the function g
% x = 1:0.01:2;
% plot(x,g(x));
% hold on;
% plot(x,x);
% axis equal;

% fixed point iteration

% initial data
p = 1.5;

TOL = 1e-4;
MAX_IT = 100;

for i = 1:MAX_IT
    p1 = g(p);      % compute g once
    if abs(p1-p) < TOL
        p = p1;
        break;
    end
    p = p1;
end

if i == MAX_IT
    'maximal iteration reached'
else
    num_of_iter = i
end
my_result = p
    
% check error
my_error = abs(p_exact - p)










