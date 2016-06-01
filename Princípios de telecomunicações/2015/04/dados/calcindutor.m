clear all 
close all
clc

syms L1 
w0 = 2 * pi * 4e6;
C1 = 470e-12;
C2 = 10e-9;
 
eq = w0 == 1 / (sqrt(L1*((C1*C2)/(C1+C2))));

L = double(solve(eq,L1))