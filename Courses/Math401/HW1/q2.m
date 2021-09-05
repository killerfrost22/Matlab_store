M = [0.02 0 0.02 0.04;0 0.01 0.05 0.04;0.03 0 0.01 0.02;0.02 0.05 0.01 0];
judge = true;
i = 1 ;
temp = 0 ;
sum = eye(4);
while (flag)
    sum = sum + M^i;
    if (temp == sum)
        disp(i);
        flag = false;
    else
        temp = sum; 
        i = i+1;
    end
end