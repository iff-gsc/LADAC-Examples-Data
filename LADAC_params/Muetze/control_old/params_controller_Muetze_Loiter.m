% ** Parameters of the LQR controller for the quadcopter Muetze **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% controller sample time 
cntrl.sample_time = 0.0025;

% reference model parameter
cntrl.rm.Phi_max = deg2rad(45);
cntrl.rm.Theta_max = deg2rad(45);
cntrl.rm.r_max = deg2rad(120);
cntrl.rm.u_max = 15;
cntrl.rm.v_max = 15;
cntrl.rm.w_max = single(4);
% cntrl.sample_time = single(1/100);

cntrl.rm.Phi.omega = 4;
cntrl.rm.Phi.D = 1;
cntrl.rm.Theta.omega = 4;
cntrl.rm.Theta.D = 1;
cntrl.rm.u.T = 1;
cntrl.rm.w.T = 0.5;
cntrl.rm.r.T = 0.4;

% controller gains
cntrl.K = single( [ ...
   80.0000         0         0         0   16.2377         0         0         0    0.6229         0         0         0; ...
         0   80.0000    0.0000    0.0000         0   16.2377    0.0000    0.0000         0    0.6229    0.0000    0.0000; ...
         0   -0.0000   15.0000    0.0000         0    0.0000    6.3850    0.0000         0    0.0000    0.2839    0.0000; ...
         0    0.0000    0.0000    4.0000         0    0.0000    0.0000    3.1977         0    0.0000    0.0000    0.1532 ...
    ] );
cntrl.A_ff = single( [ ...
   -0.0000    0.0000    0.0000         0         0         0    0.0000         0   -0.4970;...
   -0.8367    0.0000   -0.0000         0         0         0    0.0000         0   -0.0000;...
   -0.0000   -0.5554   -0.0000         0         0         0    0.0000         0    0.0000;...
   -0.0002   -0.0000   -0.0000         0         0         0    0.0000         0    0.0000...
   ] );
cntrl.B_inv = single( [ ...
   -0.0316    0.0041    0.0050   -0.0769;...
   -0.0316   -0.0041    0.0050    0.0769;...
   -0.0316   -0.0041   -0.0050   -0.0863;...
   -0.0316    0.0041   -0.0050    0.0863...
   ] );

cntrl.Kpos = [ ...
    1.8106         0    2.2076         0    0.3146         0; ...
         0    1.8106         0    2.2076         0    0.3146 ...
    ];