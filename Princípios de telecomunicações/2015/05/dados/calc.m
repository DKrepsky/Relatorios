%da tabela fornecida no roteiro, dados do modelo do cristal
clear all
close all
clc

format shorteng

f0 = 9.5e6;
ri = 30;
Cs1 = 27e-15;
Cp =  5.5e-12;

% cálculo de L1 para encontrar Cs posteriormente
% --------------------------------------------
syms L
w0 = 2 * pi * f0;

eq1 = w0*L == -1/(w0*Cp) + 1/(w0*Cs1);
L1 = double(solve(eq1,L))
% --------------------------------------------

syms C
ws = 10e6;

eq2 = ws == 1/(sqrt(L1*((Cs1*(Cp+C))/(Cs1+Cp+C))));
Cs = abs(double(solve(eq2,C)))


f96  = 10.01071e6 ; %meg
f12  = 10.01088; %meg
f144 = 10.01119e6;  %meg

estab = ((f144 - f96)/f12)/(14.4-9.6) %ppm/V