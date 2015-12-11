%CP2.3
n=[1];
d=[1 4 4];
sys=tf(n,d);
t=[0:0.01:5];
y=step(sys,t);
ya=0.25-0.25*exp(-2*t)-0.5*t.*exp(-2*t);
plot(t,y,t,ya);
grid;
title('Step presponse');
xlabel('time(sec)');
ylabel('Amplitude');