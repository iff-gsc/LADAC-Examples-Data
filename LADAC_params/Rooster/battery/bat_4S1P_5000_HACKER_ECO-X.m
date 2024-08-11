%% Hacker TopFuel ECO-X 5000 mAh, 4S, 20C
bat.name = 'Hacker TopFuel ECO-X 4 Cells 5000 mAh';

% battery voltage
bat.V = 4*3.7;

% cuboid dimensions of battery, in m
bat.dimensions = [140; 35; 43] .* 1e-3;

% mass of battery, in kg
bat.body.m = 0.450;

% inertia matrix of battery at CoG, in kg m^2
bat.body.I = calcCuboidInertia(bat.dimensions, bat.body.m);
