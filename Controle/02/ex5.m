clear all
close all
clc

syms s % Construct symbolic object for Laplace variable 's'.

F=2/[(s+1)*(s+2)^2]

iF = ilaplace(F)

pretty(iF)