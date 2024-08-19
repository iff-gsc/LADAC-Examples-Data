% ** NDI position controller parameters (Muetze) **

% Disclaimer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

%% reference model parameter

% velocity time constant, in s
param.rm.veltc  	= 0.8;
% maximum lateral velocity, in m/s
param.rm.velxymax = 15;
% maximum lateral acceleration, in m/s^2
param.rm.accxymax = 8;
% maximum (absolute) upwards vertical velocity, m/s
param.rm.velumax 	= 7;
% maximum (absolute) downwards vertical velocity, m/s
param.rm.veldmax 	= 5;
% maximum (absolute) upwards vertical acceleration, m/s^2
param.rm.accumax  = 8;
% maximum (absolute) downwards vertical acceleration, m/s^2
param.rm.accdmax  = 5;

%% position controller gains

% position gain
param.k.pos 	= 1.3067;
% velocity gain
param.k.vel 	= 2.2512;
% acceleration gain
param.k.acc 	= 0.1610;
