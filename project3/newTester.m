disp("Start: mydectbottom")

vpa(mydetectbottom(@(x) x^3/3 - (3*x^2)/2 - 40*x - 7,5.0,0.4))
%8.6
vpa(mydetectbottom(@(x) x^3/3 - (5*x^2)/2 - 66*x - 6,5.0,1.7))
%15.2
disp("End: mydectbottom")