% ** Arkbird parameters for the simple fuselage model **

% Disclamer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% all parameters estimated from [1], page 248, Abb. 9.3

% pitching moment coefficient slope
dCm_dalpha = 0.25;
% yawing moment coefficient slope
dCn_dbeta = -0.25;
% maximum lift coefficient
C_Lmax = 0.35;
% lift curve slope
dCL_dalpha0 = 0.2;
% maximum lateral force coefficient
C_Qmax = 0.45;
% lateral force slope
dCQ_dbeta0 = -0.2;
% maximum drag coefficient
C_Dmax = 1;
% minimum drag coefficient
C_Dmin = 0.1;