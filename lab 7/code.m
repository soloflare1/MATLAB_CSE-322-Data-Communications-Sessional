clear all;
close all;
clc;

bit = [1 0 0 1 1 0 1];

fs = 1000;
Tb = 1;
t_bit = 0:1/fs:Tb;

f_ask = 5;
f0 = 5;
f1 = 10;
f_psk = 5;

ask_signal = [];
fsk_signal = [];
psk_signal = [];

ask_time = [];
fsk_time = [];
psk_time = [];

for i = 1:length(bit)

    if bit(i) == 1
        sig_ask = sin(2*pi*f_ask*t_bit);
    else
        sig_ask = zeros(1,length(t_bit));
    end

    ask_signal = [ask_signal sig_ask];
    ask_time = [ask_time t_bit + (i-1)*Tb];

    if bit(i) == 1
        sig_fsk = sin(2*pi*f1*t_bit);
    else
        sig_fsk = sin(2*pi*f0*t_bit);
    end

    fsk_signal = [fsk_signal sig_fsk];
    fsk_time = [fsk_time t_bit + (i-1)*Tb];

    if bit(i) == 1
        sig_psk = sin(2*pi*f_psk*t_bit);
    else
        sig_psk = -sin(2*pi*f_psk*t_bit);
    end

    psk_signal = [psk_signal sig_psk];
    psk_time = [psk_time t_bit + (i-1)*Tb];

end

figure('Name','ASK FSK PSK','NumberTitle','off');

subplot(3,1,1);
plot(ask_time, ask_signal,'b','LineWidth',2);
title('ASK Modulation');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(fsk_time, fsk_signal,'r','LineWidth',2);
title('FSK Modulation');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(psk_time, psk_signal,'g','LineWidth',2);
title('PSK Modulation');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
