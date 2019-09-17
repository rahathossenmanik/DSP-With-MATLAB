clc;
clear all;
close all;

x = input('Enter values of x(n): ');
zerox = input('Zero Position of x: ');
h = input('Enter values of h(n): ');
zeroh = input('Zero Position of h: ');
k1 = -(length(h)-1);
k2 = length(x)+length(h)-1;
kstart = 1;
kend = k2 - k1 + 1;
xk = zeros(kstart,kend);
hk = zeros(kstart,kend);
for i=1:length(x)
  xk(-k1+i-zerox+1) = x(i);
endfor
h = flip(h);
for i=1:length(h)
  hk(i+zeroh-1) = h(i);
endfor
shift = 0;
for j=1:k2-zeroh+1+1
  X(shift+1) = 0;
  for i=1:length(h)+zeroh-1
    X(shift+1) = X(shift+1) + hk(i)*xk(i+shift);
  endfor
  shift = shift+1;
endfor
disp('Value of x(k): ');
disp(xk);
disp('Value of h(-k): ');
disp(hk);
disp('Convolution Sum: ');
disp(X);
subplot(3,1,1);
stem(1:length(xk),xk);
title('x(n)');
subplot(3,1,2);
stem(1:length(hk),hk);
title('h(n)');
subplot(3,1,3);
stem(1:length(X),X);
title('X(m)');