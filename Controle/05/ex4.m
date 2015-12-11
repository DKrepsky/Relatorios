%ex4
clear all
close all
clc

tf1 = tf(13, [1 4 13]);
step(tf1)

figure

tf2 = tf(9, [1 6 9]);
step(tf2)

figure
hold all
q = 2:0.1:3;
t = 0:0.1:1;

z = zeros(length(q), length(t));

for i=1:length(q)
    tfx = tf(18, [1 2*sqrt(18)*q(i) 18]);
    step(tfx, t);
    [z(i, 1:end) T] = step(tfx, t);
end

figure
mesh(t,q,z)