% ch05.m      Kayla Gonzales
clear, clc;
format compact;
format short g;

%% 5.11

%a

diameter = 0.505;
radius = diameter/2;
origLength = 2; %in
force = [0, 2000, 4000, 6000, 7500, 8000, 8500, 9000, 9500, 10000]; %lb
length = [2, 2.0024, 2.0047, 2.0070, 2.0094, 2.0128, 2.0183, 2.0308, 2.0500, 2.075]; %in

area = pi.*(radius).^2;
stress = force/area; %psi
strain = (length - origLength)/origLength; %in/in

table = table(stress', strain');
table.Properties.VariableNames = {'Stress', 'Strain'};
disp(table)

%b

plot(strain, stress, '-ok')

%c

title('Stress & Strain');
xlabel('strain');
ylabel('stress');

%d

text(.00475, 37440,'This is the yield point');

%% 5.15 (use stepsize pi/100, add title to subplots)

theta = (0 : (pi/100) : 2*pi);

%a
r1 = sin(theta).^2 + cos(theta).^2;
subplot(2,2,1);
polar(theta, r1);
title('(a) sin(\Theta)^2 + cos(\Theta)^2');

%b
r2 = sin(theta);
subplot(2,2,2);
polar(theta, r2);
title('(b) sin(\Theta)');

%c
r3 = exp(theta/5);
subplot(2,2,3);
polar(theta, r3);
title('(c) e^(\Theta/5)');

%d
r4 = sinh(theta);
subplot(2,2,4);
polar(theta, r4);
title('(d) sinh(\Theta)');

%% 5.20 (stepsize 10, use titlr snd axis labels on all subplots)

k_0 = 10;
q = 1000;
r = 8.314;
t = (300 : 10 :1000);
k = k_0.*exp(-q./(r.*t));

%a

figure(2)
subplot(1, 2, 1);
plot(t, k);
xlabel('T');
ylabel('K');
title('Reaction Rate-Constants');


%b
k2 = log(k);
t2 = 1./t;
subplot(1, 2, 2);
plot(t2, k2);
xlabel('1/T');
ylabel('Natural Log of K');
title('Reaction Rate-Constants');


%% 5.27 (use plotyy function, use title, axis labels, legend,
% use 9.8 m/s for g, double check input data is correct)

t = (1 : 20);
g = 9.8;
theta = 4./pi;
v_0 = 100;

vert = t.*v_0.*sin(theta) - (1/2).*g.*t.^2;
vel = v_0.*sin(theta) - g.*t;

figure(3)

yyaxis left 
plot(t, vert)
ylabel('Vertical Distance')

yyaxis right
plot(t, vel)
ylabel('Velocity')

xlabel('Time in Seconds')
title('Distance and Velocity')
legend('Vertical Distance', 'Velocity')


