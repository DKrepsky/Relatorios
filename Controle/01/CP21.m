%CP2.1
p = [1 5 4];
q = [1 10];

%a
pq = conv(p,q)

%b
P = roots(p)
Q = roots(q)

%c
valor = polyval(p,-1)