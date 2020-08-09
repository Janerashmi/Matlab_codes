x=input('x[n]');
y=input('y[n]');
[h,r]=deconv(y,x);
disp(h);
disp(r);

N=length(h);
n=0:N-1;
stem(n,h);


yv=conv(x,h)+r;
disp(yv);