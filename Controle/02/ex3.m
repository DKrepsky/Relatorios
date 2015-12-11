clear all
close all
clc

Fzpk1 = zpk([-2 -4],[0 -3 -5],10)

Ftf1  = tf(Fzpk1)

Fzpk2 = zpk(Ftf1)