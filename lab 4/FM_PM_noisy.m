clc;
clear all;
close all;

%% USER INPUT
fm = input('Message frequency (Hz): ');
fc = input('Carrier frequency (Hz): ');
delta_f = input('Frequency deviation for FM: ');
kp = input('Phase deviation for PM: ');

%% PARAMETERS
kf = 2 * pi * delta_f;
Fs = 10000;
t = 0:1/Fs:1;

%% MESSAGE SIGNAL
m = sin(2*pi*fm*t);

%%  FM MODULATION
int_m = cumsum(m) / Fs;  % integration
FM = cos(2*pi*fc*t + kf*int_m);

% Noise for FM
noise1 = 0.3 * randn(size(FM));
FM_noisy = FM + noise1;

%%  PM MODULATION
PM = cos(2*pi*fc*t + kp*m);

% Noise for PM
noise2 = 0.3 * randn(size(PM));
PM_noisy = PM + noise2;

%% PLOTS

% FM Plot
figure('Name','FM Signal');
subplot(3,1,1);
plot(t, m);
title('Message Signal');
grid on;

subplot(3,1,2);
plot(t, FM);
title('FM Signal');
grid on;

subplot(3,1,3);
plot(t, FM_noisy);
title('FM Signal with Noise');
grid on;

% PM Plot
figure('Name','PM Signal');
subplot(3,1,1);
plot(t, m);
title('Message Signal');
grid on;

subplot(3,1,2);
plot(t, PM);
title('PM Signal');
grid on;

subplot(3,1,3);
plot(t, PM_noisy);
title('PM Signal with Noise');
grid on;
