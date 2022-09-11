% ** Parameters for motor-propeller control effectiveness (Minnie) **

% thrust factor, N/(rad/s)^2
param.k   = 2.8657e-05;
% drag factor, Nm/(rad/s)^2
param.d   = 4.8860e-07;
% propeller FRD x positions w.r.t. CG, m
param.x   = [1,1,-1,-1]*0.1775;
% propeller FRD y position w.r.t. CG, m
param.y   = [ -0.2300, 0.2300, 0.2050, -0.2050 ];
% propeller FRD z position w.r.t. CG, m
param.z   = [0,0,0,0];
% direction of all propeller rotations, from top view: -1 = right, 1 = left 
param.a   = [-1,1,-1,1];
% propeller unit vector thrust component in FRD x direction
param.nx  = [0,0,0,0];
% propeller unit vector thrust component in FRD y direction
param.ny  = [0,0,0,0];
% propeller moment of inertia, kg*m^2
param.ip  = 1.8150e-04;
% motor torque constant (inverse of KV), Nm/A
param.kt  = 0.0195;
% battery voltage, V
param.vb  = 14.8;
% motor internal resistance, Ohm
param.ri  = 0.1040;
