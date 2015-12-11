s = tf('s');

G = 1/(s^2);
C = 3.2673*(1+0.86*s)/(1+0.15*s);
T = C*G;
FB = T/(1+T);

rlocus(T)

figure
impulse(FB)

figure
step(FB)