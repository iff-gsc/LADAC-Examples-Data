% ** INDI altitude hold flight mode parameters (Muetze) **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% attitude controller
fm_alt_hold.cntrl = cntrlAltIndiLoadParams( ...
    'cntrl_alt_indi_params_muetze' );

% control effectiveness
fm_alt_hold.cntrl_effect = controlEffectivenessLoadParams( ...
    'control_effectiveness_params_muetze' );

% control allocation
fm_alt_hold.ca = controlAllocationWlsLoadParams( ...
    'control_allocation_wls_params_quadcopter' );

% sensor filter
fm_alt_hold.sens_filt = indiSensFiltLoadParams( ...
    'indi_sens_filt_params_default' );

% motor time constant, in s
fm_alt_hold.motor_time_constant = 0.05;

% flight mode sample time, in s
fm_alt_hold.sample_time = 0.0025;
