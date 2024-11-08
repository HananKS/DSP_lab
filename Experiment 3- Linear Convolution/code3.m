clc;
clear all;
close all;
x1= input("enter first sequence");
h1= input("enter second sequence");
y1= conv(x1,h1);
disp("The convoluted sequence is:");
disp(y1);
l= length(x1);
m= length(h1);
k=l+m-1;
n1=0:1:l-1;
n2=0:1:m-1;
n3=0:1:k-1;
subplot(1,3,1);
stem(n1,x1,"o");
xlabel("n");
ylabel("amplitude");
title("x(n)");
grid(true);
xlim([-1 l+1]);
ylim([0 max(x1)+2]);

subplot(1,3,2);
stem(n2,h1,"o");
xlabel("n");
ylabel("amplitude");
title("h(n)");
grid on;
xlim([-1 m+1]);
ylim([0 max(h1)+2]);

subplot(1,3,3);
stem(n3,y1,"o");
xlabel("n");
ylabel("amplitude");
title("y(n)");
grid(true);
xlim([-1 k+1]);
ylim([0 max(y1)+2]);



clc;
clear all;
close all;
x1= input("enter the first sequence");
h1= input("enter the second sequence");
l= length(x1);
m= length(h1);
k= l+m-1;
y1= zeros(1,k);
for i=1:l
    for j=1:m
        y1(i+j-1)=y1(i+j-1)+ x1(i)*h1(j);
    end
end
disp("the convoluted sequence is");
disp(y1);

n1=0:1:l-1;
n2=0:1:m-1;
n3=0:1:k-1;
subplot(1,3,1);
stem(n1,x1,"o");
xlabel("n");
ylabel("amplitude");
title("x(n)");
grid(true);
xlim([-1 l+1]);
ylim([0 max(x1)+2]);

subplot(1,3,2);
stem(n2,h1,"o");
xlabel("n");
ylabel("amplitude");
title("h(n)");
grid on;
xlim([-1 m+1]);
ylim([0 max(h1)+2]);

subplot(1,3,3);
stem(n3,y1,"o");
xlabel("n");
ylabel("amplitude");
title("y(n)");
grid(true);
xlim([-1 k+1]);
ylim([0 max(y1)+2]);

