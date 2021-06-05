%% AMSC 460 - HW 3

%% Problem 1

%%
% (a) Express x = (12.8)_10 as a double-precision IEEE float fl(x), using the round-tonearest rule.
%%
%    (12.8)_10 = (12)_10 + (0.8)_10
%    Integer part: 12/2 = 6 remainder = 0
%                   6/2 = 3 remainder = 0
%                   3/2 = 1 remainder = 1
%                   1/2 = 0 remainder = 1   -> (12)_10 = (1100)_2
%    Fractional part: 0.8 * 2 = 1.6 = 0.6 + 1
%                     0.6 * 2 = 1.2 = 0.2 + 1
%                     0.2 * 2 = 0.4 = 0.4 + 0                     ____
%                     0.4 * 2 = 0.8 = 0.8 + 0    -> (0.8)_10 = (0.1100)_2
%                         ____                             ____
%    So (12.8)_10 = (1100.1100)_2, fl(x) = 1.[10011....01] 1001 x 2^3
%       
%    Sine b_53 = 1 and the rest of bits are Not all zero,
%    1. By truncating,  ____                       ____              [in base 10]
%        we lose R = (0.1001) x 2^(-52) x 2^3 = (0.1001) x 2^(-49) = 0.6 x 2^(-49)
%    2. By the round-tonearest rule, we add 1 to the b_52 bit to get an addition
%        of 2^(-52) x 2^3 = 2^(-49)
%    Thus we have fl(12.8) = 12.8 + 2^(-49) - 0.6 x 2^(-49) = 12.8 + 0.4 * 2^(-49)


%%
% (b) Compute the relative error d = |x − fl(x)|/|x| exactly as a base-10 number, and
% show that d satisfies the upper bound d ≤ε_mach/2.

d = abs(0.4 * 2^(-49))/abs(12.8)
eps/2 - d
%%
%    ans = 5.551115123125783e-17 > 0 so the d satisfies the upper bound d ≤ε_mach/2.

%% Problem 2 

%%
% (a) Explain why between 2^53 and 2^54, the only double precision floating point numbers
% that exist are the even numbers.
eps(2^53)
%%
%    We got eps(2^53) = 2 and we know 2^53 is an even number.
%    So the smalles ε for 2^53 is 2, which means we can add 2 to 2^53 to get the next
%    floating point, the distance between each floating point is 2. 2^53 is an even number
%    and even number plus 2 is also enen, thus the only double precision floating point
%    numbers between 2^53 and 2^54 are the even numbers.
%%
% (b)