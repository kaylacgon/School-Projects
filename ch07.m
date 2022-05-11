% ch07.m    Kayla Gonzales
clear, clc, close all;
format compact
format short g

%% 7.5 / 7.6 (working)
%combine problems by requesting three inputs
%and displaying a single output

first = input('Enter your first name: ', 's');
last = input('Enter your last name: ', 's');
age = input('Enter your age: ', 's');

x = [first, ' ', last, ' ', num2str(age)];
disp(['Your full name and age are: ' x])

%% 7.13 
%char function instead of curly braces

%a
last = char('Smith', 'Jones', 'Webb', 'Anderson');

%b
first = char('Fred', 'Kathy', 'Milton', 'John');

%c
age = [6, 22, 92, 45]';
height = [47, 66, 62, 72]';
weight = [82, 140, 110, 190]';

%d
% table1 = table(last', first', age', height', weight');
% table1.Properties.VariableNames = {'first', 'last', 'age', 'height', 'weight'};
% disp(table1)


%% 7.15
%ensure table has all required headings

%1 kW = (3412.14) / (2544.5)

%a 

b = input('Enter the increment: ');
kw = (0 : b : 15);
hp = (2544.5 / 3412.14) .* kw;

table1 = [kw; hp];
disp('Conversion table from kW to hp')
disp(' kW      hp')
fprintf('%3.0f\t\t%4.4f\n', table1)


%b 

table1 = table(kw', hp');
table1.Properties.VariableNames = {'kW', 'hp'};
disp(table1)

%c

b = input('Enter the increment: ');
c = input('Enter the final table value: ');

lb = (0 : b : c);
btu = (lb / 778);

table1 = [lb; btu];
disp('Conversion table from lb to btu')
disp(' lb      btu')
fprintf('%3.0f\t\t%4.4f\n', table1)


%d (not working)

table1 = table(lb', btu');
table1.Properties.VariableNames = {'lb', 'btu'};
disp(table1)

%e

d = input('Enter the initial kW value: ');
e = input('Enter the final kW value: ');
f = input('Enter the number of table entries: ');

kw2 = linspace(d, e, f);
btu2 = 3412.14 .* kw2;
hp2 = 1.341 .* kw2;
lb2 = 44253.73 .* kw2;

table1 = [kw2; btu2; hp2; lb2];
disp('Conversion table from kW to btu, hp, and lb')
disp('  kW        btu     hp      lb')
fprintf('%5.1f\t\t%4.0f%5.0f\t\t%5.0f\n', table1)


%f (not working)

table1 = table(kw2', btu', hp', lb'');
table1.Properties.VariableNames = {'kw2', 'btu', 'hp', 'lb'};
disp(table1)



%% 7.17
%display length of chord on figure
%using gtext function

theta = (0 : pi/100 : 2.*pi);
plot(cos(theta), sin(theta));
[x,y] = ginput(2);
hold on
plot(x,y)
dist = sqrt (((x(2,1)-x(1,1))^2) + (y(2,1)-y(1,1)^2));
disp('The two points are: ')
table = [x,y];
disp(table)
disp(['The length of the line between the two points is: ' num2str(dist)])

