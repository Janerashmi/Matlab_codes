clc;
clear;
close;
n=11;
w=0:0.001:n-1;
subplot(2,1,2);
y=2*exp(j*w)+3+exp(-j*w)+4*exp(-j*2*w);
plot(w,y);
grid on


m=cos(w)+1;
disp(m);
subplot(2,1,1);
plot(m);
grid on