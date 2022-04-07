% ** INDI altitude hold controller parameters (Minnie) **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

%% reference model parameter

% maximum (absolute) vertical velocity, m/s
alt_cntrl.rm.w.max_climb = 10;
% minimum (absolute) vertical velocity, m/s
alt_cntrl.rm.w.max_descend = 4;
% time constant of first order vertical velocity dynamics, s
alt_cntrl.rm.w.T = 0.3;
% maximum (absolute) upwards vertical acceleration, m/s^2
alt_cntrl.rm.w.dt_up = 25;
% minimum (absolute) downwards vertical acceleration, m/s^2
alt_cntrl.rm.w.dt_down = 4;

%% controller gains

% @ny_z_Kg/@[e_z_Kg, e_z_Kg_dt, e_z_Kg_dt2]'
alt_cntrl.K = [ ...
         50.0000   28.1578    0.6786 ...
    ];
