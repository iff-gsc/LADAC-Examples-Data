%  ** Parameter file of quadcopter Muetze (AKAMAV) **

% Disclaimer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

%% body parameters
% mass of vehicle, in kg
copter.body.m = 1.9;
% inertial matrix of vehicle, in kg.m^2
I_xx = 1/12*0.12*0.22^2 * 4 + 1/3 * 0.8 * 0.22^2 * 4 + 1/12 * 0.5 * (0.13^2+0.13^2) * 1/12 * 0.4 * (0.1^2+0.1^2);
copter.body.I = [I_xx, 0, 0; ...
            0, I_xx*1, 0; ...
            0, 0, I_xx*1.5];

%% configuration parameters
% center of gravity position in c frame, in m
copter.config.CoG_Pos_c = [ 0; 0; 0 ];
% position of all propellers in c frame, in m
copter.config.propPos_c = [   0.1775, -0.23, 0; ...
                            0.1775, 0.23, 0; ...
                            -0.1775, 0.205, 0; ...
                            -0.1775, -0.205, 0 ]';
% direction of all propeller rotations, -1: right, 1 left
copter.config.propDir = [ 1; -1; 1; -1 ]*-1;
% orientation of the motors relative to the body
copter.config.M_b_prop1 = euler2Dcm([0,-pi/2,0]);
copter.config.M_b_prop2 = euler2Dcm([0,-pi/2,0]);
copter.config.M_b_prop3 = euler2Dcm([0,-pi/2,0]);
copter.config.M_b_prop4 = euler2Dcm([0,-pi/2,0]);
% hit points for ground model
copter.config.hitPoints_c = [ copter.config.propPos_c + [ 0; 0; 0.13 ], ...
                           copter.config.propPos_c + [ 0; 0; -0.03 ] ];

%% propeller parameters
% propeller moment of inertia, kg.m^2
copter.prop.I = 1/12*0.02*0.33^2;
% copter.prop.I = copter.prop.I * 9;
% propeller name spcifying propeller map (name must be inside database)
copter.prop.name = '13x4.5EP';
% factor to adjust thrust and torque (e.g. due to mounting)
copter.prop.correction_factor = 1;

%% motor parameters
% torque constant of the motor (KT=60/(2*pi*KV)), N.m/A
copter.motor.KT = 60/(2*pi*490);
% motor internal resistance, Ohm
copter.motor.R = 0.104;

%% battery parameters
% battery voltage, V
copter.bat.V = 14.8;

%% aerodynamics
% reference surface of multicopter, in m^2
copter.aero.S = 0.0177;
% minimum drag coefficient, in 1
copter.aero.C_Dmin = 1.3;
% maximum drag coefficient, in 1
copter.aero.C_Dmax = 2;
% maximum lift coefficient (whole vehicle), in 1
copter.aero.C_Lmax = 0.1;
% center of pressure (x_b, y_b direction), in m
copter.aero.CoP_xy = 0.01;
% center of pressure (z_b direction), in m
copter.aero.CoP_z = 0;
% damping moment coefficient for rotation, in N/(m^2*rad/s)
copter.aero.rate_damp = 0.47;
