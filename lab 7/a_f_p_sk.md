# ASK Modulation
## 1. `bit`

```matlab
bit = [1 0 1 1];
```

### What it is

The binary data you want to send.

### Example

```text
1 0 1 1
```

### Meaning

* `1` → send sine wave
* `0` → send no signal

### Effect on Figure

The pattern of the graph depends on this sequence.

For `1011`:

* Wave
* Flat line
* Wave
* Wave

---

## 2. `fs` (Sampling Frequency)

```matlab
fs = 1000;
```

### What it is

Number of sample points per second.

### Example

* `fs = 1000` → 1000 points in 1 second
* `fs = 100` → 100 points in 1 second

### Effect on Figure

* Larger `fs` → smoother curve
* Smaller `fs` → rough curve

---

## 3. `Tb` (Bit Duration)

```matlab
Tb = 1;
```

### What it is

Time taken to transmit one bit.

### Example

* `Tb = 1` → each bit lasts 1 second
* `Tb = 0.5` → each bit lasts 0.5 second

### Effect on Figure

* Larger `Tb` → wider bit sections
* Smaller `Tb` → narrower bit sections

---

## 4. `t_bit`

```matlab
t_bit = 0:1/fs:Tb;
```

### What it is

Time values for one bit interval.

### Example

If:

* `fs = 4`
* `Tb = 1`

Then:

```text
t_bit = [0 0.25 0.5 0.75 1]
```

### Effect on Figure

Defines the x-values used to draw one bit.

---

## 5. `f_ask`

```matlab
f_ask = 5;
```

### What it is

Carrier frequency (cycles per second).

### Example

* `f_ask = 5` → 5 cycles in 1 second
* `f_ask = 10` → 10 cycles in 1 second

### Effect on Figure

* Larger `f_ask` → more waves
* Smaller `f_ask` → fewer waves

---

## 6. `sin(2*pi*f_ask*t_bit)`

```matlab
sig = sin(2*pi*f_ask*t_bit);
```

### What it is

Generates a sine wave.

### Effect on Figure

This is the actual waveform for bit `1`.

---

## 7. `zeros(1, length(t_bit))`

```matlab
sig = zeros(1, length(t_bit));
```

### What it is

Creates a row of zeros.

### Example

If `length(t_bit)=5`:

```text
[0 0 0 0 0]
```

### Effect on Figure

A flat line at zero amplitude (used for bit `0`).

---

## 8. `length(t_bit)`

```matlab
length(t_bit)
```

### What it is

Number of elements in `t_bit`.

### Example

If `t_bit = [0 0.001 ... 1]`,
then length is 1001.

### Effect on Figure

Ensures zero signal has the same size as the sine wave.

---

## 9. `sig`

### What it is

Temporary signal for one bit only.

### Example

* Bit `1` → sine wave
* Bit `0` → zeros

---

## 10. `ask_signal = []`

### What it is

Empty array to store the full ASK signal.

---

## 11. `ask_signal = [ask_signal sig]`

### What it is

Appends the current bit signal to the previous signal.

### Example

If:

```text
ask_signal = [1 2]
sig = [3 4]
```

Then:

```text
[1 2 3 4]
```

### Effect on Figure

Builds the complete waveform.

---

## 12. `ask_time = []`

### What it is

Empty array for the full time axis.

---

## 13. `ask_time = [ask_time t_bit + (i-1)*Tb]`

### What it is

Shifts the time of each bit.

### Example

If:

* `Tb = 1`

Then:

* Bit 1 → `0 to 1`
* Bit 2 → `1 to 2`
* Bit 3 → `2 to 3`

### Effect on Figure

Places each bit after the previous one.

---

## 14. `(i-1)*Tb`

### What it is

Amount of time shift for bit `i`.

### Example

| i | Shift |
| - | ----: |
| 1 |     0 |
| 2 |     1 |
| 3 |     2 |

---

## 15. `for i = 1:length(bit)`

### What it is

Processes every bit one by one.

---

## 16. `figure`

Creates a new plotting window.

---

## 17. `plot(ask_time, ask_signal)`

Draws the ASK signal.

---

## 18. `title`, `xlabel`, `ylabel`, `grid on`

Add labels and grid to make the graph easier to read.

---

# Example with `bit = [1 0 1]`

## Bit 1

* `sig` = sine wave
* Time = 0 to 1 s

## Bit 2

* `sig` = zeros
* Time = 1 to 2 s

## Bit 3

* `sig` = sine wave
* Time = 2 to 3 s

## Final Graph

```text
0–1 s : Wave
1–2 s : Flat line
2–3 s : Wave
```

---

# What Each Parameter Changes in the Figure

| Parameter    | Changes in Figure                 |
| ------------ | --------------------------------- |
| `bit`        | Pattern of wave and flat sections |
| `fs`         | Smoothness of the curve           |
| `Tb`         | Width of each bit section         |
| `f_ask`      | Number of cycles per bit          |
| `zeros(...)` | Flat line for bit 0               |
| `ask_signal` | Complete waveform                 |
| `ask_time`   | Time axis                         |

---


ASK sends a sine wave for bit `1` and sends a flat zero signal for bit `0`.



## FSK (Frequency Shift Keying) 

---

# 1. What is FSK?

FSK stands for Frequency Shift Keying.

In FSK, the frequency of the carrier signal changes according to the binary data.

* Bit 1 → High frequency signal
* Bit 0 → Low frequency signal

Only frequency changes, amplitude stays constant.

---

# 2. Why FSK is used?

FSK is used because it is more reliable than ASK.

