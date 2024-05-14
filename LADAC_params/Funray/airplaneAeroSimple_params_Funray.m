%  ** conventional airplane aerodynamics (simple) parameters for Funray **

% Disclaimer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

%% fuselage parameters
% fuselage volume, m^3 
fuse.V = 0.0025;
aero.fuse = simpleFuselageCreate( 'simpleFuselage_params_Funray', fuse.V );

%% main wing parameters
aero.wingMain = simpleWingCreate( 'wing_params_FunrayMain', 'simpleWing_params_FunrayMainWing' );
% aero.wingMain = simpleWingCreate( 'wing_params_FunrayMainDistFlaps', 'simpleWing_params_FunrayMainWing' );
% aero.wingMain = simpleWingLoadParams( 'simpleWing_params_FunrayMainWing' );

%%  horizontal tailplane parameters
aero.wingHtp = simpleWingCreate( 'wing_params_FunrayHtp', 'simpleWing_params_FunrayHtp' );
% aero.wingHtp = simpleWingLoadParams( 'simpleWing_params_FunrayHtp' );

%% vertical tailplane parameters
aero.wingVtp = simpleWingCreate( 'wing_params_FunrayVtp', 'simpleWing_params_FunrayVtp' );
% aero.wingVtp = simpleWingLoadParams( 'simpleWing_params_FunrayVtp' );

%% configuration parameters
% incidence angle of main wing, rad
aero.config.wingMainIncidence = deg2rad(3);
% position of main wing (l/4 at the root) in c frame, m
aero.config.wingMainPos = [ -0.4325; 0; -0.05 ];
% position of horizontal tailplane (l/4 at the root)  in c frame, m
aero.config.wingHtpPos = [ -1.12; 0; -0.04 ];
% position of vertical tailplane (l/4 at the root)  in c frame, m
aero.config.wingVtpPos = [ -1.12; 0; -0.1 ];
% rotation matrix of vertical tailplane (relative to c frame)
aero.config.wingVtpRot = euler2Dcm( [pi/2;0;0] );
