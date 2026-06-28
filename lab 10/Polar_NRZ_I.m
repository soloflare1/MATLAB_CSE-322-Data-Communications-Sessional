clc; clear; close all;

m = [1 0 1 1 0];
n = length(m);
x = [];
y = [];
prev = 1;     

for i = 1:n
    if m(i) == 1
        prev = -prev;
    end

    x = [x i-1 i];
    y = [y prev prev];

end

plot(x,y,'b','LineWidth',3);
axis([0 n -1.5 1.5]);
grid on;
title('Polar NRZ-I');