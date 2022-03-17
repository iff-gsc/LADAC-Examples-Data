% ** Parameters of the controller reference model (INDI) for the quadcopter Muetze**

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% reference model parameter
cntrl.rm.Phi_max = single(deg2rad(45));
cntrl.rm.r_max = single(deg2rad(120));
cntrl.rm.uv_max = 15;
cntrl.rm.uv_dt_max = 8;
cntrl.rm.w_max_climb = single(7);
cntrl.rm.w_max_descend = single(5);

cntrl.rm.Phi.omega = 9;
cntrl.rm.Phi.D = 1;
cntrl.rm.w.T = 0.4;
cntrl.rm.u.T = 0.8;
cntrl.rm.r.T = 0.3;

% maximum acceleration of velocity reference model
cntrl.rm.w_dt_max = 5;
cntrl.rm.w_dt_min = -8;
% time constant of reference model to take into account motor dynamics
cntrl.rm.timeConstantMotor = 0.05;

% acceleration filter
cntrl.rm.acc_filter.omega = 100;
cntrl.rm.acc_filter.D = 1;