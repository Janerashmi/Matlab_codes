%matlab code to find the dtft output of input signal
clc;
clear all;
close all;

%computation of angular frequency
f=input('Enter the frequency of signal');
w=(2*pi)*f;
disp('The angular frequency w=');
disp(w);
N=input('Enter the number of elements in the sequence');
disp(N);

%intialize and enter the input values into array
i=1;
for n=0:N-1
    x(i)=2*sin(w*n); 
    i=i+1;
end
disp('the input sequence');
disp(x);


%to find dtfs of the given input sequence
xk=0;
for k=0:0.001:N-1
    xk(k+1)=0;
    for n=0:N-1
        xk(k+1)=xk(k+1)+x(n+1)*exp(-j*k*w*(n));
    end
end
disp('the output sequence is');
disp(xk);


