clc;
clear;
close;
x1=[1 2 3 4];
x2=[2 3 4 5];
y=conv(x1,x2);


subplot(3,1,1);
stem(x1);
subplot(3,1,2);
stem(x2);
subplot(3,1,3);
stem(y);