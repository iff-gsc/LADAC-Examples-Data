%% YUKI 3 Cells 1800 mAh
bat.name = 'YUKI 3 Cells 1800 mAh';

% battery voltage
bat.V = 3*3.7;

% cuboid dimensions of battery, in m
bat.dimensions = [90; 32; 27] .* 1e-3;

% mass of battery, in kg
bat.body.m = 0.145;

% inertia matrix of battery at CoG, in kg m^2
bat.body.I = calcCuboidInertia(bat.dimensions, bat.body.m);
