% ** Parameters for motor-propeller control effectiveness (Minnie) **

% thrust factor, N/(rad/s)^2
param.k   = 1.7195e-06;
% drag factor, Nm/(rad/s)^2
param.d   = 1.7506e-08;
% propeller FRD x positions w.r.t. CG, m
param.x   = [1,1,-1,-1]*0.0880;
% propeller FRD y position w.r.t. CG, m
param.y   = [-1,1,1,-1]*0.1150;
% propeller FRD z position w.r.t. CG, m
param.z   = [0,0,0,0];
% direction of all propeller rotations, from top view: -1 = right, 1 = left 
param.a   = [1,-1,1,-1];
% propeller unit vector thrust component in FRD x direction
param.nx  = [0,0,0,0];
% propeller unit vector thrust component in FRD y direction
param.ny  = [0,0,0,0];
% propeller moment of inertia, kg*m^2
param.ip  = 1.1000e-05;
% motor torque constant (inverse of KV), Nm/A
param.kt  = 0.0075;
% battery voltage, V
param.vb  = 11.4;
% motor internal resistance, Ohm
param.ri  = 0.0700;
