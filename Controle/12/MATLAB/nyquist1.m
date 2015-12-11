% Analise da estabilidade de G(s) variando K.
clear all
close all
clc

s = tf([1 0] , [1]);

% Vetor com os valores de K.
K = 1:1:10;

% Funcao de transferencia da planta.
G = 1/(s^2*(s+1));

% Diagramas de Nyquist para os diversos valores de K
hold on
for i=1:length(K)
  nyquistplot(G*K(i));
end
legend('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', ...
'Location','NorthEastOutside');

% Plota a resposta ao degrau do sistema para os valores de K
figure
hold on
for i=1:length(K)
  step(G*K(i))
end
legend('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', ...
'Location','NorthEastOutside');
