%ch06.m     Kayla Gonzales
clear, clc, close all;
format compact;
format short g;
addpath MyToolBox
type num_grains

%% 6.1 use incremenet of 10 for n
%use semilogy function to plot n and N, where n is on the axis
%labels and title


%a (in num_grains.m)

%b

n = (10:100);
N = num_grains(n);

%c

figure(1)
semilogy(n, N)
title('ASTM Grain Size')
xlabel('Grain Size')
ylabel('Number of Grains')



%% 6.4 output moles in a table of 4 labeled columns
%mass, benzyne, ethyl alcohol, refrigerant R134a
%call meshgrid inside function

m = (1:10);
mw = [78.115, 46.07, 102.3];
nmoles(m, mw)'





%% 6.9 test simple polygons
%display intermediate values to help with debugging

polygon


%% 6.11 increments of 0.1 for height 
% test by displaying table of height, pa, atm

h = (0 : 0.1 : 1);
p = 13560;
g = 9.8;

table(h, P)

