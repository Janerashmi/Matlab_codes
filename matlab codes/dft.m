clc;
clear;
close;
x=[1,zeros(1,6)];
subplot(2,1,1);
stem(x);
N=length(x);



%to find dtft of the given input sequence
xk=0;

for w=0:100
    xk(w+1)=0;
    for n=0:N-1
        xk(w+1)=xk(w+1)+x(n+1)*exp(-j*w*n);
    end
end
disp('the output sequence is');
disp(xk);


n1=0:100;
subplot(2,1,2);
plot(n1,abs(xk));
grid on;
