clear all; close all; clc;

max_f = 2;
Fs = 20 * max_f;

t = 0:1/Fs:1;
A = 2;
n_bits = 10;
L = 2^n_bits;

sig = A*sin(2*pi*max_f*t);

L_shifted = sig +  A;

normalized = (L_shifted / max(L_shifted))  * ( L-1);
quantized = round(normalized);

encoder_out = de2bi(quantized, n_bits, 'left-msb');
decoder_out = bi2de(encoder_out, 'left-msb');


reconstructed = (decoder_out / (L-1)) * max(L_shifted);
reconstructed_sig = reconstructed -  A;


plot(t, sig, 'g') 
hold on;
plot(t, reconstructed_sig, 'r--') 

xlabel('t (s)');
ylabel('A');
legend('Original Signal', 'Reconstructed Signal (PCM)');
title('PCM');







    
