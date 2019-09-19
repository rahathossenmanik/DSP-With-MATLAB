clc;
clear;
close;

fs=8000;
ts=1/fs;
N=8;
n=0:N-1;
x=sin(2*pi*1000*n*ts) + 0.5*sin(2*pi*2000*n*ts + 3*pi/4);
X = zeros(N,1);
for m = 1:N
    for n = 1:N
        X(m) = X(m) + x(n)*exp(-2j*pi*(n-1)*(m-1)/N);
    end
end
n=0:N-1;
subplot(3,2,1);
stem(n,x)
title('x(n)')
subplot(3,2,2);
stem(n,real(X))
title('X(m)')
subplot(3,2,3);
stem(n,abs(X))
title('Amplitude Spectrum')
y = abs(X).^2/N;
subplot(3,2,4);
stem(n,y)
title('Power Spectrum')
subplot(3,2,5);
stem(n,angle(X)*180/pi)
title('Phase Spectrum')
subplot(3,2,6);
stem(n,real(ifft(X)))
title('Inverse DFT')