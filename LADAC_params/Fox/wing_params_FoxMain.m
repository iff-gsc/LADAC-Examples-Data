% Wing parameters (Fox main wing)

% Disclaimer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

%% basic parameters

% wing span (scalar), in m
prm.b         	= 0.57;
% is the wing symmetrical to the xz-plane (scalar bolean)?
prm.is_symmetrical = true;

%% wing segments (s segments)

% spanwise coordinates of wing parts (1x(s+1) array), in -
prm.eta_segments_wing = [0,0.123,1];
% wing chord (1x(s+1) array), in m
prm.c           = [0.07, 0.07, 0.056];
% quarter chord line sweepback angle for each section (1xs array), in rad
prm.lambda    	= deg2rad([0,0.802]);
% wing section twist with respect to root (1xs array), in rad
prm.epsilon   	= deg2rad([0, -1.7]);
% dihedral angle (abs(nu)<pi/2 !) for each section (1xs array), in rad
prm.nu       	= deg2rad([1,1]); 

%% wing device segments (d device segments)

% spanwise coordinates of wing device segments (1x(d+1) array), in -
prm.eta_segments_device = [0,0.123,0.896,1];
% section name (dx? char array); two airfoil projects available:
%   1) "airfoilAnalyticSimple..." (see airfoilAnalyticSimpleCreate) <-- recommended!
%   2) "airfoilAnalytic0515..." (see airfoilAnalytic0515LoadParams) <-- good luck!
prm.section = char(repmat(["airfoilAnalyticSimple_params_default"],3,1));
% relative flap depth for each device segment (1xd array), in -
prm.flap_depth          = [ 0, 0.17, 0 ];
% second actuator type (dx? char array); available options:
%   1) "none" no second actuator
%   2) "airfoilMicroTab..." (see airfoilMicroTabLoadParams)
prm.actuator_2_type = char(repmat(["none"],3,1));
% index of the control input (0 means no control input) (1x(2*d) array), in -  
prm.control_input_index = [ 0, 1, 0, 0, 2, 0; zeros(1,6) ];

%% coordinates in reference frame

% wing incidence relative x-y-plane of reference frame, in rad
prm.i = deg2rad(-0.7);
% wing rotation about x axis of reference frame, in rad
prm.rot_x = 0;
% x position of the wing (leading edge at wing root) in reference frame (scalar), in m
prm.x = -0.096; 
% z position of the wing (leading edge at wing root) in reference frame (scalar), in m
prm.z = -0.0187;
