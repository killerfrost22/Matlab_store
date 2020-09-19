function result = myapproximatederivative(f,a,t)
x= 2;
h = 1/x;
prev = (f(a+h)-f(a))/h;
x = x + 1;
h = 1/x;
newv = (f(a+h)-f(a))/h;
while(abs(newv-prev)>= t)
    prev = newv;
    x = x + 1;
    h = 1/x;
    newv= (f(a+h)-f(a))/h;
end
result = newv;
end