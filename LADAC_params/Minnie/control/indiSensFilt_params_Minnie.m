% ** Parameters for INDI sensor filter (default) **

% Disclaimer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% natural angular frequency of the second order low pass filter
param.omega = 80*2*pi;
% damping ratio of the second order low pass filter
param.D = 1;
