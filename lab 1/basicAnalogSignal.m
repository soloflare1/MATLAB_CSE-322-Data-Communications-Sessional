clc; clear all; close all;

%x=Asin(2pift)%

A=2;
f=5;
Fs=500;
t=0:1/Fs:1;

x=A*sin(2*pi*f*t);
%x=A*cos(2*pi*f*t);
%x=A*sin(2*pi*f*t + 180);

plot(t,x);

xlabel('Time');
ylabel('Amplitude');
title('Sine Wave');

grid on;





(*Note--

## 🔷 General Equation

y(t) = A \sin(2\pi f t + \phi)

👉 Start with this — this is your **base formula**

---

## 🔷 2. Identify Parameters

Write clearly:

* **Amplitude (A) = ?**
* **Frequency (f) = ?**
* **Phase (φ) = ?**

👉 Example:

* A = 2
* f = 5 Hz
* φ = π/2

---

## 🔷  Explain Each Effect 


* **Amplitude:** controls height (max = +A, min = −A)
* **Frequency:** number of cycles per second
* **Phase:** shifts signal left/right

---

## 🔷  Time Range

```matlab
t = 0:1/Fs:1;
```

✔ Signal duration = 1 sec
✔ Fs = sampling frequency

---

## 🔷  MATLAB Implementation

 template:

```matlab
clc;
clear all;

A = 2;
f = 5;
phi = pi/2;
Fs = 1000;

t = 0:1/Fs:1;

x = A*sin(2*pi*f*t + phi);

plot(t,x);
grid on;

xlabel('Time');
ylabel('Amplitude');
title('Signal');
```

---

#  Example (

```
x(t) = 3 sin(2π·10t + π/2)
```
* A = 3
* f = 10 Hz
* φ = π/2

✔ Amplitude = 3 → range = [-3, +3]
✔ Frequency = 10 → 10 cycles/sec
✔ Phase = π/2 → shifted left

---

1. Write formula
2. Identify A, f, φ
3. Explain effect
4. Draw/plot
5. Analyze graph



*)
