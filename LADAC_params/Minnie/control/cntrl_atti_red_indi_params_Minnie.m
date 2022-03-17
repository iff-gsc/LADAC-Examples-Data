% ** INDI reduced attitude controller parameters (Minnie) **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

%% reference model parameter

% maximum lean value
atti_cntrl.rm.lean.max = deg2rad(60);
% natural frequency of second order lean dynamics, rad/s
atti_cntrl.rm.lean.omega = 12;
% damping ratio of second order lean dynamics, -
atti_cntrl.rm.lean.D = 1;

% maximum yaw rate, rad/s
atti_cntrl.rm.r.max = deg2rad(300);
% time constant of first order yaw rate dynamics, s
atti_cntrl.rm.r.T = 0.1;

%% controller gains

% @[ny_atti_dt2]'/@[e_atti, e_atti_dt, e_atti_dt2]'
% with atti = [roll, pitch, yaw]
atti_cntrl.K = single( [ ...
  200.0000         0         0   39.9604         0         0    0.9513         0         0; ...
         0  200.0000   -0.0000         0   39.9604   -0.0000         0    0.9513   -0.0000; ...
         0    0.0000   50.0000         0   -0.0000   15.6068         0   -0.0000    0.4357 ...
    ] );
