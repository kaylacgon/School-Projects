clear, clc;
format compact;
format short g;

%% 2.7 % ch02.m            Kayla Gonzales


%Ideal Gas Law

pressure = 220; %bar
moles = 2; %mol
volume = 1; %L
a = 5.536; %L^2bar/mol^2
b = 0.03049; %L/mol
IGC= 0.08314472; %L bar/K mol

tempIGL = (pressure * volume)/(moles * IGC) %kelvin

%van der Waal

pressure = 220; %bar
moles = 2; %mol
volume = 1; %L
a = 5.536; %L^2bar/mol^2
b = 0.03049; %L/mol
IGC= 0.08314472; %L bar/K mol

tempvanderWaal = (pressure + (moles^2 * a)/(volume^2))*(volume - moles * b)/(moles * IGC) %kelvin

%% 2.13

%feet to meters

pressure = (1:10)';
pH = 0.3048.*pressure;
conversion_table = table(pressure, pH);
conversion_table.Properties.VariableNames = {'feet', 'meters'};
disp(conversion_table)

%radians to degrees

radians = (0 : 0.1 : 3.14)';
degrees = (180/pi).*radians;
conversion_table = table(radians, degrees);
conversion_table.Properties.VariableNames = {'radians', 'degrees'};
disp(conversion_table)

%mi/h to ft/s

mph = [1, 7, 14, 21, 28, 35, 42, 49, 56, 66, 70, 77, 84, 91, 100]';
fps = 1.467.*mph;
conversion_table = table(mph, fps);
conversion_table.Properties.VariableNames = {'MPH', 'FPS'};
disp(conversion_table)


%hydronium concentration to pH

pressure = logspace(.001, 0.1, 10)';
pH = -log10(pressure);
conversion_table = table(pressure, pH);
conversion_table.Properties.VariableNames = {'H Ion Concentration', 'pH'};
disp(conversion_table)

%% 2.19
% a

pressure = (0 : 40 : 400)';
moles = 2; %mol
volume = 1; %L
a = 5.536; %L^2bar/mol^2
b = 0.03049; %L/mol
IGC= 0.08314472; %L bar/K mol

temp = (pressure + (moles^2 * a)/(volume^2))*(volume - moles * b)/(moles * IGC);
conversion_table = table(pressure, temp);
conversion_table.Properties.VariableNames = {'pressure', 'temp'};
disp(conversion_table)

%b

pressure = 220;
moles = 2; %mol
volume = [.1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; %L
a = 5.536; %L^2bar/mol^2
b = 0.03049; %L/mol
IGC= 0.08314472; %L bar/K mol

%%temp = (pressure + (moles^2 * a)/(volume.^2))*(volume - moles * b)/(moles * IGC);
%%conversion_table = table(volume, temp);
%%conversion_table.Properties.VariableNames = {'pressure', 'temp'};
%%disp(conversion_table)

%% 4.1

% given matrices
a = [ 5, 3, 22;
      3, 8, 5;
      14, 3, 82];
b = [1;
    5;
    6];

c = [12, 18, 5, 2];

%a

d = [22;
    5;
    82]

%b

e = [1, 22,;
    5, 5;
    6, 82]

%c

f = [1;
    5;
    6;
    22;
    5;
    82]

%d

g = [ 5, 3, 22;
      3, 8, 5;
      14, 3, 82;
      12, 18, 5]
  
%e

h = [22, 18, 5]
