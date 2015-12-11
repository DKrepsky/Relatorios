%CP 2.2

numc=1;
denc=[1 1];
sysc=tf(numc,denc)
numg=[1 2];
deng=[1 3];
sysg=tf(numg, deng)

%a
sys_s = series(sysc,sysg);
sys_cl = feedback(sys_s, 1)

%b
step(sys_cl);