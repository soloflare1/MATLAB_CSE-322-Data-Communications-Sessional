clc; clear all; close all;

x = [ 1 0 1 1 0 0 1];

n = 0:length(x)-1;

stem(n,x);

axis([0 12 0 12]);

xlabel('Sample Index (n)');
ylabel('Amplitude');
title('Digital Signal');
grid on;
