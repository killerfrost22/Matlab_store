% show Lagrange interpolation polynomials

clear all;

% given [x0,...,xn]
xk = [0,0.15,0.3,1.1];
n = size(xk,2)-1;

% picture range
xL = -0.03;
xR = 1.13;
dx = 0.01;
x = xL:dx:xR;

for i = 1:(n+1)
    temp = x.*0 + 1;
    for j = 1:(n+1)
        if j ~= i
            temp = temp .* (x-xk(j)) / (xk(i)-xk(j));
        end
    end
    plot(x,temp);
    hold on;
end

% draw horizontal, vertical lines
H = 3;
dH = 0.01;
y = -H:dH:H;
for i = 1:(n+1)
    plot(xk(i) + 0*y, y, 'k--');
    hold on;
end
plot(x, x*0, 'k--');
plot(x, x*0+1, 'k--');




