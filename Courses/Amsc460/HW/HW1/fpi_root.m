% fixed point iteration METHOD
% =================================================
% Computes approximate solution of f(x)=0
% Input: anonymous function f; a,b such that f(a)*f(b)<0, 
%        and tolerance tol
% Output: Approximate solution xc
% =================================================

function[root,tol] = fpi_root(g,x0,N)
    fprintf('fixed point method g(x)')
    disp(g)
    for count= 1:N
        xx =g(x0);
        x0=xx;
        rr(count) = xx;
        fprintf('\tAfter %d steps, root = %f\n', count, x0)
    end
    root = rr(count);
    tol=abs(g(root))
hold off