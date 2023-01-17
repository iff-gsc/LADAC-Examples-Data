%  ** conventional airplane aerodynamics (simple) parameters for EasyGlider **

% Disclamer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

%% fuselage parameters
% fuselage volume, m^3 
fuse.V = 0.0025;
aero.fuse = simpleFuselageCreate( 'params_aero_fuselage_EasyGlider', fuse.V );

%% main wing parameters
aero.wingMain = simpleWingLoadParams( 'params_aero_simple_wing_EasyGliderMainWing' );

%%  horizontal tailplane parameters
aero.wingHtp = simpleWingLoadParams( 'params_aero_simple_wing_EasyGliderHtp' );

%% vertical tailplane parameters
aero.wingVtp = simpleWingLoadParams( 'params_aero_simple_wing_EasyGliderVtp' );

%% configuration parameters
% incidence angle of main wing, rad
aero.config.wingMainIncidence = deg2rad(3);
% position of main wing (l/4 at the root) in c frame, m
aero.config.wingMainPos = [ -0.315; 0; -0.05 ];
% position of horizontal tailplane (l/4 at the root)  in c frame, m
aero.config.wingHtpPos = [ -0.965; 0; -0.03 ];
% position of vertical tailplane (l/4 at the root)  in c frame, m
aero.config.wingVtpPos = [ -0.97; 0; -0.1 ];
% rotation matrix of vertical tailplane (relative to c frame)
aero.config.wingVtpRot = euler2Dcm( [pi/2;0;0] );
