clc; clear all; close all;

%x=Asin(2pift)%

A=2;
f=5;
Fs=500;
t=0:1/Fs:1;

x=A*sin(2*pi*f*t);
%x=A*cos(2*pi*f*t);
%x=A*sin(2*pi*f*t + 180);

plot(t,x);

xlabel('Time');
ylabel('Amplitude');
title('Sine Wave');

grid on;


