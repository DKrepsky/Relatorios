clear all
close all
clc

% (10s^2+40s+60)/(s^3+4s^2+5s+7).

numftf=[10 40 60];
denftf=[1 4 5 7];

[z,p,k] = tf2zp(numftf,denftf)

[b,a]   = zp2tf(z,p,k)
 