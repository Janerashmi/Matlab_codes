clc;
clear;
close;
function [ ] = dtft(a,L,U);
syms j w positive
syms n;
a=a*exp(-j*w*n);
xjw=int(a,n,L,U);
disp(xjw);
f=inline(xjw);
w=-(2*pi):0.1:(2*pi);
y=f(w);
plot(w,real(y));
grid on;
set(gca,'stick',[-2*pi -pi 0 pi 2*pi]);
end