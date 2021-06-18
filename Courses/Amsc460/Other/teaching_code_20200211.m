clear all;
format long;

% Newton's method
% (1) f(x) = x^3 + 4*x^2 - 10
% (2) f(x) = x^6 + 8*x^5 + 16*x^4 - 20*x^3 - 80*x^2 + 100 = (x^3 + 4*x^2 - 10)^2

ind = 2;

% initial data
p = 1.5;

TOL = 1e-5;
MAX_IT = 100;

% save intermediate steps
pn = zeros(MAX_IT,1);

for i = 1:MAX_IT
    
    if ind == 1
        p1 = p - (p^3 + 4*p^2 - 10) / (3*p^2 + 8*p);
    elseif ind == 2
        p1 = p - (p^6 + 8*p^5 + 16*p^4 - 20*p^3 - 80*p^2 + 100)...
            / (6*p^5 + 40*p^4 + 64*p^3 - 60*p^2 - 160*p);
    end
    pn(i) = p1;
    
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

% exact solution
temp = roots([1,4,0,-10]);
p_exact = temp(3)
% check error
my_error = abs(p_exact - p)

% check linear convergence

semilogy(1:(num_of_iter-1),...
    abs(pn(2:num_of_iter)-pn(1:(num_of_iter-1))),'-o');
xlabel('number of iterations');
ylabel('|p_n-p_{n-1}|');


