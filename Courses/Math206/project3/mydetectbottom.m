function result = mydectbottom(f,a,t)
x=a;
x= a+3*t;
while (f(x) <= f(x-3*t))
    x= x+3*t;
end
result = x;
end
