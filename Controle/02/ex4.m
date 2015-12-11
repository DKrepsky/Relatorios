clear all
close all
clc

numf = 150*[1 2 7]; % Store 150(s^2+2s+7) in numf and % display.
denf = [1 5 4 0]; % Store s(s+1)(s+4) in denf and % display.



F  = tf(numf,denf)

G  = zpk(F)

s  = tf('s');

F2 = tf(numf,denf)

s  = zpk('s');

F3 = tf(numf,denf)