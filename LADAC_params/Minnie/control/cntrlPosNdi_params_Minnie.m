% ** NDI position controller parameters (Minnie) **

% Disclamer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

%% reference model parameter

% velocity time constant, in s
param.rm.veltc  	= 0.6;
% maximum lateral velocity, in m/s
param.rm.velxymax = 15;
% maximum lateral acceleration, in m/s^2
param.rm.accxymax = 12;
% maximum (absolute) upwards vertical velocity, m/s
param.rm.velumax 	= 10;
% maximum (absolute) downwards vertical velocity, m/s
param.rm.veldmax 	= 4;
% maximum (absolute) upwards vertical acceleration, m/s^2
param.rm.accumax  = 25;
% maximum (absolute) downwards vertical acceleration, m/s^2
param.rm.accdmax  = 4;

%% position controller gains

% position gain
param.k.pos 	= 3.3528;
% velocity gain
param.k.vel   = 3.9012;
% acceleration gain
param.k.acc 	= 0.7114;
