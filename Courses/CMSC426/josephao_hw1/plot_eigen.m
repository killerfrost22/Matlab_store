data1 = load('.\data\data1.mat');
data2 = load('.\data\data2.mat');
data3 = load('.\data\data3.mat');
mat1 = data1.pts;
mat2 = data2.pts;
mat3 = data3.pts;
close all

%% call function 
cov(mat1);
cov(mat2);
cov(mat3);

function covariance = cov(data)
    n = length(data);
    x_mean = sum(data(1,:))/n;
    y_mean = sum(data(2,:))/n;
    %row vector to store the variances and covariances for now
    [xx, xy, yx, yy] = deal(0,0,0,0);
    for i = 1:length(data)
        x = data(1,i);
        y = data(2,i);
        xx = xx + (x-x_mean)*(x-x_mean);
        xy = xy + (x-x_mean)*(y-y_mean);
        yx = xy;
        yy = yy + (y-y_mean)*(y-y_mean);
    end
    figure;
    plot(data(1,:),data(2,:),'*');
    [xx,xy,yx,yy] = deal((xx/n-1), (xy/n-1),( yx/n-1), (yy/n-1));
    %A 2*2 matrix 
    cov = [xx,xy;yx,yy];
    hold on
    %find eigenvectors, values
    [V,D] = eig(cov);
    %eigenvectors norm
    LV1 = norm([V(1,1) V(2,1)]);
    LV2 = norm([V(1,2) V(2,2)]);
    %twice the sqrt of the eigenvalues
    l1 = 2*sqrt(D(1,1));
    l2 = 2*sqrt(D(2,2));
    %scaled by twice the square root 
    v1 =[(V(1,1)/LV1)*l1,(V(2,1)/LV1)*l1];
    v2 =[(V(1,2)/LV2)*l2,(V(2,2)/LV2)*l2];
    %scaled vectors
    quiver(x_mean-v1(1)/2,y_mean-v1(2)/2,v1(1),v1(2),1)
    quiver(x_mean-v2(1)/2,y_mean-v2(2)/2,v2(1),v2(2),1)
    legend('data','V1 centered at mean','V2 centered at mean')
    xlabel('x')
    ylabel('y')
end


