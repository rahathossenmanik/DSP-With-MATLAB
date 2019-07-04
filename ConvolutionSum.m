clear;
clc;

x = [3, 2, 1, 2];
h = [1, 2, 1, 2];
y = zeros(1, length(x)+length(h)-1);
for i = 1:length(x)
    for j = 1:length(h)
        m(i,j) = x(i)*h(j);
        y(i+j-1) = y(i+j-1) + m(i,j);
    end
end
y

subplot(2,2,1);
stem(x,h,'LineWidth',3);
axis([0 5 0 5])

subplot(2,2,2);
stem(x,flip(h), 'LineWidth',3);
axis([0 5 0 5])

subplot(2,2,3);
stem(h,x,'LineWidth',3);
axis([0 5 0 5])

subplot(2,2,4);
stem(flip(h),x, 'LineWidth',3);
axis([0 5 0 5])