clc;
clear all;
close all;
x= input("enter the sequence:");
N= input("ener the N point:");
l=length(x),
x= [x zeros(1,N-l)];
X= zeros(1,N);
for k=0:N-1
    for n=0:N-1
        X(k+1)=X(k+1)+x(n+1)*exp(-j*2*pi*k*n/N);
    end
end
disp("X");
disp(X);
disp("round X");
disp(round(X));
disp("fft");
disp(fft(x));


k=0:N-1;
MagX=abs(X);
PhaseX= angle(X);
subplot(2,1,1);
stem(k,MagX);
hold on;
plot(k,abs(X));
title("Magnitude plot");
subplot(2,1,2);
stem(k,PhaseX);
hold on;
plot(k,PhaseX);
title(" Phase plot");
3.0000 + 0.0000i   1.7071 - 1.7071i   0.0000 - 1.0000i   0.2929 + 0.2929i   1.0000 + 0.0000i
0.0000 + 0.0000i   0.0000 + 1.0000i   2.0000 + 2.0000i



clc;
clear all;
close all;
X= input("enter the sequence:");
N= input("ener the N point:");
l=length(X),
X= [X zeros(1,N-l)];
x= zeros(N,1);
for k=0:N-1
    for n=0:N-1
        x(n+1)=x(n+1) + X(k+1)*exp(j*2*pi*k*n/N);
    end
end
x=1/N.*x;
disp("x");
disp(x);
disp("round x");
disp(round(x));
disp("ifft");
disp(ifft(X));

