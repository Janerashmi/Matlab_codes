clc;
clear;
close;
x1=[1 2 3 2 1 3 4];
n1=-3:3;
x2=[2 -3 4 -1 0 1];
n2=-2:3;
yb=n1(1)+n2(1);
ye=n1(length(x1))+n2(length(x2));


n=yb:ye;
y=conv(x1,x2);
disp(y);

subplot(3,1,1);
stem(n1,x1);
subplot(3,1,2);
stem(n2,x2);
subplot(3,1,3);
stem(n,y);