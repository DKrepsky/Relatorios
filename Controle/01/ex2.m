%ex2
y0=3;
y=1:0.001:10;
f=y.^2;
fl=2.*y0.*(y-y0)+y0^2;

hold all
plot(y,f)
plot(y,fl)



