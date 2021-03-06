% ** Parameters for wls control allocation (Arkbird) **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% k is the number of control inputs
% m is the number of pseudo control inputs

% minimum control input kx1 vector
ca.u_min = [0;0;0.1;0.1];
% maximum control input kx1 vector
ca.u_max = ones(4,1);
% desired control input kx1 vector
ca.u_d = [0.5;0.5;0.1;0.1];

% weighting mxm matrix of pseudo-control
ca.W_v = diag([10,10,0.01,1]);
% weighting kxk matrix of the control input vector
ca.W_u = eye(4);
% weighting of pseudo-control vs. control input (scalar)
ca.gamma = 1000;
% initial working set mx1 vector
ca.W = zeros(4,1);
% maximum number of iterations (scalar)
ca.i_max = 100;
