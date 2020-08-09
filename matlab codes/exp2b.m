clc;
clear;
close;
n=10;
b=[1,0.2,0,0.5];
a=[1,-0.5,0.9];
h=impz(b,a,n);
disp(h);

N=0:n-1;
stem(N,h);