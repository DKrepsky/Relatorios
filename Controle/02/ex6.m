clear all
close all
clc

%declarar variaveis
io=1
G=1
H=1
t= -2:0.01:10; %vetor de tempo, eixo x

q=size(t); %mede dimensoes do vetor t
r=size(t); %mede dimensoes do vetor t
f=zeros(q(1),q(2)); % seta f um vetor de zeros do tamanho de q ou t
ff=zeros(r(1),r(2)); %seta ff um vetor de zeros de mesmo tamanho
q=size(t(201:1201)); %modifica tamanho q para 1000 
r=size(t(701:1201)); %modifica tamanho r para 500 

f(201:1201)=ones(q(1),q(2)); % seta os ultimos 1000 pontos de f  para 1
ff(701:1201)=ones(r(1),r(2));% seta os ultimos 500  pontos de ff para 1

rr=io*(exp(-(G/H)*t).*f-(exp(-(G/H)*(t-5))).*ff); 
%calcula uma expressao envolvendo f e ff que são pulsos começando em 200 e
%700 e acabando em 1200

plot(t,rr),title('Fig.1.7a Unit step function'); %plota a expressao calculada
axis([-2,10,-1,2]); % limita eixos x e y
xlabel('time, t'); %legenda eixo x
ylabel(' u(t)');   %legenda eixo y
grid;   %grade