clear all
close all
clc

% Experimento 1
Vi1 = [19.8 19.7 19.6 19.5 19.4 19.3];
Ii1 = [1.04 1.75 2.65 3.69 4.58 5.62];

Vo1 = [30.3 30 29.8 29.9  29.9 29.9];
Io1 = [0.6 1.01 1.52 2.08 2.54 3.07];

G1 = Vo1./Vi1

G1med = mean(G1)

Pi1 = Vi1.*Ii1;
Po1 = Vo1.*Io1;

n1 = Po1./Pi1*100

plot(n1)
title('Rendiento do conversor boost');
xlabel('Amostra');
ylabel('Rendimento [%]')

% Exp 2
Vi2 = [19.6 19.5 19.4 19.3 19.2 19.2];
Ii2 = [1.77 2.30 3.53 4.79 5.99 6.38];

Vo2 = [39.8 39.9 39.9 39.9 40.0 39.7];
Io2 = [0.78 1.01 1.54 2.05 2.53 2.57];

G2 = Vo2./Vi2

G2med = mean(G2)

Pi2 = Vi2.*Ii2;
Po2 = Vo2.*Io2;

n2 = Po2./Pi2*100

figure
plot(n2)
title('Rendiento do conversor boost');
xlabel('Amostra');
ylabel('Rendimento [%]')


% perdas
figure 
hold on
perda1 = Pi1 - Po1;
perda2 = Pi2 - Po2;
plot(perda1, 'r')
plot(perda2, 'b')
hold off
title('Perdas no conversor Boost')
xlabel('Amostra')
ylabel('Perda [W]')

legend('Caso 1', 'Caso 2')