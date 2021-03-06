% ** INDI attitude flight mode parameters (Arkbird) **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% attitude controller
fm_atti.atc = cntrlAttiRedIndiLoadParams( ...
    'cntrlAttiRedIndi_params_Arkbird' );

% control effectiveness
fm_atti.cntrl_effect = controlEffectivenessLoadParams( ...
    'control_effectiveness_params_Arkbird' );

% control allocation
fm_atti.ca = controlAllocationWlsLoadParams( ...
    'control_allocation_wls_params_Arkbird' );

% sensor filter
fm_atti.sens_filt = indiSensFiltLoadParams( ...
    'indi_sens_filt_params_default' );

% motor time constant, in s
fm_atti.motor_time_constant = 0.0265;

% flight mode sample time, in s
fm_atti.sample_time = 1/300;


