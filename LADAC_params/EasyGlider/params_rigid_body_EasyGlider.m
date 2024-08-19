%  ** default rigid body parameters **

% Disclaimer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% mass, kg
body.m = 1.0;
% inertia matrix, kg*m^2
body.I = [ ...
        0.0712, 0, 0; ...
        0, 0.0482, 0; ...
        0, 0, 0.1182 ...
        ];