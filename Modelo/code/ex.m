% Exercicio 2, at.3 - controle
clear all
close all
clc

s = tf('s');

g1 = (50*(s+100))/((s+1)*(s+10)^2);
g2 = (10^4*s^2)/((s^2+1.25*s+25)*(s+20)*(s+50));

bode(g1);

figure
bode(g2);

