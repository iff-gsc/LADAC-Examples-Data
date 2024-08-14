%  ** Parameter file of quadcopter (Rooster) **

% Disclaimer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2023 Jonas Withelm
%   Copyright (C) 2023 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************


% This config file includes the following components:
%   - with:     frame, propulsion
%   - without:  battery

% The construction frame of reference is defined as
%   - FRD (Front-Right-Down)
%   - Origin is on the upper surface of the bottom plate at the center (See also CAD model)


%% ------- body parameters ------- %%
copter.name = 'Rooster';

% mass of vehicle, in kg
copter.body.m = 0.393;

% inertia matrix of vehicle at CoG, in kg m^2
%   scale up the inertia by 13 percent because the CAD model does not
%   include all components (screws, cables etc.) and therefore
%   underestimates the inertia

I_12 = -13233.048;  % (g mm^2)
I_13 =   4396.441;  % (g mm^2)
I_23 =   4799.372;  % (g mm^2)

copter.body.I = [1673000, I_12, I_13; ...
                 I_12, 1289000, I_23; ...
                 I_13, I_23, 2909000] .* 1e-9 .* 1.13;


%% ------- configuration parameters ------- %%
% CoG position in c frame, in m
copter.config.CoG_Pos_c = [-3.496; ...
                           -0.864; ...
                           -11.808] .* 1e-3;

% position of all propellers in c frame, in m
bx = 69.00e-3;
by = 93.00e-3;
bz = -23.00e-3;

copter.config.propPos_c = [ bx, -by, bz; ...
                            bx,  by, bz; ...
                           -bx,  by, bz; ...
                           -bx, -by, bz ]';

% direction of all propeller rotations, -1: right, 1 left
copter.config.propDir = [ -1; 1; -1; 1 ];

% orientation of the motors relative to the body
copter.config.M_b_prop1 = euler2Dcm([0,-pi/2,0]);
copter.config.M_b_prop2 = euler2Dcm([0,-pi/2,0]);
copter.config.M_b_prop3 = euler2Dcm([0,-pi/2,0]);
copter.config.M_b_prop4 = euler2Dcm([0,-pi/2,0]);

% ToDo: hit points for ground model
copter.config.hitPoints_c = [ copter.config.propPos_c + [ 0; 0; 0.13 ], ...
                              copter.config.propPos_c + [ 0; 0; -0.03 ] ];


%% ------- motor parameters ------- %%
% T-Motor F40 II, 2400 KV
% torque constant of the motor (KT=60/(2*pi*KV)), N.m/A
copter.motor.KT = 60/(2*pi*2400);

% motor internal resistance, Ohm
% copter.motor.R = 0.048;
copter.motor.R = 0.048*2.2;

% motor moment of inertia, in kg m^2
%   inertia around the axis of rotation of the motor rotor, calculated with
%   CAD model
copter.motor.I = 915.99e-9;


%% ------- propeller parameters ------- %%
% DALPROP 5046C CYCLONE
% propulsion moment of inertia, in kg m^2
%   inertia around the axis of rotation of the propeller, calculated with
%   CAD model
copter.prop.I = 4100.775e-9 + copter.motor.I;

% ToDo: propeller name specifying propeller map (name must be inside database)
copter.prop.name = '5x3E';

% ToDo: factor to adjust thrust and torque (e.g. due to mounting)
copter.prop.thrust_factor = 1.4;
copter.prop.torque_factor = 1.35;
%   We propably need a more general and diverse method to correct the
%   propeller model!


%% ------- ToDo: aerodynamics ------- %%
% reference surface of multicopter, in m^2
copter.aero.S = 0.018;
% minimum drag coefficient, in 1
copter.aero.C_Dmin = 1.5;
% maximum drag coefficient, in 1
copter.aero.C_Dmax = 2.0;
% maximum lift coefficient (whole vehicle), in 1
copter.aero.C_Lmax = 0.1;
% center of pressure (x_b, y_b direction), in m
copter.aero.CoP_xy = 0.03;
% center of pressure (z_b direction), in m
copter.aero.CoP_z = 0.01;
% ToDo: damping moment coefficient for rotation, in N/(m^2*rad/s)
copter.aero.rate_damp = 0.3;
