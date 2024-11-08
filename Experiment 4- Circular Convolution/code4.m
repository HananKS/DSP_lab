clc;
clear all;
close all;
x1= input("enter the first sequence:");
x2= input("enter the second sequence:");
x1_k= fft(x1);
x2_k= fft(x2);
y1_k= x1_k .* x2_k;
y1= ifft(y1_k);
disp(" circular cov using fft and ifft :");
disp(y1);

clc;
clear all;
close all;
x= input(" enter the sequence");
h= input(" enter the sequence");
N= max(length(x),length(h));
y= zeros(1,N);
for n=1:N
    h_new= circshift(h,n-1);
    y(n)=sum(x.*h_new);
end
disp(" circular cov using conc circle method");
disp(y);




clc;
clear all;
close all;
x= input(" enter the sequence");
h= input(" enter the sequence");
N= max(length(x),length(h));
h_n= zeros(N,N);
for n=1:N
    h_k= circshift(h,n-1);
    h_n(:,n)=h_k;
end
y=h_n*x';
disp("circular cov using matrix method");
disp(y)