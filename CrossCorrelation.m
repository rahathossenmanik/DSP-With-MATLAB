clc;
clear;

x = [2, -1, 3, 7, 1, 2, -3];
y = [1, -1, 2, -2, 4, 1, -2, 5];


lag = -6:1:7;

N = size(x,2);
M = size(y,2);
result = zeros(1, N + M - 1 );
len = size(result,2);

for m = 1 : len  
   arg = (m - N); 

   if(arg < 0)
       negativeCondition = 1;
       limit = N + arg;
   else
       negativeCondition = 0;
       limit = N - arg;
   end

   for n = 1:limit
           if(negativeCondition == 0)
            result(m) = result(m) + x(arg + n) + y(n);
           else
            result(m) = result(m) + x(n) + y(n - arg);
           end
   end
end

stem(lag, result)