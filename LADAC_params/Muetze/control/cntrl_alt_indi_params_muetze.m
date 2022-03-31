% ** INDI altitude hold controller parameters (Muetze) **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

%% reference model parameter

% maximum (absolute) vertical velocity, m/s
alt_cntrl.rm.w.max_climb = 7;
% minimum (absolute) vertical velocity, m/s
alt_cntrl.rm.w.max_descend = 5;
% time constant of first order vertical velocity dynamics, s
alt_cntrl.rm.w.T = 0.4;
% maximum (absolute) upwards vertical acceleration, m/s^2
alt_cntrl.rm.w.dt_up = 8;
% minimum (absolute) downwards vertical acceleration, m/s^2
alt_cntrl.rm.w.dt_down = 5;

%% controller gains

% @ny_z_Kg/@[e_z_Kg, e_z_Kg_dt, e_z_Kg_dt2]'
alt_cntrl.K = [ ...
         1.5000    2.0221    0.0297 ...
    ];

%% attitude controller

alt_cntrl.atti_cntrl = cntrlAttiRedIndiLoadParams('cntrl_atti_red_indi_params_muetze');
