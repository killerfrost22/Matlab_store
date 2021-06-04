%% AMSC 460 - Computational Methods 
%% HOMEWORK 1 - Problem 1
%% Yizhan Ao
%%
% Let f(x) = e^x + x^2 − 5x.
%
% (a) The bracket [1.5, 2] contains a root. Explain why using the Intermediate Value
% Theorem. For this bracket, estimate the number of iterations N that would be
% needed to compute the root to an accuracy of 10^-4.

clear all
syms f(x) x y
%%
f(x) = exp(x) + x^2 - 5*x;
double(f(1.5))
%%
double(f(2))

%%
%Since f(x) is continuous on [1.5, 2], and f(1.5) = -0.7683 < 0 and f(2) = 1.3891 > 0.
%By the Intermediate Theorem, f(x) has at least one root on the interval [1.5, 2].


%%
% (b) The bracket given in (a) contains a root, but there is another root. Find a bracket
% for it. Then use the bisection method to find the two roots to an accuracy of 10^-4.

A = double(f(0));
fprintf(['Because f(0)= %g > 0 f(1.5)= %g < 0. So find a root in', ...
' [0, 1.5]'], A ,double(f(1.5)))
%%
bisect(@(x) exp(x) + x^2 - 5*x, 0, 1, 0.0001)
%%
bisect(@(x) exp(x) + x^2 - 5*x, 1.5, 2, 0.0001)
%%
%    So roots are at x = 0.2805 and at x = 1.7339.
%% HOMEWORK 1 - Problem 2

%%
% Consider the cubic f(x) = x^3 − x − 1.
% (a) Use the MATLAB command fzero to find a root in the interval [1, 2].

fzero(@(x) x^3 - x - 1,1)

%%
% (b) Show that f(x) = 0 can be rewritten as a fixed point problem for both the
% functions (i) g1(x) = x^3 − 1, and (ii) g2(x)=(1+x)^(1/3).
%%

g1= x^3 - 1;
g2=(1+x)^(1/3);
g1' == diff(g1)
g2' == diff(g2)
%Let f(x) = x^3 − x − 1 = 0, then we can have x^3 − x − 1 = 0 then x^3 − 1 = x
%So we can write g1(x) = x^3 − 1.
%x^3 − x − 1 = 0
%x^3 = 1 + x
%x = (1 + x)^(1/3)
%Then g2(x) = (1 + x)^(1/3).

%%
% (c) Which of the functions g1 and g2 is a contraction mapping near the root r
% from part (a)? Which of g1 or g2 will be successful in making the iteration
% xi+1 = g(xi) converge locally to the root r?
%%
diff((1 + x)^(1/3))
%%
%Derative of g1 and g2, g1'= 3 * x^2 and g2'= 1/(3*(x + 1)^(2/3)).
%Since g1'(1) = 3 and g1'(2) = 12 and g1' is strictly increasing on [1,2]. So g1' diverges.
%g2' is continuous and decreasing on [1,2], g2'(1) = 0.21 and g2'(2) = 0.1602
%So ∃ L,  0 ≤ L < 1 s.t |g2'(x)| ≤ L < 1   ∀ x ∈ [1,2], g2'converges.
%Thus by the Contraction Mapping Theorem only g2 is a constraction on [1,2],
%g2 will be making the iteration xi+1 = g(xi) converge locally to the root r.

%%
% (d) Write a script or function in MATLAB to carry out 10 steps of the fixed point iteration for both
% g1 and g2, each starting with the guess x0 = 0. What approximate root does your algorithm give for g1?
% For g2?. Are your results consistent with the analysis from part (c)?

%%
% This is the code from the fpi root
%    function[root,tol] = fpi_root(g,x0,N)
%        fprintf('fixed point method g(x)')
%        disp(g)
%        for count= 1:N
%            xx =g(x0);
%            x0=xx;
%            rr(count) = xx;
%            fprintf('\tAfter %d steps, root = %f\n', count, x0)
%        end
%        root = rr(count);
%        tol=abs(g(root))
%    hold off

g1 = @(x) x.^3 - 1;
g2 = @(x) (1 + x).^(1/3);


%%

disp('Fixed point iteration for g1 starts with x0=0:')
fpi_root(g1,0,10)
%%

disp('Fixed point iteration for g2 starts with x0=0:')
fpi_root(g2,0,10)
%%
%Only g2 is successful in making the iteration xi+1 = g(xi) converge locally to the root r.
%The results consistent with the analysis from part (c).

