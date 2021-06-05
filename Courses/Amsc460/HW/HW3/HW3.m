%% AMSC 460 - HW 3

%% Problem 1

%%
% Find the multiplicity of the root r = 0 of f(x) = 1 − cos(x). Find the forward and
% backward errors for the approximate root xˆ = 10^−5.

%%
f = 1-cos(x);    % f(0) = 0, so r = 0 is a root.
diff(f);         % ans = sin(x), sin(0)=0, so r = 0 is a root of multiplicity at least 2
diff(sin(x));    % ans = cos(x), cos(x)=1, so r = 0 is a root of multiplicity 2.
%%
%    So we see that the root r = 0 has multiplicity 2.

%%
r = 0; x_hat = 10^-5; f = @(x) 1-cos(x);
fwd_err = abs(r - x_hat)
bwd_err = abs(f(x_hat))



%% Problem 2




%% Problem 3

%%
% Newton’s method for solving f(x) = 0 requires computing the derivative of f each
% iteration. Suppose instead that the initial slope d = f'(x0）is kept throughout the
% iterations, i.e xn+1 = xn − f(xn)/d.
% Suppose that the root r is simple (so that f'(r)≠ 0). Find a condition on the initial
% slope d that ensures the scheme will be locally convergent. What is the order of
% convergence?

%%
%    Accordint to our class note, Newton is an FPI, with g(x) = x - f(x)/f'(x)
%    In this case, we have g(x) = x - f(x)/d
%                     then g(r) = r - f(r)/d = r - f(r)/f'(x0)
%    To get local convergence, we must have g'(r) = 1 - [ f'(x0)f'(r)- f(r)f''(x0)/[f'(x0)]^2] = 0 < 1
%               since f(r)=0     so         g'(r) = 1 - [ f'(x0)f'(r)/[f'(x0)]^2] = 0 < 1
%                              then             1 =  f'(x0)f'(r)/[f'(x0)]^2
%                                     f'(x0)f'(r) = [f'(x0)]^2
%                                           f'(r) = f'(x0)
%    Given that f'(r)≠ 0 so d = f'(x0) ≠ 0       <----  This is the condition for d
%    
%    Assume f(x)is a continuous function with a continuous second derivative,
%    and f(x) is defined on an interval I = [r-ε,r+ε], with ε> 0.
%    Given that f(r) = 0 and f''(r) ≠ 0
%    Want to show there exists a constant A such that |f''(x)|/|f'(y)| ≤ A ∀x,y∈I
%    If the initial guess x0 is suciently close to the root r
%    then the sequence {xn} converges quadratically to the root r.
%    i.e the order of cpnvergence is 2.
%    
%    Proof:
%    We assume that x_n∈ I. Since f(r) = 0,
%    A Taylor expansion of f(x) at x = x_n, evaluated at x = r is:
%    0 = f(r) = f(x_n)+(r - xn)f'(x_n) + [(r-x_n)^2 / 2] f''(ξ_n)
%    where ξ_n is between r and x_n, and hence ξ∈I
%    Then we have r - x_n = [ -2f(x_n) - f''(ξ_n)(r - x_n)^2 ] / 2f'(x_n)
%    Since x_n+1 are the Newton iterates so we have
%    r - x_n+1 = r - x_n + [f(x_n)/f'(x_n)] = - [f''(ξ_n)(r - x_n)^2]/2f'(x_n)
%    Hence | r - x_n+1 | ≤ [(r - x_n)^2 / 2]*A ≤ |r-x_n|/2  ≤ ……≤ 2^(1-n) *|r-x_0|
%    which implies that x_n -> r as n ->∞
%    
%    To show that the convergence rate of {x_n} to r is quadratic.
%    Since ξ_n is between the root r and x_n, it also converges to r as n->∞
%    The derivatives f' and f''are continuous and therefore we can write
%    lim     |x_n+1 - r| / |x_n - r|^2 =  |f''(r) / 2f'(r)|
%    n ->∞  
%    which implies the quadratic convergence of {x_n} to r.   QED
