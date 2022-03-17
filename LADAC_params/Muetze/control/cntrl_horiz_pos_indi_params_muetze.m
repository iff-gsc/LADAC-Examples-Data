% ** INDI horizontal position controller parameters (Muetze) **

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
horiz_pos_cntrl.rm.uv_dt_max = 8;

%% controller gains

horiz_pos_cntrl.K = single( [ ...
    1.3067         0    2.2512         0    0.1610         0; ...
         0    1.3067         0    2.2512         0    0.1610 ...
     ] );
