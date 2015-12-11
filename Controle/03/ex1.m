% Lab - 03 - controle 09/07/15
% Ex 1

clear all
close all
clc

m1 = 10;
m2 = 20;
b = 0.5;
k1 = 100;
k2 = 100;

d1 = [m1 b k1+k2];
d2 = [m2 0 k2];


num = [m1 b (k1+k2) 0];
den = [m1*m2 b*m2 (m1*k2 +k1*m2 + k2*m2) (b*k2) (k1*k2)];

G = tf(num, den)

step(G);

% G(s)
%G =
% 
%           10 s^3 + 0.5 s^2 + 200 s
%  ------------------------------------------
%  200 s^4 + 10 s^3 + 5000 s^2 + 50 s + 10000
 