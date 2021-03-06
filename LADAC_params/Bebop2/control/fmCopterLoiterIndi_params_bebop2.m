% ** INDI loiter flight mode parameters (Bebop2) **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% attitude controller
fm_loiter.atc = cntrlAttiRedIndiLoadParams( ...
    'cntrlAttiRedIndi_params_bebop2');

%  position controller
fm_loiter.psc = cntrlPosNdiLoadParams( ...
    'cntrlPosNdi_params_bebop2' );

% control effectiveness
fm_loiter.cntrl_effect = controlEffectivenessLoadParams( ...
    'control_effectiveness_params_bebop2' );

% control allocation
fm_loiter.ca = controlAllocationWlsLoadParams( ...
    'control_allocation_wls_params_quadcopter' );

% sensor filter
fm_loiter.sens_filt = indiSensFiltLoadParams( ...
    'indi_sens_filt_params_default' );

% motor time constant, in s
fm_loiter.motor_time_constant = 0.0138;

% flight mode sample time, in s
fm_loiter.sample_time = 0.0025;