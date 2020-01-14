function [A,b] = regmatrix(x,y,m)
    n = length(x);
    A = zeros(m+1,m+1);
    b = zeros(m+1,1);
    sumx = 0;
    sumxq = 0;
    sumxk = 0;
    sumxv = 0;
    sumy = 0;
    sumyx = 0;
    sumyxq = 0;
    for i = 1:n
        sumx = sumx + x(i);
        sumxq = sumxq + x(i)^2;
        sumxk = sumxk + x(i)^3;
        sumxv = sumxv + x(i)^4;
        sumy = sumy + y(i);
        sumyx = sumyx + x(i)*y(i);
        sumyxq = sumyxq + y(i)*x(i)^2;
    end
    A(1,1) = n; A(1,2) = sumx; A(1,3) = sumxq;
    A(2,1) = sumx; A(2,2) = sumxq; A(2,3) = sumxk;
    A(3,1) = sumxq; A(3,2) = sumxk; A(3,3) = sumxv;
    b(1,1) = sumy; b(2,1) = sumyx; b(3,1) = sumyxq;
end

