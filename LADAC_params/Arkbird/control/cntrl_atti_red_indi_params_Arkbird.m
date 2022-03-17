% ** INDI reduced attitude controller parameters (Arkbird) **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

%% reference model parameter

% maximum lean value
atti_cntrl.rm.lean.max = deg2rad(45);
% natural frequency of second order lean dynamics, rad/s
atti_cntrl.rm.lean.omega = 9;
% damping ratio of second order lean dynamics, -
atti_cntrl.rm.lean.D = 1;

% maximum yaw rate, rad/s
atti_cntrl.rm.r.max = deg2rad(120);
% time constant of first order yaw rate dynamics, s
atti_cntrl.rm.r.T = 0.3;

%% controller gains

% @[ny_atti_dt2]'/@[e_atti, e_atti_dt, e_atti_dt2]'
% with atti = [roll, pitch, yaw]
atti_cntrl.K = single( [ ...
   28.5714         0         0   10.7846         0         0    0.2576         0         0; ...
         0   28.5714    0.0000         0   10.7846    0.0000         0    0.2576    0.0000; ...
         0    0.0000    8.8889         0    0.0000    4.7463         0    0.0000    0.1232 ...
    ] );
