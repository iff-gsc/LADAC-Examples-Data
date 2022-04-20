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
cntrl.rm.Phi_max = single(45*pi/180);
cntrl.rm.Theta_max = single(45*pi/180);
cntrl.rm.r_max = single(60*pi/180);
cntrl.rm.w_max = single(4);
% cntrl.sample_time = single(1/100);

cntrl.rm.Phi.omega = 4;
cntrl.rm.Phi.D = 1;
cntrl.rm.Theta.omega = 4;
cntrl.rm.Theta.D = 1;
cntrl.rm.w.T = 0.5;
cntrl.rm.r.T = 0.4;

% controller gains
cntrl.K = single( [ ...
    0.0685    0.0699   -0.2858    0.2895    0.2772   -0.4737   -0.0099    0.0104   -0.0795    0.0011    0.0010   -0.1000;...
   -0.0685    0.0699    0.2858   -0.2895    0.2772    0.4737   -0.0099   -0.0104   -0.0795   -0.0011    0.0010   -0.1000;...
   -0.0626   -0.0699   -0.3190   -0.2616   -0.2772   -0.5249    0.0099   -0.0094   -0.0795   -0.0010   -0.0010   -0.1000;...
    0.0626   -0.0699    0.3190    0.2616   -0.2772    0.5249    0.0099    0.0094   -0.0795    0.0010   -0.0010   -0.1000...
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