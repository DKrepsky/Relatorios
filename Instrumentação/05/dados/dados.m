clear all
close all
clc

% Viz = [-2.02 -1.40 -0.8 -0.2 0.39 1.00 1.60 2.25 2.88 3.37 3.99 4.64 5.21 5.81 6.40 6.98];
% Voz = [-0.840 -0.822 -0.757 -0.220 0.39 1.00 1.60 2.24 2.88 3.37 3.99 4.64 5.17 5.26 5.32 5.37];
% figure
% plot(Viz, Voz,'-o')
% title('Circuito com Zener');
% xlabel('Vin');
% ylabel('Vout');

% Vis = [0.00 0.36 0.90 1.10 1.60 1.81 2.03 2.52 2.95 3.40 3.85 4.31 4.77 5.01 5.46 5.95 6.36 6.63 7.10];
% Vos = [0.00 0.32 0.81 1.00 1.45 1.64 1.86 2.30 2.70 3.10 3.53 3.94 4.33 4.55 4.95 5.20 5.25 5.28 5.29];
% figure
% plot(Vis, Vos,'-o')
% title('Circuito com diodo 1N4148');
% xlabel('Vin');
% ylabel('Vout');

% Vig = [0.00 0.40 0.91 1.51 1.85 2.17 2.68 3.06 3.60 3.96 4.45 4.96 5.21 5.92 6.34 6.79 7.10];
% Vog = [0.00 0.40 0.90 1.50 1.84 2.17 2.68 3.06 3.60 3.96 4.45 4.96 5.19 5.27 5.29 5.29 5.29];
% figure
% plot(Vig, Vog,'-o')
% title('Circuito com diodo de germanio');
% xlabel('Vin');
% ylabel('Vout');
 
t = [26 28 29 30 31 32 33 34 35 39 42 43 46 47 52 54 56 63 68 69];
Vt = [7.35 6.92 6.81 6.61 6.63 5.72 6.32 5.33 5.47 4.25 3.85 3.64 3.33 1.66 1.35 1.88 1.19 0.98 0.93 0.87];

figure
[VT G] = fit(t', Vt', 'poly1');
plot(VT, t,Vt);
title('Termistor alimentado com corrente constante');
xlabel('Temperatura [°C]');
ylabel('Vout [V]');
