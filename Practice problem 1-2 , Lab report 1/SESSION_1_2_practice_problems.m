(*1.	Draw 6 analog signal using subplot  *)
clc; clear all; close all;

t = 0:0.01:6;

x1 = sin(2*pi*5*t);
x2 = cos(2*pi*3*t);
x3 = sin(2*pi*2*t);
x4 = cos(2*pi*4*t);
x5 = sin(2*pi*6*t);
x6 = cos(2*pi*1*t);

subplot(3,2,1);
plot(t, x1, 'b');
title('Sine Signal (5 Hz)');

subplot(3,2,2);
plot(t, x2, 'r');
title('Cosine Signal (3 Hz)');

subplot(3,2,3);
plot(t, x3, 'g');
title('Sine Signal (2 Hz)');

subplot(3,2,4);
plot(t, x4, 'k');
title('Cosine Signal (4 Hz)');

subplot(3,2,5);
plot(t, x5, 'm');
title('Sine Signal (6 Hz)');

subplot(3,2,6);
plot(t, x6, 'y');
title('Cosine Signal (1 Hz)');

(* 2.	Plot Signals in Different Figure *)
(* clc; clear all; close all;

t = 0:0.01:6;
x1 = sin(2*pi*5*t);
x2 = cos(2*pi*3*t);
x3 = sin(2*pi*2*t);

figure;
plot(t, x1, 'b');
title('Sine Signal (5 Hz)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

figure;
plot(t, x2, 'r');
title('Cosine Signal (3 Hz)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

figure;
plot(t, x3, 'g');
title('Sine Signal (2 Hz)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;


(* 3.	Addition: Create a 3x1 subplot containing the sine wave (x1), cosine wave (x2), and their sum (x1+x2). *)
clc; clear all; close all;

t = 0:0.01:10;
x1 = sin(2*pi*5*t);
x2 = cos(2*pi*3*t);
x3 = x1 + x2;

subplot(3,1,1);
plot(t, x1, 'k');
title('Sine Signal (5 Hz)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t, x2, 'b');
title('Cosine Signal (3 Hz)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(t, x3, 'r');
title('Addition of Signal (x1 + x2)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;


(* 4.	Subtraction: Create a 3x1 subplot containing the sine wave (x1), cosine wave (x2), and their difference (x1-x2). *)
clc; clear all; close all;

t = 0:0.01:10;
x1 = sin(2*pi*5*t);
x2 = cos(2*pi*3*t);
x3 = x1 - x2;

subplot(3,1,1);
plot(t, x1, 'k');
title('Sine Signal (5 Hz)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t, x2, 'b');
title('Cosine Signal (3 Hz)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(t, x3, 'r');
title('Subtraction of Signal (x1 - x2)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;


(* 5.	Multiplication: Create a 3x1 subplot containing the sine wave (x1), cosine wave (x2), and their product (x1.*x2). *)
clc; clear all; close all;

t = 0:0.01:10;
x1 = sin(2*pi*5*t);
x2 = cos(2*pi*3*t);
x3 = x1 .* x2;

subplot(3,1,1);
plot(t, x1, 'k');
title('Sine Signal (5 Hz)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t, x2, 'b');
title('Cosine Signal (3 Hz)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(t, x3, 'r');
title('Multiplication of Signal (x1 .* x2)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
 *)
