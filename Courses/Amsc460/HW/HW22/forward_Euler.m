% Forward Euler Method for solving ODE
% INPUT:  f - The right hand side f(t,y)
%        t0 - initial time
%        y0 - initial y-value 
%         T - final time
%         n - number of time-steps
%
% OUTPUT: Vectors t and y containing the coordinates of the approximate solution
%
function [t,y] = forward_Euler(f,t0,T,y0,n)
  
  h = (T-t0)/n;                 % Define step-size h
  t(1) = t0;                    % Initialize (t,y) starting point
  y(1) = y0;
  
  for i = 2:n+1
    t(i) = t(i-1)+h;
    y(i) = y(i-1) + h*f(t(i-1),y(i-1));
  end
end
