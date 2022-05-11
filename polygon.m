function polygon()

n = input('Enter the number of sides:\n');
theta = 0 : 2.*pi./n : 2*pi;
r = ones(1, length(theta));
polar(theta,r)
title('polygon')