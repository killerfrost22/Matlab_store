function result = mysum(a,m,n)
syms x
x = 0;
for r = (m:n)
    x= x+((5/a)^m);
    m = m+1;
end
result = x;
end