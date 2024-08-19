% ** Parameters for control effectiveness (Arkbird) **

% Disclaimer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% k is the number of control inputs
% m is the number of pseudo control inputs

% derivative of the pseudo control kx1 vector ny w.r.t. the control input
% mx1 vector u (usually actuator dynamics are reduced) at the trim
% point (jacobi kxm matrix)
param.ny_du_red = [ ...
   38.4037   38.4039   -0.2519   -0.2520; ...
    0.1174   -0.1174  102.5344 -102.5346; ...
  -18.6570   18.6576   10.9946  -10.9947; ...
   -3.0801   -3.0802   -0.3726   -0.3726 ...
    ];
% cntrl_effect.ny_du_red = cntrl_effect.ny_du_red([3,2,1,4],:).*[1;1;-1;1];
% derivative of the pseudo control kx1 vector ny w.r.t. the time derivative
% of the control input mx1 vector u_dt at the trim point (jacobi kxm 
% matrix)
param.ny_du_dt = [ ...
         0         0         0         0; ...
         0         0         0         0; ...
         0         0    2.2688   -2.2688; ...
         0         0         0         0 ...
     ];
% cntrl_effect.ny_du_dt = cntrl_effect.ny_du_dt([3,2,1,4],:).*[1;1;-1;1];

% trim values mx1 vector of the control inputs, 0~1
param.u_trim = [0.5;0.5;0.5962;0.5962];
