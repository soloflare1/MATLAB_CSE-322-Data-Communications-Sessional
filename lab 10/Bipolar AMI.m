clc; clear; close all;

m = [1 1 0 0 0 0];
n = length(m);
x = []; y = [];
last = -1;

for i = 1:n
    x = [x i-1 i];

    if m(i) == 1
        last = -last;
        y = [y last last];
    else
        y = [y 0 0];
    end
end

plot(x,y,'g','LineWidth',3);
axis([0 n -1.5 1.5]); grid on;
title('Bipolar AMI (1111111111110000)');
xlabel('Time');
ylabel('Amplitude');
