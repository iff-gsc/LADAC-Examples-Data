% ** Parameters for control allocation of the qtailsitter Arkbird **

% Disclamer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% minimum control input vector
cntrl.ca.u_min = [1100;1100;1000;1000];
% maximum control input vector
cntrl.ca.u_max = [1900;1900;2000;2000];
% desired control input vector
cntrl.ca.u_d = [1500;1500;0;0];

% weighting matrix of pseudo-control
cntrl.ca.W_v = diag([1000,1000,1]);
% weighting matrix of the control input vector
cntrl.ca.W_u = eye(4);
% weighting of pseudo-control vs. control input
cntrl.ca.gamma = 1000;
% weighting of pseudo-control vs. control input for zero throttle
cntrl.ca.gamma_ground = 1/100000;
% initial working set
cntrl.ca.W = zeros(4,1);
% maximum number of iterations
cntrl.ca.i_max = 100;
