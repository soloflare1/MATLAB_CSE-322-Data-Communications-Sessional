clc; close all; clear all;

fm = input('Msg freq : ');
fc = input('Carr freq : ');
delta_f = input('freq dev for FM : ');
kp = input('Phase dev for PM (r) : ');

kf = 2 * pi * delta_f;
Fs = 10000;
t = 0:1/Fs:1;

mS = sin(2*pi*fm*t);

int_mS = cumsum(mS) / Fs;
FM_S = cos(2*pi*fc*t + kf * int_mS);

noise_fm = 0.3 * randn(size(FM_S));
FM_noise_S = FM_S + noise_fm;

figure('Name','Freq Modulation');
subplot(3,1,1);
plot(t,mS,'b');
title('Msg Signal');
xlabel('T'); ylabel('Amp');
grid on;

subplot(3,1,2);
plot(t,FM_S, 'g');
title('FM Signal');
xlabel('T'); ylabel('Amp');
grid on;

subplot(3,1,3);
plot(t,FM_noise_S, 'm');
title('FM Signal with Noise');
xlabel('T'); ylabel('Amp');
grid on;

PM_S = cos(2*pi*fc*t + kp * mS);
PM_noise = 0.3 * randn(size(PM_S));
PM_noise_S = PM_S + PM_noise;

figure('Name','Phase Modulation');
subplot(3,1,1);
plot(t,mS, 'b');
title('Msg Signal');
xlabel('T'); ylabel('Amp');
grid on;

subplot(3,1,2);
plot(t,PM_S, 'g');
title('PM Signal');
xlabel('T'); ylabel('Amp');
grid on;

subplot(3,1,3);
plot(t,PM_noise_S, 'm');
title('PM Signal with Noise');
xlabel('T'); ylabel('Amp');
grid on;
