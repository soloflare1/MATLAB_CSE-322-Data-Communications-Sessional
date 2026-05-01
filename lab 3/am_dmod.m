clc; clear all; close all;

% Input parameters
fm = input('fm: ');
fc = input('fc: ');

Fs = 10000;
t = (0:1000-1)/Fs;

% Message signal
m = sin(2*pi*fm*t);

% Carrier signal
c = sin(2*pi*fc*t);

% AM modulation
am = (1 + 0.5*m) .* c;

% Noise
noise = 0.5 * randn(size(t));
am_noise = am + noise;

% Envelope detection
envelope = abs(am_noise);

% Low pass filter
N = 100;
b = (1/N) * ones(1, N);
a = 1;
demod = filter(b, a, envelope);

% Plots
figure;

subplot(3,2,1);
plot(t, m); grid on;
title('Message Signal');

subplot(3,2,2);
plot(t, c); grid on;
title('Carrier Signal');

subplot(3,2,3);
plot(t, am); grid on;
title('AM Signal');

subplot(3,2,4);
plot(t, noise); grid on;
title('Noise');

subplot(3,2,5);
plot(t, am_noise); grid on;
title('Noisy AM Signal');

subplot(3,2,6);
plot(t, demod); grid on;
title('Demodulated Signal');

figure;
plot(t, m, 'b', t, demod, 'r');
grid on;
legend('Message', 'Demodulated');
title('Comparison');
