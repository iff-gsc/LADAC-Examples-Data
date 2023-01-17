% ** Parameters for control allocation of the quadcopter Muetze **

% Disclamer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% minimum control input vector
cntrl.ca.u_min = zeros(4,1);
% maximum control input vector
cntrl.ca.u_max = ones(4,1);
% desired control input vector
cntrl.ca.u_d = zeros(4,1);

% weighting matrix of pseudo-control
cntrl.ca.W_v = diag([100,100,0.01,1]);
% weighting matrix of the control input vector
cntrl.ca.W_u = eye(4);
% weighting of pseudo-control vs. control input
cntrl.ca.gamma = 100000;
% initial working set
cntrl.ca.W = zeros(4,1);
% maximum number of iterations
cntrl.ca.i_max = 100;
