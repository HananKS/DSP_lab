clc;
clear all;
close all;
x1= input(" enter the sequence");
x2= input(" enter the sequence");
l= length(x1);
m=length(x2);
if l>m
    x2= [x2 zeros(1,l-m)];
else
    x1=[x1 zeros(1,m-l)];
end
a= input("enter the value of a");
b=input("enter the  value of b");
lhs= fft(a.*x1+b.*x2);
rhs=a.*fft(x1)+b.*fft(x2);
disp("LHS:");
disp(lhs);
disp("RHS:");
disp(rhs);
if lhs==rhs
    disp("linearity property verified");
else
    disp("linearity property not verified");
end


clc;
clear all;
close all;
x1= input(" enter the sequence");
x2= input(" enter the sequence");
l= length(x1);
m=length(x2);
N=max(l,m);
x1=[x1 zeros(1,N-l)];
x2=[x2 zeros(1,N-m)];
lhs=sum(x1.*conj(x2));
rhs=sum(fft(x1).*conj(fft(x2)))/N
disp("LHS");
disp(lhs);
disp("RHS");
disp(rhs);
if lhs==rhs;
    disp("parsevals property verified");
else
    disp(" parsevals property not verified");
end


clc;
clear all;
close all;
x1= input(" enter the sequence");
x2= input(" enter the sequence");
l= length(x1);
m=length(x2);
N=max(l,m);
x1=[x1 zeros(N-l)];
x2=[x2 zeros(N-m)];
X1=fft(x1);
X2= fft(x2);
lhs=cconv(x1,x2,N);
rhs=ifft(X1.*X2);
disp("LHS:");
disp(lhs);
disp("RHS:");
disp(rhs);
if lhs==rhs
    disp("convolution prop verified");
else
     disp("convolution prop  not verified");
end


clc;
clear all;
close all;
x1= input(" enter the sequence");
x2= input(" enter the sequence");
l= length(x1);
m=length(x2);
N=max(l,m);
x1=[x1 zeros(N-l)];
x2=[x2 zeros(N-m)];
X1=fft(x1);
X2=fft(x2);
lhs=cconv(X1,X2,N)/N;
rhs=fft(x1.*x2);
disp("LHS:");
disp(lhs);
disp("RHS:");
disp(rhs);
if lhs==rhs
    disp("multiplication prop verified");
else
     disp("multiplication prop  not verified");
end


