%% Tattu R-Line Version 2.0 4 Cells HV 1550 mAh
bat.name = 'Tattu R-Line Version 2.0 4 Cells HV 1550 mAh';

% battery voltage
bat.V = 4*3.8;

% cuboid dimensions of battery, in m
bat.dimensions = [68; 40; 35] .* 1e-3;

% mass of battery, in kg
bat.body.m = 0.188;

% inertia matrix of battery at CoG, in kg m^2
bat.body.I = calcCuboidInertia(bat.dimensions, bat.body.m);
