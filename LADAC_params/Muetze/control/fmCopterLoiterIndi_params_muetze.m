% ** INDI loiter flight mode parameters (Muetze) **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% attitude controller
fm_loiter.atti_cntrl = cntrlAttiRedIndiLoadParams( ...
    'cntrl_atti_red_indi_params_muetze');

% position controller
fm_loiter.psc = cntrlPosNdiLoadParams( ...
    'cntrlHorizPosNdi_params_muetze' );

% control effectiveness
fm_loiter.cntrl_effect = controlEffectivenessLoadParams( ...
    'control_effectiveness_params_muetze' );

% control allocation
fm_loiter.ca = controlAllocationWlsLoadParams( ...
    'control_allocation_wls_params_quadcopter' );

% sensor filter
fm_loiter.sens_filt = indiSensFiltLoadParams( ...
    'indi_sens_filt_params_default' );

% motor time constant, in s
fm_loiter.motor_time_constant = 0.0497;

% flight mode sample time, in s
fm_loiter.sample_time = 0.0025;