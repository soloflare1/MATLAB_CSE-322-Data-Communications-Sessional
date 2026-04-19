clc; clear all; close all;

f_msg = input('Freq of msg Signal: ');
f_carr = input('Freq of carr Signal: ');

Fs = 10000;
n = 1000;
t = (0:n-1)/Fs;

%msgS = sin(2*pi*f_msg*t);
%carrS = sin(2*pi*f_msg*t);
%modS = (1 + 0.5 * msgS) .* carrS;
%noise = 0.5 * randn(size(t));
%modNoiseS = modS + noise;

msgS = sin(2*pi*f_msg*t);
subplot(3,2,1);
plot(t,msgS, 'b');
xlabel('T');ylabel('Amp');
title('Message Signal');
grid on; xlim([0 max(t)]);

carrS = sin(2*pi*f_carr*t);
subplot(3,2,2);
plot(t,carrS, 'r');
xlabel('T');ylabel('Amp');
title('Carrier Signal');
grid on; xlim([0 max(t)]);

modS = (1 + 0.5 * msgS) .* carrS;
subplot(3,2,3);
plot(t,modS, 'g');
xlabel('T');ylabel('Amp');
title('Modulated Signal');
grid on; xlim([0 max(t)]);

noise = 0.5 * randn(size(t));
subplot(3,2,4);
plot(t,noise, 'k');
xlabel('T');ylabel('Amp');
title('Noise Signal');
grid on; xlim([0 max(t)]);

modNoiseS = modS + noise;
subplot(3,2,5);
plot(t,modNoiseS, 'm');
xlabel('T');ylabel('Amp');
title('Noise Signal');
grid on; xlim([0 max(t)]);


env = abs(modNoiseS);
fig=100;
b = (1/fig) * ones(1,fig);
a = 1;

demodS = filter(b,a,env);
subplot(3,2,6);
plot(t,demodS, 'c');
xlabel('T');ylabel('Amp');
title('Demodulated Signal');
grid on; xlim([0 max(t)]);


figure;
plot(t,msgS, 'b', t, demodS, 'r--');
legend('Original Message', 'Demodulated Signal');
xlabel('T');ylabel('Amp');
title('Comparison of  Signal Original Message and Demodulated Signal');
grid on; xlim([0 max(t)]);









