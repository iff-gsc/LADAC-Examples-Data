%  ** conventional airplane parameters **

% Disclaimer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% mass, kg
airplane.body.m = 0.212;
% inertia matrix, kg*m^2
airplane.body.I = [ ...
         0.001259  , -3.279e-06,  1.1005e-04; ...
        -3.279e-06 ,  0.0012851, -2.53e-06  ; ...
         1.1005e-04, -2.53e-06 ,  0.0024554   ...
        ];

% center of gravity in c frame, m
airplane.config.cg = [-0.1287; 0.00113; -0.009158];
% collision points in c frame, m
airplane.config.hitPoints = [ [0;0;0],[-0.026;0;-0.013],[-0.103;0.285;-0.022],[-0.103;-0.285;-0.022],...
    [-0.159;0.285;-0.025],[-0.159;-0.285;-0.025],[-0.334;0;-0.085],[-0.358;0;-0.085],...
    [-0.367;0.080;-0.022],[-0.367;-0.080;-0.022],[-0.040;0;0.030],[-0.160;0.060;0.030],[-0.160;-0.060;0.030]];

% aerodynamics parameters
airplane.aero = conventionalAirplaneAeroLoadParams( ...
    'airplaneAeroSimple_params_Fox' );

% propeller parameters
airplane.prop = propMapLoadParams( 'propMap_params_Fox' );

% propeller configuration parameters
airplane.prop.config.Pos = [-0.003;0;0];
airplane.prop.config.Rot = euler2Dcm(deg2rad([0 0 0]));

% motor parameters
airplane.motor = loadParams( 'motorBldc_params_Fox' );

% actuator parameters
airplane.act.ailerons = loadParams('actuatorsPt2_params_Fox');
airplane.act.ailerons.deflectionMax = deg2rad(25);
airplane.act.ailerons.deflectionMin = -deg2rad(25);
airplane.act.elevator = loadParams('actuatorsPt2_params_Fox');
airplane.act.elevator.deflectionMax = deg2rad(25);
airplane.act.elevator.deflectionMin = -deg2rad(25);
airplane.act.rudder = loadParams('actuatorsPt2_params_Fox');
airplane.act.rudder.deflectionMax = deg2rad(25);
airplane.act.rudder.deflectionMin = -deg2rad(25);
airplane.act.htpTrim = loadParams('actuatorsPt2_params_Fox');
airplane.act.htpTrim.deflectionMax = deg2rad(5);
airplane.act.htpTrim.deflectionMin = -deg2rad(5);

% battery parameters
airplane.bat = loadParams( 'battery_params_Fox' );

% cmd struct/bus
num_flaps = length(airplane.aero.wingMain.flap.y_cp_wing)/2;
airplane.cmd = struct('aileron_left',0.5*ones(1,num_flaps),'aileron_right',0.5*ones(1,num_flaps),'elevator',0.5,'rudder',0.5,'throttle',0,'htp_trim',0.5);
struct2slbus(airplane.cmd,'cmd');

% reference position
airplane.posRef = posRefLoadParams( 'reference_position_params_default' );

% ground contact parameters
airplane.grnd = groundLoadParams( 'params_ground_default' );

%% initial conditions (IC)
% kinematic rotational velocity, rad/s
airplane.ic.omega_Kb = zeros(3,1);
% quaternion attitude from NED to body frame
airplane.ic.q_bg = [0.7343;0;0;0.6788];
% kinematic velocity in body frame, m/s
airplane.ic.V_Kb = [0;0;0];
% NED position relative to posRef, m
airplane.ic.s_Kg = [0; 0; -0.3];
% motor angular velocity, rad/s
airplane.ic.motor_speed = 0;