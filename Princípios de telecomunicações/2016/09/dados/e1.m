%e1
% Entrega dia 29/02/2016
% jaimejacob65@gmail.com
clear all
clc

b=2; 
M=2^b;
Nfft=128; 
Nffth=Nfft/2;
Nblock=Nffth*b;
Ng = 16; 
Nsym= Nfft+Ng;
Tsym=0.001;
SNRbdB=10;

EbN0 = [10 8 6 4 2 0 -2];

BER16QAM = [3.3967e-3 1.4468e-2 3.4505e-2 7.0312e-2 1.1816e-1 1.4323e-1 1.8099e-1];
BER4QAM = [4.1e-5 5.7235e-4 4.3890e-3 1.7933e-2 5.5804e-2 1.0547e-1 1.6562e-1];

figure
semilogy(EbN0, BER16QAM);

figure
semilogy(EbN0, BER4QAM);

figure
title('J.G. D.M. 23/02/2016')
xlabel('EbN0')
ylabel('BER')
semilogy(EbN0, BER16QAM);
hold on
semilogy(EbN0, BER4QAM, 'r');
grid on
hold off
legend({'16-QAM', '4-QAM'});
