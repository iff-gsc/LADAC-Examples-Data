% ** Parameters of the controller reference model (INDI) for the quadcopter Muetze**

% Disclamer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% reference model parameter
cntrl.rm.Phi_max = deg2rad(45);
cntrl.rm.Theta_max = deg2rad(45);
cntrl.rm.r_max = deg2rad(120);
cntrl.rm.w_max = 4;

cntrl.rm.Phi.omega = 9;
cntrl.rm.Phi.D = 0.9;
cntrl.rm.Theta.omega = 9;
cntrl.rm.Theta.D = 0.9;
cntrl.rm.r.T = 0.3;


% time constant of reference model to take into account motor dynamics
% (KT^2/R/J)
cntrl.rm.timeConstantMotor = 0.04;
% natural frequency of servo
cntrl.rm.omegaServo = 80;
% damping ratio of servo
cntrl.rm.dampingServo = 1;
% maximum deflection of servo
cntrl.rm.maxServo = deg2rad(25);
cntrl.rm.minServo = deg2rad(-25);
% maximum rate of servo
cntrl.rm.maxServoRate = deg2rad(60/0.18);
cntrl.rm.minServoRate = deg2rad(-60/0.18);


% acceleration filter
cntrl.rm.acc_filter.omega = 100;
cntrl.rm.acc_filter.D = 1;