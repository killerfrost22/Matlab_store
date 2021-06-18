% solve Ax = b
% Gaussian elimination, with partial pivoting
clear all;
format long;

n = 500;
A = rand(n)-0.5;
b = rand(n,1)-0.5;
x = zeros(n,1);

A0 = A;
b0 = b;

% Gaussian elimination
for i = 1:n-1
    % partial pivoting
    temp = 0; 
    tempj = -1;
    for j = i:n
        if abs(A(j,i)) > temp
            temp = abs(A(j,i));
            tempj = j;
        end
    end
    tempA = A(i,i:n);
    A(i,i:n) = A(tempj,i:n);
    A(tempj,i:n) = tempA;
    tempb = b(i);
    b(i) = b(tempj);
    b(tempj) = tempb;
    %%%
    for j = i+1:n
        A(j,i+1:n) = A(j,i+1:n) - A(j,i)/A(i,i) * A(i,i+1:n);
        b(j) = b(j) - A(j,i)/A(i,i) * b(i);
        A(j,i) = 0;
    end
end

% backward substitution
for i = n:(-1):1
    x(i) = (b(i) - sum(A(i,i+1:n) .* x(i+1:n)')) / A(i,i);
end

% x

my_error1 = sum(abs(A0 * x - b0))

x0 = A0\b0;
my_error2 = sum(abs(x - x0))



