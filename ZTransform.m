clc;
clear;

x = [1, 3, 5, 7, 9];
b = 0;
n = length(x);
y = sym('z');
for i = 1:n
    b = b+x(i)*y^(1-i);
end
disp(b)