%CP2.4
m=10;
k=1;
b=0.5;
num=[1/m];
den=[1 b/m k/m];
sys=tf(num,den);
t=[0:0.1:150];
step(sys,t)