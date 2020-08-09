
clc;
clear;
close;


syms t
syms w j positive;
%Create symbolic variables w and j and assume that they are positive
f=input('function');
L1=input('lower limit');
L2=input('upper limit');

X= int(f*exp(-1j*w*t),t,L1,L2);
disp('X(jw)=')
disp(X)

w=-20:.01:20;
inline(X);
ans(-20:.01:20);

subplot(2,1,1);
plot(w,real(ans),'g','linewidth',2)
title('|X(jw)| Frequency Domein ')
xlabel('(w)   Range')
grid on;

subplot(2,1,2)
plot(w,imag(ans),'r','linewidth',2.5);
title('< X(jw) Angle')
grid on; 


 
 

