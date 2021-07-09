I = int(f,0,1)
p=1:4;
for i=1:length(p)
    n(i)=10^p(i);
    T = trapez(f,n(i));
    E(i) = abs(I - T);
    fprintf('\n 10^%g T = %f, the error is %.9f',p(i),T,E(i));
end

loglog(n,E);
xlabel('n');
ylabel('error');