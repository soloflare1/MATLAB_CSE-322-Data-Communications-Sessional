clc; clear; close all;

bit = [1 0 1 0 0 1 0];

fs = 1000;
tb = 1;
f = 4;

t = 0:1/fs:tb-1/fs;

psk_s = [];
psk_t = [];


for i = 1:length(bit)

    if bit(i)==1
        s = sin(2*pi*f*t);
    else
        s = -sin(2*pi*f*t);
    end

    psk_s = [psk_s s];
    psk_t = [psk_t t+(i-1)*tb];
end

subplot(3,1,1)
plot(psk_t,psk_s)
title('BPSK')
grid on

subplot(3,1,2)
stem(bit)
title('Original Bits')
grid on


carrier = sin(2*pi*f*psk_t);
x = psk_s .* carrier;

N = 100;
b = ones(1,N)/N;

demod = filter(b,1,x);
samples = length(t);

rec = [];
for i=1:length(bit)
    m = mean(demod((i-1)*samples+1:i*samples));
    if m>0
        rec=[rec 1];
    else
        rec=[rec 0];
    end
end

subplot(3,1,3)
stem(rec)
title('rec Bits')
grid on
