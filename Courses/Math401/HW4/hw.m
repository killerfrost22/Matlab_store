 format rational
% A = [31 11 6 22; 11 9 7 13; 6 7 14 10]
% rref(A) 
% 
% X = 
% 
% 
% format double
% y1 =7.1844-2.2089*x+0.9549*x.^2
% y2 =  27.2375-(1237/560)*x
% 
% 
% x = linspace(-7, 7);
% plot(x,y1)
% hold on 
% plot(x,y2)
% X = [-7, -5, -3, -1, 1, 3, 5, 7];
% Y = [69.4, 42.2, 22.3, 10.4, 6, 9, 20.1, 38.5];
% for i =1:length(X)
%     for j = 1:length(Y)
%         scatter(X,Y)
%     end
% end
% 
% hold off
% 
% 
% format double 
% x = linspace(-2, 7);
% y = 0.8*exp(x) + 2.33
% 
% plot(x,y)
% ylim([-1 5])
% hold on 
% scatter(-2,0)
% scatter(0,3)
% scatter(4,4)
% hold off

A = [9 4; 4 4 ;0 1 ;4 9 ; 36 25 ]
B = [45; 30; 6; 55; 230]
C = transpose(A)
F = C*B
D = C*A
G = F\D


syms f(t)
f(t) = (6/7)*t+(5/7);
pts = transpose([-1,0;1,2;2,2]);
fplot(f,[-5,20])
hold on
scatter(pts(1,:),pts(2,:),'filled')


    