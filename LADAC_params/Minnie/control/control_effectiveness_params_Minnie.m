% ** Parameters for control effectiveness (Minnie) **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% k is the number of control inputs
% m is the number of pseudo control inputs

% derivative of the pseudo control kx1 vector ny w.r.t. the control input
% mx1 vector u (usually actuator dynamics are reduced) at the trim
% point (jacobi kxm matrix)
cntrl_effect.ny_du_red = 1* [ ...
 -552.8582 -552.8600  552.8598  552.8585; ...
  599.9943 -599.9945 -598.9377  598.9379; ...
  -42.9285   42.9418  -31.9157   31.9025; ...
  -16.0513  -16.0513  -16.0513  -16.0513 ...
    ];

% derivative of the pseudo control kx1 vector ny w.r.t. the time derivative
% of the control input mx1 vector u_dt at the trim point (jacobi kxm 
% matrix)
cntrl_effect.ny_du_dt = 1*[ ...
    0.0690   -0.0690    0.0690   -0.0690; ...
   -0.0001    0.0001   -0.0001    0.0001; ...
   -4.8857    4.8857   -4.8857    4.8857; ...
         0         0         0         0 ...
     ];

% trim values mx1 vector of the control inputs, 0~1
cntrl_effect.u_trim = [0.2830;0.2830;0.2830;0.2830];
