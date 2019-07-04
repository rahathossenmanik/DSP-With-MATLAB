clear;
clc;

N = 10;
t = -5:1:N/2-1;

x = ones(1,N);
subplot(2,2,1:2);
stem(t,x);
xlabel('t');ylabel('x(t)');
title('Unit Step Sequence');

x = [zeros(1,7), ones(1,1), ones(1,2)];
t = t + 4;
subplot(2,2,3);
stem(t,x);
xlabel('t');ylabel('x(t)');
title('Shift Operation');

y = flip(x);
subplot(2,2,4);
stem(t,y);
xlabel('t');ylabel('x(t)');
title('Reversal Operation');