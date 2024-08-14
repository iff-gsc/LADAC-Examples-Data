%  ** Parameter file of suspended payload for Rooster quadcopter **

% Disclaimer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2023 Jonas Withelm
%   Copyright (C) 2023 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

%% Universal joint params

% joint position in uav c frame, in m
susp_payload.joint.joint_pos_uav_c = [ 0; 0; 0.025 ];

% angle limit
susp_payload.joint.angle_limit           = deg2rad(30);
susp_payload.joint.angle_limit_stiffness = 100;


%% Rod params
susp_payload.rod.length = 4;


%% FlightGear visualisation params
susp_payload.visual.rod_diameter     = 0.02;
susp_payload.visual.payload_diameter = 0.1;


%% Suspended payload mass, inertia and CoG (.body, .config)
susp_payload = suspPayloadLoadMassParams('susp_payload_mass_params_Rooster.m', susp_payload);


%% Aerodynamics
susp_payload.payload.aero.S   = pi*(0.075^2);
susp_payload.payload.aero.C_D = 0.4;
susp_payload.payload.aero.cp  = [ 0; 0; susp_payload.rod.length ];
susp_payload.payload.aero.enable = 1;


%% Calculate spring and damper constants
omega_0 = 150 * 2*pi;
d       = 0.30;

% Translatoric force transmission
m1 = copter.body.m;
m2 = susp_payload.body.m;
susp_payload.joint.trans_stiffness = (m1*m2) / (m1+m2) * omega_0^2;
susp_payload.joint.trans_damping   = (m1*m2) / (m1+m2) * 2*omega_0 * d;

% Rotatoric torque transmission
I1 = copter.body.I(3,3);
I2 = susp_payload.body.I(3,3);
susp_payload.joint.rot_stiffness   = (I1*I2) / (I1+I2) * omega_0^2;
susp_payload.joint.rot_damping     = (I1*I2) / (I1+I2) * 2*omega_0 * d;


%% Calculate initial conditions
g = envir.g;
m = susp_payload.body.m;
k = susp_payload.joint.trans_stiffness;

f       = m*g;
delta_l = f/k;

% ToDo:
% - The following calculations are in many aspects not correct, but do
%   work, if the UAV is initialized with all euler angles set to zero and
%   if the cog of the suspended payload lays on its z-axis...

% initial angular velocity omega_Kb, in rad/s
IC_susp_payload.omega_Kb = [ 0; 0; 0 ];
% initial Euler angles, in rad
IC_susp_payload.EulerAngles = [ 0; 0; 0 ];
% initial orientation in quaternions q_bg
IC_susp_payload.q_bg = euler2Quat( IC_susp_payload.EulerAngles );

% initial position in reference frame s_g, in m
M_uav_bg = quat2Dcm(IC.q_bg);
M_pld_bg = quat2Dcm(IC_susp_payload.q_bg);
joint_cog_offset_uav = susp_payload.joint.joint_pos_uav_c - copter.config.CoG_Pos_c;
IC_susp_payload.s_g = IC.s_Kg + M_uav_bg' * joint_cog_offset_uav + M_pld_bg' * susp_payload.config.CoG_Pos_c + [0;0;delta_l];

% initial velocity V_K, in m/s
IC_susp_payload.V_Kg = M_uav_bg' * IC.V_Kb + [ 0; 0; 0 ];
IC_susp_payload.V_Kb = M_pld_bg * IC_susp_payload.V_Kg;
