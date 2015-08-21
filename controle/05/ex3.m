%ex3
clear all
close all
clc

sysa = tf(1, [1 1]);
sysb = tf(1, [1 -1]);

t = 0:0.01:2;

% a)
figure
hold all
impulse(sysa, t);
impulse(sysb, t);
hold off
legend('Resposta ao impulso de A', 'Resposta ao impulso de B'); 

figure
hold all
step(sysa, t);
step(sysb, t);
hold off
legend('Resposta ao degrau de A', 'Resposta ao degrau de B'); 

figure
hold all
lsim(sysa, t, t);
lsim(sysb, t, t);
hold off
legend('Resposta a rampa de A', 'Resposta a rampa de B'); 

% b)
syms x

lima = limit(x/(x+1), x, 0)

% para B, o teorema não é valido
limb = limit(x/(x-1), x, 0)
