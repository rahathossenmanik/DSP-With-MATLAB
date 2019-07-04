clc;
clear;

fs=8000;
ts=1/fs;
N=8;
n=0:N-1;
x=sin(2*pi*1000*n*ts)+0.5*sin(2*pi*2000*n*ts+3*pi/4);
subplot(2,2,1:2);
stem(x)
grid on;
title('Discreate Signal')
X = zeros(N,1);
for m = 1:N
    for n = 0:N-1
        X(m) = X(m) + x(n+1)*exp(-j*2*pi*n*m/N);
    end
end

t = 0:N-1;
subplot(2,2,3);
stem(t,abs(X))
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - Magnitude')

subplot(2,2,4);
stem(t,angle(X)*180/pi)
xlabel('Frequency');
ylabel('Phase');
title('Frequency domain - Phase')