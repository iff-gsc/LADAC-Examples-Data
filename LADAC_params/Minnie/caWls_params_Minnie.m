% ** Parameters for wls control allocation (Minnie) **
% 
% See also:
%   caWls_params_default.m

% Disclaimer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2024 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% k is the number of control inputs
% m is the number of pseudo control inputs

param = loadParams( 'caWls_params_default' );

% weighting mxm matrix of pseudo-control
param.W_v = [30; 30; 0.01; 300];
