function result = mypiecewise(a,b,c) 
if(c==0)
    result = a*b;
elseif(c>0)
    result = a*b*c;
else
    result = -6;
end