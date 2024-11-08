clc;
clear all;
close all;
x= input("enter the sequence");
h= input(" enter the sequence");
l= length(x);
m= length(h);
k= l+m-1;
x=[x zeros(1,k-l)];
h=[h zeros(1,k-m)];
x_k= fft(x);
h_k= fft(h);
y_k= x_k .* h_k;
y= ifft(y_k);
disp("linear cov using circular conv");
disp(y);


clc;
clear all ;
close all;
x= input("enter the sequence");
h= input(" enter the sequence");
l= length(x);
m= length(h);
N=max(l,m);
k=l+m-1;
y=conv(x,h);
for i=1:k-N
    y(i)=y(i)+y(N+i);

end
for i=1:N
    y1(i)=y(i);
end
disp("circular conv using linear conv");
disp(y1);

