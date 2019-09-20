clc;
clear all;
close all;

N = input('Enter the value of N: ');
n = 0:1:N-1;
for i=1:N
  w(i) = 1;
endfor
subplot(2,2,1);
plot(n,w);
title('Rectangal Window');
for i=1:1:N/2+1
  w(i) = (i-1)/(N/2);
endfor
if mod(N,2)==0
  for j=N/2+1:1:N-1
    i = i + 1;
    w(i) = 2 - (i)/(N/2);
  endfor
else
  for j=N/2+1:1:N
    i = i + 1;
    w(i) = 2 - (i)/(N/2);
  endfor
endif
subplot(2,2,2);
plot(n,w);
title('Triangular Window');
for i=1:N
  w(i) = 0.5 - 0.5*cos(2*pi*(i-1)/N);
endfor
subplot(2,2,3);
plot(n,w);
title('Hanning Window');
for i=1:N
  w(i) = 0.54 - 0.46*cos(2*pi*(i-1)/N);
endfor
subplot(2,2,4);
plot(n,w);
title('Hamming Window');