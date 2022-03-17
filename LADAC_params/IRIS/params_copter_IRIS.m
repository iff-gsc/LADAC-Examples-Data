%  ** Parameter file of quadcopter IRIS (ArduPilot) **
% 
% Main sources: 
%   https://apps.dtic.mil/dtic/tr/fulltext/u2/1008930.pdf
%   http://www.arducopter.co.uk/iris-quadcopter-uav.html

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

%% body parameters
% mass of vehicle, in kg
copter.body.m = 1.37;
% inertial matrix of vehicle, in kg.m^2
copter.body.I = [0.022, 0, 0; ...
            0, 0.011, 0; ...
            0, 0, 0.031];

%% configuration parameters
% center of gravity position in c frame, in m
copter.config.CoG_Pos_c = [ 0; 0; 0 ];
% position of all propellers in c frame, in m
copter.config.propPos_c = [   0.13, -0.22, 0; ...
                            0.13, 0.22, 0; ...
                            -0.13, 0.2, 0; ...
                            -0.13, -0.2, 0 ]';
% direction of all propeller rotations, -1: right, 1 left
copter.config.propDir = [ 1; -1; 1; -1 ]*-1;
% orientation of the motors relative to the body
copter.config.M_b_prop1 = euler2Dcm([0,-pi/2,0]);
copter.config.M_b_prop2 = euler2Dcm([0,-pi/2,0]);
copter.config.M_b_prop3 = euler2Dcm([0,-pi/2,0]);
copter.config.M_b_prop4 = euler2Dcm([0,-pi/2,0]);
% hit points for ground model
copter.config.hitPoints_c = [ copter.config.propPos_c + [ 0; 0; 0.06 ], ...
                           copter.config.propPos_c + [ 0; 0; -0.03 ] ];

%% propeller parameters
% propeller moment of inertia, kg.m^2
copter.prop.I = 1/12*0.012*0.25^2 + 1/2*0.06*0.3*0.028^2;
% copter.prop.I = copter.prop.I * 9;
% propeller name spcifying propeller map (name must be inside database)
copter.prop.name = '10x4.7SF';

%% motor parameters
% torque constant of the motor (KT=60/(2*pi*KV)), N.m/A
copter.motor.KT = 60/(2*pi*850);
% motor internal resistance, Ohm
copter.motor.R = 0.13;

%% battery parameters
% battery voltage, V
copter.bat.V = 11.1;

%% aerodynamics
% reference surface of multicopter, in m^2
copter.aero.S = 0.06;
% minimum drag coefficient, in 1
copter.aero.C_Dmin = 0.2;
% maximum drag coefficient, in 1
copter.aero.C_Dmax = 0.5;
% maximum lift coefficient (whole vehicle), in 1
copter.aero.C_Lmax = 0.05;
% center of pressure (x_b, y_b direction), in m
copter.aero.CoP_xy = 0.05;
% center of pressure (z_b direction), in m
copter.aero.CoP_z = 0;
% damping moment coefficient for rotation, in 1/m
copter.aero.rate_damp = -0.05;