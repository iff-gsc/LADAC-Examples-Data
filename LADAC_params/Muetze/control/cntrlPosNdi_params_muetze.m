% ** NDI position controller parameters (Muetze) **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

%% reference model parameter

% velocity time constant, in s
psc.rm.veltc  	= 0.8;
% maximum lateral velocity, in m/s
psc.rm.velxymax = 15;
% maximum lateral acceleration, in m/s^2
psc.rm.accxymax = 8;
% maximum (absolute) upwards vertical velocity, m/s
psc.rm.velumax 	= 7;
% maximum (absolute) downwards vertical velocity, m/s
psc.rm.veldmax 	= 5;
% maximum (absolute) upwards vertical acceleration, m/s^2
psc.rm.accumax  = 8;
% maximum (absolute) downwards vertical acceleration, m/s^2
psc.rm.accdmax  = 5;

%% position controller gains

% position gain
psc.k.pos 	= 1.3067;
% velocity gain
psc.k.vel 	= 2.2512;
% acceleration gain
psc.k.acc 	= 0.1610;
