%% Tattu R-Line Version 1.0 4 Cells 1300 mAh
bat.name = 'Tattu R-Line Version 1.0 4 Cells 1300 mAh';

% battery voltage
bat.V = 4*3.7;

% cuboid dimensions of battery, in m
bat.dimensions = [68; 33; 35] .* 1e-3;

% mass of battery, in kg
bat.body.m = 0.166;

% inertia matrix of battery at CoG, in kg m^2
bat.body.I = calcCuboidInertia(bat.dimensions, bat.body.m);
