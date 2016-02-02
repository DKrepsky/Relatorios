clear all
clc

variancia = 10.^([10 50 100 200 300 400 500]./10);
BER = [0 0 0.0035 0.0238 0.0549 0.0888 0.1247 ];

SNR = 10*log(50.6/variancia)

semilogy(variancia, BER, 'r');
hold on
semilogy(variancia, SNR, 'b');
grid on

xlabel('Eb/N0')
ylabel('BER')

