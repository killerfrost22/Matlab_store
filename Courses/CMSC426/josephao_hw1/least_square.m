%%Data loader
data1 = load('.\data\data1.mat');
data2 = load('.\data\data2.mat');
data3 = load('.\data\data3.mat');
mat1 = data1.pts;
mat2 = data2.pts;
mat3 = data3.pts;


leastsquares(mat1,0.0000003)
leastsquares(mat2,0.0000007)
leastsquares(mat3,0.000005)

function w = llr(X, y)
[L,W] = size(X);
X = [ones(1,W);X];
w = inv(X*X')*X*y';
end

function beta = regularization(X,y, lambda)
[L,W] = size(X);
X = [ones(1,W);X];
beta = inv(X*X' + lambda * eye(L + 1)) * X*y';
end

function ran = ransac(data,ratio)
    s = 2;
    t = 10;
    p=0.99999;
    r=ratio;
    N = ceil(log(1-p)/log(1-(1-r)^s))
    xvals = data(1,:);
    yvals = data(2,:);
    xinliers = xvals;
    yinliers =  yvals;
    bestmb=[0,0];
    bestd = 0;
    for i = 1:N
        p1=randi(length(xinliers));
        p2=randi(length(xinliers));
        while(p1==p2)
            p2=randi(length(xinliers));
        end
        x1=xinliers(p1);
        y1=yinliers(p1);
        x2=xinliers(p2);
        y2=yinliers(p2);
        m=(y2-y1)/(x2-x1);
        lineeq=@(x)m*(x-x1)+y1;
        
        d = (1-r)*length(xvals);
        numinliers = 0;
        for j = 1:length(xvals)
            if abs(yvals(j)-lineeq(xvals(j)))<=t
                numinliers=numinliers+1;
            end
        end
        if numinliers>bestd
            bestd=numinliers;
            bestmb(1)=m;
            bestmb(2)=y1-m*x1;    
        end

        if numinliers/(length(xvals)) >= d
            newxinliers = zeros(1,numinliers);
            newyinliers = zeros(1,numinliers);
            filled=0;
            for j = 1:length(xvals)
                if yvals(j)-lineeq(xvals(j))<=t
                    filled=filled+1;
                    newxinliers(filled)=xvals(j);
                    newyinliers(filled)=yvals(j);
                end
            end
            xinliers=newxinliers;
            yinliers=newyinliers;
        end
    end
    lineeq=@(x)bestmb(1)*x+bestmb(2);
        [minx,maxx] = deal(min(xvals),max(xvals)) ;
        [miny,maxy] =deal(lineeq(minx),lineeq(maxx));
        plot([minx; maxx],[miny; maxy])
        hold on

end

function lsq = leastsquares(x,tune)
figure
x_val = x(1,:);
y_val = x(2,:);

X = [transpose(x(1,:)) ones([length(x),1])];
Y = transpose(y_val); 
ols = @(X,Y)(inv(transpose(X)*X))*(transpose(X)*Y);
B = ols(X,Y);
[m,b]=deal(B(1),B(2));
lineeq= @(x)x.*(m)+(b);
[x1,x2] = deal(min(x_val),max(x_val)) ;
[y1,y2] =deal(lineeq(x1),lineeq(x2));
plot(x_val,y_val,'*')
hold on
plot([x1; x2],[y1; y2]);
hold on 
ransac(x,0.5)
legend('data','Ordinary Least Squares', 'RANSAC t=0.5')
end
