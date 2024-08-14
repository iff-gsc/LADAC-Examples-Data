%% Tattu R-Line Version 2.0 4 Cells HV 1300 mAh
bat.name = 'Tattu R-Line Version 2.0 4 Cells HV 1300 mAh';

% battery voltage
bat.V = 4*3.8;

% cuboid dimensions of battery, in m
bat.dimensions = [68; 34; 35] .* 1e-3;

% mass of battery, in kg
bat.body.m = 0.162;

% inertia matrix of battery at CoG, in kg m^2
bat.body.I = calcCuboidInertia(bat.dimensions, bat.body.m);
