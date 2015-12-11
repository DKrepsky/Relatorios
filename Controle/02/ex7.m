clear all
close all
clc

% G(s) = [54(s+27)(s^3+52s^2+37s+73)]/[s(s^4+872s^3+437s^2+89s+65)(s^2+79s+36)], 
% making use of MATLAB's Symbolic Math Toolbox for simplicity and readability.

syms s 

G=54*(s+27)*(s^3+52*s^2+37*s+73)/(s*(s^4+872*s^3+437*s^2+89*s+65)*(s^2+79*s+36));

[numg,deng]=numden(G)

numpoly = sym2poly(numg)
denpoly = sym2poly(deng)

' ---------------------- '

pretty(G) 