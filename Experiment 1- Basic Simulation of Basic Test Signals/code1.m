clc;
clear all;
close all;

subplot(3,3,1);
t=-5:1:5;
y=[zeros(1,5) ones(1,1) zeros(1,5)];
stem(t,y);
xlabel("time");
ylabel(" amplitude");
title("unit impulse signal");

subplot(3,3,2);
t1=0:0.01:1;
f=5;
y1=square(2*pi*f*t1);
stem(t1,y1);
hold on;
plot(t1,y1);
xlabel("time");
ylabel("amplitude");
title("bipolar pulse signal");
legend("discrete","continuous");

subplot(3,3,3);
t2=0:0.1:1;
f=5;
y2=abs(square(2*pi*f*t2));
stem(t2,y2);
hold on;
plot(t2,y2);
xlabel("time");
ylabel("amplitude");
title("bunipolar pulse signal");
legend("discrete","continuous");

subplot(3,3,4);
t3=-5:1:5;
y3=t3.*(t3>=0);
stem(t3,y3);
hold on;
plot(t3,y3);
xlabel("time");
ylabel(" amplitude");
title("unit ramp signal");
legend("discrete","continuous");

subplot(3,3,5);
t4=0:0.025:1
f4=10;
y4=sawtooth(2*pi*f4*t4,0.5);
stem(t4,y4);
hold on;
plot(t4,y4);
xlabel("time");
ylabel("amplitude");
title("triangular wave");
legend("discrete","continuous");

subplot(3,3,6);
t5=0:0.001:1
f5=10;
y5=sin(2*pi*f5*t5);
stem(t5,y5);
hold on;
plot(t5,y5);
xlabel("time");
ylabel("amplitude");
title("sine wave");
legend("discrete","continuous");

subplot(3,3,7);
t6=0:0.001:1
f6=10;
y6=cos(2*pi*f6*t6);
stem(t6,y6);
hold on;
plot(t6,y6);
xlabel("time");
ylabel("amplitude");
title("cosine wave");
legend("discrete","continuous");


subplot(3,3,8);
t7=-5:1:5;
y7=exp(t7);
stem(t7,y7);
hold on;
plot(t7,y7);
xlabel("time");
ylabel(" amplitude");
title("exponential signal");
legend("discrete","continuous");


subplot(3,3,9);
t8=-5:1:5;
y8=[zeros(1,5) ones(1,6)];
stem(t8,y8);
hold on;
plot(t8,y8);
xlabel("time");
ylabel(" amplitude");
title("unit step signal");
legend("discrete","continuous");

