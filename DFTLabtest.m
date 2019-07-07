clc;
clear;
close;

fs=8000;
ts=1/fs;
N=16;
n=0:N-1;
x1=5*sin(2*pi*1000*n*ts + pi/2)
subplot(2,2,1);
stem(n,x1)
title('1.x1(n)')
X1 = zeros(N,1);
for m = 1:N
    for n = 1:N
        X1(m) = X1(m) + x1(n)*exp(-2j*pi*n*m/N);
    end
end
X1
n=0:N-1;
subplot(2,2,2);
stem(n,abs(X1))
title('3.X1(m)')

fs=750;
ts=1/fs;
N=8;
n=0:N-1;
x2=5*sin(2*pi*1000*n*ts + pi/2)
subplot(2,2,3);
stem(n,x2)
title('2.x2(n)')
X2=zeros(N,1);
for m = 1:N
    for n = 1:N
        X2(m) = X2(m) + x2(n)*exp(-2j*pi*n*m/N);
    end
end
X2
n=0:N-1;
subplot(2,2,4);
stem(n,abs(X2))
title('4.X1(m)')