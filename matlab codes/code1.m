clc;
clear;
close;
x=[ 1/2 1 1/2];
N=1000
y=fft(x,N);
n1=0:N-1;
plot(n1,y);
grid on