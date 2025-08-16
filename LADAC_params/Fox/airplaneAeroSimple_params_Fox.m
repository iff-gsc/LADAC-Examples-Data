%  ** conventional airplane aerodynamics (simple) parameters for Fox **

% Disclaimer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

%% fuselage parameters
% fuselage volume, m^3 
fuse.V = 0.0004388;
aero.fuse = simpleFuselageCreate( 'simpleFuselage_params_Fox', fuse.V );

%% main wing parameters
aero.wingMain = simpleWingCreate( 'wing_params_FoxMain', 'simpleWing_params_FoxMainWing' );
% aero.wingMain = simpleWingCreate( 'wing_params_FoxMainDistFlaps', 'simpleWing_params_FoxMainWing' );
% aero.wingMain = simpleWingLoadParams( 'simpleWing_params_FoxMainWing' );

%%  horizontal tailplane parameters
aero.wingHtp = simpleWingCreate( 'wing_params_FoxHtp', 'simpleWing_params_FoxHtp' );
% aero.wingHtp = simpleWingLoadParams( 'simpleWing_params_FoxHtp' );

%% vertical tailplane parameters
aero.wingVtp = simpleWingCreate( 'wing_params_FoxVtp', 'simpleWing_params_FoxVtp' );
% aero.wingVtp = simpleWingLoadParams( 'simpleWing_params_FoxVtp' );

%% configuration parameters
% incidence angle of main wing, rad
aero.config.wingMainIncidence = deg2rad(1.5);
% position of main wing (l/4 at the root) in c frame, m
aero.config.wingMainPos = [ -0.114; 0; -0.018 ];
% position of horizontal tailplane (l/4 at the root)  in c frame, m
aero.config.wingHtpPos = [ -0.342; 0; -0.0219 ];
% position of vertical tailplane (l/4 at the root)  in c frame, m
aero.config.wingVtpPos = [ -0.327; 0; -0.0545 ];
% rotation matrix of vertical tailplane (relative to c frame)
aero.config.wingVtpRot = euler2Dcm( [pi/2;0;0] );
