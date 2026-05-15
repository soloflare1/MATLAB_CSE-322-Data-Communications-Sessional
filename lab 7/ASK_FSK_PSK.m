%% ASK, FSK, and PSK Modulation
clear all;
close all;
clc;

%% Input Binary Data
bit = [1 0 1 0 1 1 1];

%% General Parameters
fs = 1000;          % Sampling frequency
Tb = 1;             % Bit duration
t_bit = 0:1/fs:Tb;  % Time vector for one bit

%% ASK Modulation
f_ask = 5;          % Carrier frequency for ASK
ask_signal = [];
ask_time = [];

for i = 1:length(bit)
    if bit(i) == 1
        sig = sin(2*pi*f_ask*t_bit);
    else
        sig = zeros(1, length(t_bit));
    end

    ask_signal = [ask_signal sig];
    ask_time = [ask_time t_bit + (i-1)*Tb];
end

%% FSK Modulation
f0 = 5;             % Frequency for bit 0
f1 = 10;            % Frequency for bit 1
fsk_signal = [];
fsk_time = [];

for i = 1:length(bit)
    if bit(i) == 1
        sig = sin(2*pi*f1*t_bit);
    else
        sig = sin(2*pi*f0*t_bit);
    end

    fsk_signal = [fsk_signal sig];
    fsk_time = [fsk_time t_bit + (i-1)*Tb];
end

%% PSK Modulation
f_psk = 5;          % Carrier frequency for PSK
psk_signal = [];
psk_time = [];

for i = 1:length(bit)
    if bit(i) == 1
        sig = sin(2*pi*f_psk*t_bit);
    else
        sig = -sin(2*pi*f_psk*t_bit);
    end

    psk_signal = [psk_signal sig];
    psk_time = [psk_time t_bit + (i-1)*Tb];
end

%% Plotting
figure('Name', 'ASK, FSK, and PSK Modulation', 'NumberTitle', 'off');

subplot(3,1,1);
plot(ask_time, ask_signal, 'b', 'LineWidth', 2);
title('ASK Modulation');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(fsk_time, fsk_signal, 'r', 'LineWidth', 2);
title('FSK Modulation');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(psk_time, psk_signal, 'g', 'LineWidth', 2);
title('PSK Modulation');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
