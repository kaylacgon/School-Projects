% ch03.m  Kayla Gonzales

clear, clc;
format compact;
format shortg;

%a
[ace_data] = xlsread('ace.xlsx')

%b
years = ace_data(:, 1);
ace = ace_data(:, 2);
tropical_storms = ace_data(:, 3);
hurricanes = ace_data(:, 4);
major_hurricanes = ace_data(:, 5);

%c 
[Max_Ace, index] = max(ace)
year_of_max_ace = years(index, 1)

[Max_Tropical_Storms, index] = max(tropical_storms)
year_of_max_tropical_storms = years(index, 1)

[Max_Hurricanes, index] = max(hurricanes)
year_of_max_tropical_storms = years(index, 1)

[Max_Major_Hurricanes] = max(major_hurricanes)
year_of_max_major_hurricanes = years(index, 1)

%d
Mean_Ace = mean(ace)
Mean_Tropical_Storms = mean(tropical_storms)
Mean_Hurricanes = mean(hurricanes)
Mean_Major_Hurricanes = mean(major_hurricanes)

Median_Ace = median(ace)
Median_Tropical_Storms = median(tropical_storms)
Median_Hurricanes = median(hurricanes)
Median_Major_Hurricanes = median(major_hurricanes)

%e
Sorted_Ace = sortrows(ace_data, -2)
%% 4.9

pressures = (10 : 100 :1000);%kPa
R = 0.2870; %kJ
temps = (100 : 100 : 1000); %K

[P, T] = meshgrid(pressures, temps);
volume = ((R.*T) ./ P);

volume_chart_labeled = [NaN, pressures;
                        temps', volume]


%% 4.13

a = magic(5)

%part a
%yes this is still a magic matrix

a2 = a.* 2

sum_a2_row = sum(a2)
sum_a2_column = sum(transpose(a2))
sum_a2_diag = trace(a2)

%part b
%no, the matrix is no longer magic

a3 = a.^2

sum_a3_row = sum(a3)
sum_a3_column = sum(transpose(a3))
sum_a3_diag = trace(a3)

%part c
%yes, this is magic

constant = 2;
a4 = a + constant

sum_a4_row = sum(a4)
sum_a4_column = sum(transpose(a4))
sum_a4_diag = trace(a4)

%d
%no, this is not magic

a5 = [a,      a.*2;
      a.^2,   a+2]

sum_a5_row = sum(a5)
sum_a5_column = sum(transpose(a5))
sum_a5_diag = trace(a5)

%on a6 i moved some compnents from a5 around
%it is still not magic

a6 = [a+2,      a.*2;
      a.^2,   a]

sum_a6_row = sum(a6)
sum_a6_column = sum(transpose(a6))
sum_a6_diag = trace(a6)
  
%% 5.1

x = [0:10]

%a

y = exp(x)
figure(1)
plot(x, y)
title('y = e^x')
xlabel( 'X')
ylabel('Y')
grid on



%b

y = sin(x)
figure(2)
plot(x, y)
title('y = sin(x)')
xlabel('X')
ylabel('Y')
grid on


%c

a = 5;
b = 2;
c = 4;

y = a.*(x.^2) + (b.*x) + c
figure(3)
plot(x, y)
title('y = ax^2 + bx + c')
xlabel('X')
ylabel('Y')
grid on


%d


y = sqrt(x)
figure(4)
plot(x, y)
title('y = \surdx')
xlabel('X')
ylabel('Y')
grid on

