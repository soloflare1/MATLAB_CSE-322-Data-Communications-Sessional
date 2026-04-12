clc; clear all; close all;

A=2;
f=5;
Fs=1000;
t=0:1/Fs:1;

x=A*sin(2*pi*f*t);
plot(t,x);

grid on;
hold on;

% Digital signal %
x = [ 1 0 1 1 0 0 1];
n = 0:length(x)-1;
stem(n,x);
axis([0 12 0 12]);
