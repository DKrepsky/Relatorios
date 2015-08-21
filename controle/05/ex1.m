%lab controle 05/08/2015
clear all
close all
clc

A = [0 1 0; 0 0 1; -6 -11 -6];
B = [1; 1; 1];
C = [1 1 0];
D = 0;

x0 = [1 0.5 -0.5];
t = 0:0.01:2;
u = heaviside(t);

systema = ss(A,B,C,D);

[Y,T,X] = lsim(systema, u, t, x0)
