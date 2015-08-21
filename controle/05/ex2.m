%ex 2
clear all
close all
clc

Q = 0:0.2:1.2;
t = 0:0.01:40;
z = zeros(length(Q), length(t));

hold all
for i=1:length(Q)
    system = tf(1, [1 2*Q(i) 1]);
    step(system, t)
    [z(i, 1:end) T] = step(system , t);
end

legend('0', '0.2', '0.4', '0.6', '0.8', '1.0', '1.2');
hold off

figure
mesh(t,Q,z)

xlabel('tempo');
ylabel('Csi');
zlabel('resposta ao impulso');

