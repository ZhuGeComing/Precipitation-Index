function as = countP3(t)
load 'D:\FOLDER\����\2019-6-17 �㱨\test.mat'
p;
x;
ex = t(1);
cv =  t(2);
cs = t(3);
c0 = 2.515517; c1 = 0.802853; c2 = 0.010328;
d1 = 1.432788; d2 = 0.189269; d3 = 0.001308;
m = length(p);
kt = [];
for i = 1:m
    if(p(i) < 0.5)
        t = sqrt(-2*log(p(i)));
        spi(i) = t - (c0 + c1*t + c2*t^2)/(1+ d1*t+d2*t^2+d3*t^3);
    else
        t = sqrt(-2*log(1-p(i)));
        spi(i) = -t + (c0 + c1*t + c2*t^2)/(1+ d1*t+d2*t^2+d3*t^3);
    end
    kt(i) = spi(i) + cs/2*((spi(i)^2-1)/3) + cs^2*(spi(i)^3/108-spi(i)/18) + cs^3*(1/216-spi(i)^3/216)+cs^4*spi(i)/1296-cs^5/23328;
end
y = ex+kt*ex*cv;
as = sum(abs(x - y'));
end