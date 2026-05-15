%% ASK Modulation (Amplitude Shift Keying)
clear all;
close all;
clc;

%% Input Binary Data
bit = [1 0 1 0 1 1 1];

%% Parameters
fs = 1000;          % Sampling frequency
Tb = 1;             % Bit duration
t_bit = 0:1/fs:Tb;  % Time vector for one bit

%% ASK Carrier Frequency
f_ask = 5;

%% Initialize
ask_signal = [];
ask_time = [];

%% ASK Generation
for i = 1:length(bit)
    if bit(i) == 1
        sig = sin(2*pi*f_ask*t_bit);
    else
        sig = zeros(1, length(t_bit));
    end

    ask_signal = [ask_signal sig];
    ask_time = [ask_time t_bit + (i-1)*Tb];
end

%% Plot ASK Signal
figure('Name','ASK Modulation','NumberTitle','off');

plot(ask_time, ask_signal, 'b', 'LineWidth', 2);
title('ASK Modulation');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
