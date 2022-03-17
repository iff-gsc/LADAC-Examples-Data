% ** Parameters for control effectiveness (Muetze) **

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
cntrl_effect.ny_du_red = [ ...
  -50.3212  -50.3212   50.3212   50.3212; ...
   65.2049  -65.2049  -58.1174   58.1174; ...
   -3.1013    3.1013   -3.1013    3.1013; ...
   -7.9922   -7.9922   -7.9922   -7.9922 ...
   ];

% derivative of the pseudo control kx1 vector ny w.r.t. the time derivative
% of the control input mx1 vector u_dt at the trim point (jacobi kxm 
% matrix)
cntrl_effect.ny_du_dt = [ ...
   -0.0000    0.0000   -0.0000    0.0000; ...
   -0.0000    0.0000   -0.0000    0.0000; ...
   -1.5614    1.5614   -1.5614    1.5614; ...
         0         0         0         0 ...
     ];

% trim values mx1 vector of the control inputs, 0~1
cntrl_effect.u_trim = [0.5374;0.5374;0.5374;0.5374];
