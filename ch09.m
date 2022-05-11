%% ch09.m      Kayla Gonzales
clear, clc, close all;
format compact
format short g
addpath MyToolBox

%% 9.5
clc
clear

p = primes(100);
disp('The primes numbers below 100 are: ')
disp(p)

adjacent = zeros(1, length(p) - 1);

for i = (1 : length(p) - 1);
    adjacent(i) = p(i) .* p(i + 1);
end
disp('The primes multiplied adjacently are: ')
disp(adjacent)

%% 9.8

first = input('Enter the first number: ')
second = input('Enter the second number: ')
clear a;
a(1) = first;
a(2) = second;
i = 3;
a(i) = a(i -1) + a(i - 2);

while abs (a(i) / a(i - 1) - a(i - 1) / a(i -2)) > 0.001
    i = 1 + 1;
    a(i) = a(i -1) + a(i - 2);
end

disp(a)

%% 9.14
clear, clc;

x = input('Enter the value of x: ')
sum = 0;
exact = cos(x);
for k = (k : 1 : 10);
    sum = sum + (-1)^(k - 1) .* ((x)^2.*(k - 1)) / factorial(2 .*(k-1));
    if(abs(sum - exact)) < .001
        break;
    end
end

disp('Terms included: ')
disp(k)

disp('approx value of cos(x) is: ')
disp(sum)

disp('exact value of cos(x) is: ')
disp(exact)

%% 9.19


