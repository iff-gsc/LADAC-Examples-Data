%% SLS 3 Cells 3000 mAh
bat.name = 'SLS 3 Cells 3000 mAh';

% battery voltage
bat.V = 3*3.7;

% cuboid dimensions of battery, in m
bat.dimensions = [137; 43; 21] .* 1e-3;

% mass of battery, in kg
bat.body.m = 0.254;

% inertia matrix of battery at CoG, in kg m^2
bat.body.I = calcCuboidInertia(bat.dimensions, bat.body.m);
