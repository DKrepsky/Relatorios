clear all
clc

variancia = [100 200 300 400 500];
BER = [0.0035 0.0238 0.0549 0.0888 0.1247 ];
SNR = 10.*log(50.6./variancia);

BER1 = [0.0053 0.0309 0.0638 0.1019 0.1278 ];
SNR1 = 10.*log(50.2./variancia);

semilogy(SNR, BER, 'r');
hold on
semilogy(SNR1, BER1, 'b');
grid on

xlabel('SNR [dB]')
ylabel('BER')