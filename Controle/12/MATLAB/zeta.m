% Analise da estabilidade de G(s) variando K.
clear all
close all
clc

s = tf([1 0] , [1]);

% Funcao de transferencia da planta.
G = 1/(s^2*(s+1));

% Ganho do controlador.
Kc = 32.9;

% Controlador.
C = Kc*s*(0.25*s+1)/(0.05*s+1);

% Funcao de transferencia em malha fechada.
FTMF = G*C/(1+G*C);

% Resposta ao impulso.
impulse(FTMF,3)

% Resposta ao degrau.
figure
step(FTMF,3)
