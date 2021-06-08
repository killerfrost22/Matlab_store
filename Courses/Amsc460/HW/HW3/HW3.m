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
%    So we see that r = 0 has multiplicity of 2.

%%
r = 0; x_bar = 10^-5; 
f = @(x) 1-cos(x);
fwd_err = abs(r - x_bar)
bwd_err = abs(f(x_bar))

%   backward error


%% Problem 2

% In class it was mentioned how backward error and forward error are not 
% always of similar sizes. Verify this by finding the relationship between 
% the forward and backward error for the problem of finding the root of $f(x)=ax+b$. 

%% 
%Since r0 = -n/a +r, f(r0) = ar. The backward error and the front error
%will have different sizes of ar and r. Therefore the accuracy of the
%changes will not be accurate. The 10^-10 to be accurate the absolute
%value of a will be smaller than 10^-2 since 10^(-10+8) (Assuming the tolerance is 10^-8)
%% Problem 3
    
%%
% Newton’s method for solving f(x) = 0 requires computing the derivative of f each
% iteration. Suppose instead that the initial slope d = f'(x0）is kept throughout the
% iterations, i.e xn+1 = xn − f(xn)/d.
% Suppose that the root r is simple (so that f'(r)≠ 0). Find a condition on the initial
% slope d that ensures the scheme will be locally convergent. What is the order of
% convergence?

%%
%Accordint to our class note, Newton is an FPI, with g(x) = x - f(x)/f'(x)
%In this case, we have g(x) = x - f(x)/d
%                 then g(r) = r - f(r)/d = r - f(r)/f'(x0)
%g'(r) = 1 - [ f'(x0)f'(r)- f(r)f''(x0)/[f'(x0)]^2] = 0 < 1
%since f(r)=0  g'(r) = 1 - [ f'(x0)f'(r)/[f'(x0)]^2] = 0 < 1
%                  1 =  f'(x0)f'(r)/[f'(x0)]^2
%        f'(x0)f'(r) = [f'(x0)]^2
%              f'(r) = f'(x0)
%Given that f'(r)≠ 0 so d = f'(x0) ≠ 0, assume f(x)is a continuous and 
%second derivative is also continuous and f(x) is defined on an interval 
%I = [r-ε,r+ε], with ε> 0. Given that f(r) = 0 and f''(r) ≠ 0
%If the x0 is closing to the root r, then the sequence {xn} converges
%quadratically to the root r. Then, convergence order is 2.
%
%Proof:
%Assumeing that x_n∈ I. Since f(r) = 0,
%A Taylor expansion of f(x) at x = x_n, evaluated at x = r is:
%0 = f(r) = f(x_n)+(r - xn)f'(x_n) + [(r-x_n)^2 / 2] f''(ξ_n)
%Then we have r - x_n = [ -2f(x_n) - f''(ξ_n)(r - x_n)^2 ] / 2f'(x_n)
% Using Newton iterations we have
%r - x_n+1 = r - x_n + [f(x_n)/f'(x_n)] = - [f''(ξ_n)(r - x_n)^2]/2f'(x_n)
%| r - x_n+1 | ≤ [(r - x_n)^2 / 2]*A ≤ |r-x_n|/2  ≤ ……≤ 2^(1-n) *|r-x_0|
%
%x_n -> r as n ->∞
%which implies the quadratic convergence of {x_n} to r. 