* It is less affected by noise
* Frequency is easier to detect than amplitude changes

---

# 3. When FSK is used?

FSK is used in:

* Radio communication
* Modems
* Bluetooth (basic form)
* Wireless systems

---

# 4. How FSK works

FSK uses two different sine waves:

* f1 for bit 1 (high frequency)
* f0 for bit 0 (low frequency)

So:

* 1 → sin(2πf1t)
* 0 → sin(2πf0t)

---

# 5. MATLAB Code (FSK)

```matlab id="fsk_clean1"
clear all;
close all;
clc;

%% Input
str = input('Enter binary data (example 1011): ','s');
bit = str - '0';

%% Parameters
fs = 1000;
Tb = 1;
t_bit = 0:1/fs:Tb;

f0 = 5;
f1 = 10;

fsk_signal = [];
fsk_time = [];

%% FSK Generation
for i = 1:length(bit)

    if bit(i) == 1
        sig = sin(2*pi*f1*t_bit);
    else
        sig = sin(2*pi*f0*t_bit);
    end

    fsk_signal = [fsk_signal sig];
    fsk_time = [fsk_time t_bit + (i-1)*Tb];

end

%% Plot
figure;
plot(fsk_time, fsk_signal, 'r', 'LineWidth', 2);
title('FSK Modulation');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
```

---

# 6. Explanation of Important Parts

## f0 and f1

* f0 = frequency for bit 0 (low frequency)
* f1 = frequency for bit 1 (high frequency)

Example:
Input = 101

Output:

* 1 → high frequency wave
* 0 → low frequency wave
* 1 → high frequency wave

---

## sin(2*pi*f*t_bit)

This generates the sine wave.

* Higher frequency → more waves
* Lower frequency → fewer waves

---

## fsk_signal = [fsk_signal sig]

This combines all bit signals into one continuous signal.

Example:
wave + wave + wave

---

## fsk_time = [fsk_time t_bit + (i-1)*Tb]

This places each bit in correct time order.

Example:

* Bit 1 → 0 to 1 second
* Bit 2 → 1 to 2 second
* Bit 3 → 2 to 3 second

---

# 7. Effect on Graph

For input 1011:

* Bit 1 → fast oscillation
* Bit 0 → slow oscillation
* Bit 1 → fast oscillation
* Bit 1 → fast oscillation

So the graph shows changing wave density.

---

# 8. Advantages

* Good noise resistance
* Easy frequency detection
* More reliable than ASK

---

# 9. Disadvantages

* Uses more bandwidth
* More complex than ASK

---

## PSK (Phase Shift Keying) 

---

# 1. What is PSK?

PSK stands for Phase Shift Keying.

In PSK, the phase of the carrier signal changes according to binary data.

* Bit 1 → Normal sine wave (0° phase)
* Bit 0 → Inverted sine wave (180° phase shift)

Here, frequency and amplitude stay constant, only phase changes.

---

# 2. Why PSK is used?

PSK is used because:

* It is very noise resistant
* It uses bandwidth efficiently
* It is more reliable than ASK and FSK

---

# 3. When PSK is used?

PSK is used in:

* Wi-Fi
* Satellite communication
* Mobile networks
* Digital communication systems

---

# 4. How PSK works

PSK uses the same sine wave but changes phase:

* Bit 1 → sin(2πfct)
* Bit 0 → -sin(2πfct)

So bit 0 is just an inverted wave.

---

# 5. MATLAB Code (PSK)

```matlab id="psk_clean1"
clear all;
close all;
clc;

%% Input
str = input('Enter binary data (example 1011): ','s');
bit = str - '0';

%% Parameters
fs = 1000;
Tb = 1;
t_bit = 0:1/fs:Tb;

f_psk = 5;

psk_signal = [];
psk_time = [];

%% PSK Generation
for i = 1:length(bit)

    if bit(i) == 1
        sig = sin(2*pi*f_psk*t_bit);
    else
        sig = -sin(2*pi*f_psk*t_bit);
    end

    psk_signal = [psk_signal sig];
    psk_time = [psk_time t_bit + (i-1)*Tb];

end

%% Plot
figure;
plot(psk_time, psk_signal, 'g', 'LineWidth', 2);
title('PSK Modulation');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
```

---

# 6. Explanation of Important Parts

## f_psk

* Carrier frequency of the signal
* Same for both 1 and 0

Example:

* f_psk = 5 → fixed sine wave speed

---

## sin(2*pi*f_psk*t_bit)

This creates the normal sine wave for bit 1.

---

## -sin(2*pi*f_psk*t_bit)

This creates inverted wave for bit 0.

* Same wave but flipped upside down
* This represents 180° phase shift

---

## psk_signal = [psk_signal sig]

This joins all bit signals into one full waveform.

Example:
wave + inverted + wave

---

## psk_time = [psk_time t_bit + (i-1)*Tb]

This arranges each bit in correct time order:

* Bit 1 → 0 to 1 sec
* Bit 2 → 1 to 2 sec
* Bit 3 → 2 to 3 sec

---

# 7. Effect on Graph

For input 1011:

* 1 → normal wave
* 0 → inverted wave
* 1 → normal wave
* 1 → normal wave

So the wave flips upside down for bit 0.

---

# 8. Advantages

* Very high noise resistance
* Efficient bandwidth usage
* Widely used in real systems

---

# 9. Disadvantages

* Receiver is more complex
* Needs phase synchronization

---

# 10. Simple Summary

PSK sends data by changing phase:

* 1 → normal wave
* 0 → inverted wave

