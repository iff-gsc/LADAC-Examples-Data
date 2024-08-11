%  ** Parameter file of suspended payload mass for Rooster quadcopter **

% Disclaimer:
%   SPDX-License-Identifier: GPL-3.0-only
% 
%   Copyright (C) 2023 Jonas Withelm
%   Copyright (C) 2023 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************



%% Rod calculator
l_rod = susp_payload.rod.length;

% Aluminium tube (d=8)
tube.r_i = 0.006/2;
tube.r_a = 0.008/2;
tube.rho = 2.7 * 1e3;

tube.v = pi * (tube.r_a^2 - tube.r_i^2) * l_rod;
tube.m = tube.v * tube.rho;

tube.I_xxyy = 1/12 * tube.m * (3 * (tube.r_a^2 + tube.r_i^2) + l_rod^2);
tube.I_zz = 1/2 * tube.m * (tube.r_a^2 + tube.r_i^2);

% Rod total
rod.body.m = tube.m;
rod.body.I = diag([tube.I_xxyy, tube.I_xxyy, tube.I_zz]);
rod.config.CoG_Pos_c = [0;0;l_rod/2];



%% Payload calculator
% Primary goal is to calculate z-Axis inertia, because for xy-Axes the
% inertia from the rod will be dominant anyways...

% Module plate
module_plate.body.m = 0.070;

I_12 = 0;  % (g mm^2)
I_13 = 0;  % (g mm^2)
I_23 = 0;  % (g mm^2)

module_plate.body.I = [97302, I_12, I_13; ...
                       I_12, 79748, I_23; ...
                       I_13, I_23, 168400] .* 1e-9;
                  
% Battery
run('bat_3S1P_1800_YUKI');

% Pixhawk
pixhawk_bundle.body.m = 0.115;
pixhawk_bundle.body.I = diag([0, 0, pixhawk_bundle.body.m * 0.04^2]);   % Hardcore simplification which calculates only an inertia for z!

% Extras
extras.body.m = 0.021;
extras.body.I = zeros(3,3);

payload.body.m = module_plate.body.m + ...
                 bat.body.m + ...
                 pixhawk_bundle.body.m + ...
                 extras.body.m;
payload.body.I = module_plate.body.I + ...
                 bat.body.I + ...
                 pixhawk_bundle.body.I + ...
                 extras.body.I;
payload.config.CoG_Pos_c = [0;0;l_rod];



%% Suspended payload total
susp_payload_total = aircraftAddBody(rod, payload);
