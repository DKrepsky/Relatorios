% sensor capacitivo

A = [55 60 65 70 75 80 85 90 95 100];
f = [2.689 2.360 2.090 1.903 1.728 1.577 1.489 1.362 1.246 1.226];

[F G] = fit(A', f', 'poly1');

plot (F, A, f)
title('Resposta do sensor capacitivo em frequência');
xlabel('Água [mL]');
ylabel('Frequência [kHz]');

