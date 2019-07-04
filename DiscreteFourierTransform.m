clc;
clear;

t = 0:1/100:10;
x = sin(2*pi*1000*t) + 0.5*sin(2*pi*2000*t + 3*pi/4);
y = x + 2*randn(size(t));

Y = fft(y,512);
Powerspectrum = Y.* conj(Y) / 512;
f = 1000*(0:256)/512;
stem(f,y(1:257))
title('Frequency content of y')