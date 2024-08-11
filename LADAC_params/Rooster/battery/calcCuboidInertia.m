function I = calcCuboidInertia(dimensions, mass)

I_11 = 1/12 * mass * (dimensions(2)^2 + dimensions(3)^2);
I_22 = 1/12 * mass * (dimensions(1)^2 + dimensions(3)^2);
I_33 = 1/12 * mass * (dimensions(1)^2 + dimensions(2)^2);

I = [I_11, 0,    0;...
     0,    I_22, 0;...
     0,    0,    I_33];

end
