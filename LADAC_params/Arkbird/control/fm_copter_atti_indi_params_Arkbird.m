% ** INDI attitude flight mode parameters (Arkbird) **

% Disclamer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% attitude controller
param.atc = loadParams( 'cntrlAttiRedIndi_params_Arkbird' );

% control effectiveness
param.cntrl_effect = loadParams( 'control_effectiveness_params_Arkbird' );
param.cntrl_effect.ny_du_red =  param.cntrl_effect.ny_du_red(1:3,:);
param.cntrl_effect.ny_du_dt =  param.cntrl_effect.ny_du_dt(1:3,:);

% control allocation
param.ca = loadParams( 'control_allocation_wls_params_Arkbird' );

% sensor filter
param.sens_filt = loadParams( 'indiSensFilt_params_default' );

% motor time constant, in s
param.motor_time_constant = 0.0265;

% flight mode sample time, in s
param.sample_time = 1/300;
