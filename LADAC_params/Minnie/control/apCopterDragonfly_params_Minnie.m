% ** copter autopilot dragonfly parameters (Minnie) **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% attitude controller
param.atc = loadParams( 'cntrlAttiRedIndi_params_Minnie');

% overwrite maximum lean angle
param.atc.rm.leanmax = 2*pi;

% position position controller
param.psc = loadParams( 'cntrlPosNdi_params_Minnie' );

% guidance
param.traj = loadParams( 'traj_params_default');

% propeller control effectiveness
param.cep = loadParams( 'indiCeProp_params_Minnie' );

% body control effectiveness
param.ceb = loadParams( 'indiCeBody_params_Minnie' );

% control allocation
param.ca = loadParams( 'control_allocation_wls_params_quadcopter' );

% sensor filter
param.sflt = loadParams( 'indiSensFilt_params_Minnie' );

% motor time constant, in s
param.mtc = 0.028;

% flight mode sample time, in s
param.ts = 0.0025;
