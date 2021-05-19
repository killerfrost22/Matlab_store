%%Yisheng Leng && Yizhan Ao
%% Matlab 6
%% Problem 3 Part A

A = [3 -1;1 -2]
[xi, R] = eig(sym(A))

% x(t) = c1*[5/2 - 21^(1/2)/2;1]*exp((1/2 - 21^(1/2)/2)t) + c2[21^(1/2)/2 +
% 5/2;1]*exp((21^(1/2)/2 + 1/2)t)
% The solution will be approaching 0 when y(t) increases faster than x(t) for
% x(t)/y(t) and approach positive infinity if y(t) increases at a slower
% rate than x(t). These two solutions could approach either zero or
% positive infinity depending on whether the exponents attached to their
% eigenvectors is positive or negative.

%% Problem 3 Part B

A = [3 3;-3 -2]
[xi, R] = eig(sym(A))

% x(t) = c1[5/6 - (11^(1/2)*i)/6;1]*exp((1/2 - (11^(1/2)*i)/2)t) + c2[ 5/6
% + (11^(1/2)*i)/6;1]*exp(( 1/2 + (11^(1/2)*i)/2)t)

%% Problem 3 Part C

A = [-2 -1 2;0 4 5;0 -1 0]
[xi, R] = eig(sym(A))
b = [7;5;5]
c = xi\b

% x(t) = (5/2 - (15*i)/2)*[1;i-2;1]*exp(2-i) + ((15*i)/2 + 
% 5/2)*[1;-i-2;1]*exp(i+2)+ 2*[1;0;0]*exp(-2)

%% Problem 3 Part D

syms x y z t
[x,y,z] = dsolve('Dx = -2*x-y+2*z','Dy = 4*y+5*z','Dz = -y','x(0)=7','y(0)=5','z(0)=5','t')


%% Problem6 Part A
% Finding Critical Points
syms x y
syst1 = x*(1.5-x-0.5*y);
syst2 = y*(2-1.5*x-0.5*y);
[xc, yc] = solve(syst1, syst2, x, y);
disp('Critical points:');
disp([xc yc])

% Finding Stability
A = jacobian([syst1 syst2], [x y])
evals = eig(A);
disp('Eigenvalues at (0,0);');
disp(double(subs(evals, {x, y}, {0, 0})))
disp('Eigenvalues at (1,1):');
disp(double(subs(evals, {x, y}, {1, 1})))
disp('Eigenvalues at (3/2,0);');
disp(double(subs(evals, {x, y}, {3/2, 0})))
disp('Eigenvalues at (0,4):');
disp(double(subs(evals, {x, y}, {0, 4})))

% According to the eigenvalues we calculated, our stability points are:
% (0,0) - unstable critical point.
% (1,1) - asymptotically stable.
% (3/2,0) - asymptotically stable.
% (0,4) - asymptotically stable.

%% Problem 6 Part B
[X, Y] = meshgrid(0:0.1:2, 0:0.3:4);
U = X.*(1.5-X-0.5*Y);
V = Y.*(2-1.5*X-0.5*Y);
L = sqrt((U/2).^2 + (V/4.5).^2);
vectfield = quiver(X, Y, U./L, V./L, 0.4);
axis tight
xlabel t, ylabel y
title 'Problem 6 Part B - Vector Field'

%% Problem 6 Part C

f = @(t, x) [x(1)*(1.5-x(1)-.5*x(2)); x(2)*(0.75-0.125*x(1)-x(2))];
figure; axes; hold on
for a = .25:0.25:1.75
    for b = 0.5:0.5:4
        [t, xa] = ode45(f, [0 10], [a b]);
        plot(xa(:,1), xa(:,2))
        [t, xa] = ode45(f, [0 -5], [a b]);
        plot(xa(:,1), xa(:,2))
    end
end
axis([0 3/2 0 4])
xlabel t, ylabel y
title 'Problem 6 Part C Trajectories'


%% Problem 6 Part D
% Suppose the initial state of the population is given by x(0) = 0.1, y(0)
% = 0.1. Find the state of the population t = 1, 2, 3, 4, 5, ... , 20.

[t, xa] = ode45(f, [0:20], [2.5, 2]);
disp([t xa])

% The population jumpes down from t = 0 to 3. Aftet that, the population
% continues decreasing to 0.6 at t = 20.

%% Problem 6 Part E

[t, xa] = ode45(f, [0, -10], [0.99 0.99]);
separatrix(1) = plot(xa(:,1), xa(:,2), ':');
[t, xa] = ode45(f, [0, -10], [1.01 1.01]);
separatrix(1) = plot(xa(:,1), xa(:,2), ':');
xlabel t, ylabel y
title 'Problem 6 Part E Trajectories and Separatrices'
hold on
axis([0 2 0 4.5])
xlabel t, ylabel y
hold off

%% Problem 6 Part F

hitline = @(t, x) eval('deal(x(1) - 2.5, 1, 1)', 'x(1) - 2.5');
options = odeset('Events', hitline, 'relTol', 1e-4);
[t, xa] = ode45(f, [0, -10], [1.001 1.001], options);
xa(length(t),:)


