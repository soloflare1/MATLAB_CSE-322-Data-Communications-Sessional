clc; clear all;  close all;

t=0:0.01:10;
x1=sin(2*pi*t);
x2=cos(2*pi*t/2);
x3=square(2*pi*t/2);
x4=sawtooth(2*pi*t);

figure;

subplot(2,2,1);
plot(t,x1);
title('Sine wave');

subplot(2,2,2);
plot(t,x2, 'r--');
title('Cosine wave');

subplot(2,2,3);
plot(t,x3, 'k:');
title('Square wave');

subplot(2,2,4);
plot(t,x4, 'g-.');
title('sawtooth wave');
