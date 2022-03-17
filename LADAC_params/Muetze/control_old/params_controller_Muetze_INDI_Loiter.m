% ** Parameters of the LQR controller for the quadcopter IRIS **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% load reference model parameters
params_controller_refMod_Muetze_INDI;

% load control allocation parameters
params_controller_ca_Muetze_INDI;

% controller sample time 
cntrl.sample_time = 0.0025;



% controller gains
cntrl.K = single( [ ...
   80.0000         0         0         0   16.2377         0         0         0    0.6229         0         0         0; ...
         0   80.0000    0.0000    0.0000         0   16.2377    0.0000    0.0000         0    0.6229    0.0000    0.0000; ...
         0   -0.0000   15.0000    0.0000         0    0.0000    6.3850    0.0000         0    0.0000    0.2839    0.0000; ...
         0    0.0000    0.0000    4.0000         0    0.0000    0.0000    3.1977         0    0.0000    0.0000    0.1532 ...
   ] );

% controller gains (position)
cntrl.Kpos = single( [ ...
    1.8106         0    2.2076         0    0.3146         0; ...
         0    1.8106         0    2.2076         0    0.3146 ...
     ] );
