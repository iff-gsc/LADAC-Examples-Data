%  ** EasyGlider brushless direct current motor parameters **

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

% torque constant of the motor (KT=60/(2*pi*KV)), N.m/A
% with KV = 850 RPM/V
param.KT = 60/(2*pi*850);
% motor internal resistance, Ohm (estimated from TMotor MT2216 900Kv)
param.R = 0.135;