clc; clear; close all;

m = [1 0 1 1 0];
n = length(m);
x = [];
y = [];
prev = 1;     

for i = 1:n
    if m(i) == 0
        prev = -prev;
    end

    x = [x i-1 i-0.5 i-0.5 i];
    y = [y prev prev -prev -prev];
    prev = -prev;

end

plot(x,y,'g','LineWidth',3);
axis([0 n -1.5 1.5]);
grid on;
title('Differential Manchester');