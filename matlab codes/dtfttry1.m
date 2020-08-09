 %matlab code to find the dtfs output of input signal
clc;
clear all;
close all;
N=input('Enter the period of the input signal');

% angular frequency  of the signal
w=(2*pi)/N;
disp('angular frequency w=');
disp(w);

%intialize and enter the input values into array
i=1;
for n=0:N-1
    x(i)=2*cos(w*n); 
    i=i+1;
end
disp('the input sequence');
disp(x);

%to find dtfs of the given input sequence
xk=0;
for k=0:N-1
    xk(k+1)=0;
    for n=0:N-1
        xk(k+1)=xk(k+1)+x(n+1)*exp(-j*k*w*(n));
    end
end
disp('the output sequence is');
y=xk/N;
disp(y);


n=0:1:N-1;
%plot of original sequence
subplot(4,1,1);
n1=0:1:length(x)-1;
stem(n1,x);
xlabel('n');
ylabel('x[n]');
title('original sequence');
grid on;


%plot of dtfs sequence
subplot(4,1,2);
k1=0:1:length(xk)-1;
stem(k1,y);
xlabel('k');
ylabel('x(k)');
title('DTFS sequence');
grid on;


%plot of magnitude spectrum
subplot(4,1,3);
stem(k1,abs(y));
xlabel('k');
ylabel('lx(k)l');
title('magnitude spectrum');
grid on;

%plot of phase spectrum
subplot(4,1,4);
z=angle(xk);
disp('the angle is');
disp(z);

k2=0:1:N-1;
stem(k2,z);
xlabel('k');
ylabel('angle(x(k))');
title('phase spectrum');
grid on;

