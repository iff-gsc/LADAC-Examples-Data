% ** INDI horizontal position controller parameters (Minnie) **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

%% reference model parameter

% maximum lateral velocity, in m/s
horiz_pos_cntrl.rm.uv_max = 15;
% horizontal velocity time constant, in s
horiz_pos_cntrl.rm.uv_T = 0.8;
% maximum lateral acceleration, in m/s^2
horiz_pos_cntrl.rm.uv_dt_max = 12;

%% controller gains

horiz_pos_cntrl.K = single( [ ...
    3.3528         0    3.9012         0    0.7114         0; ...
         0    3.3528         0    3.9012         0    0.7114 ...
     ] );
