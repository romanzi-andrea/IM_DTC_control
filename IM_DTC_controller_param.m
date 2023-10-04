clc
clear
close all

%% IM PARAMETERS
f  = 50;
Rs   = 0.24; 
Ls   = 59.4e-3;
Lr   = 59.1e-3;
Lm   = 57e-3;
Rr   = 0.175;
np   = 3;
n    = 6;
vsat = 380;
Lks = Ls- Lm^2/Lr;

% compressor param 
J   = 0.4;
B   = 0.068;  % Stima
k = 0.009;
r = 4;

% rated speed
wm_n = 104.6;

DYs = 0.001;
DT = 0.001;

Ys_n = 1.71;  % experiments

s = tf('s');
wc_des_w = 1000;
Gw = 1/(B+J*s);
% Rw = wc_des_w*(B+J*s)*(.1*s+1)/s/(.0001*s+1);
Rw = wc_des_w*(B+J*s)/s;
kpw = 0.4*1000;
kiw = 0.068*1000;