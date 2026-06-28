clc; clear all; close all;

m = [1 0 1 1 0];
n = length(m);
x = [];
y = [];

for i=1:n
    x = [x i-1 i];
    if(m(i) == 0)
        y = [y 0 0];
    else
        y = [y 1 1];
    end
end


plot(x, y, 'r', 'linewidth', 3);
axis([0, n, -1, 1.5]);
title('Unpolar NRZ (1 0 1 1 0)');
grid on;