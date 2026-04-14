
```matlab
clc; 
clear all; 
close all;

x = [1 0 1 1 0 0 1];

n = 0:length(x)-1;

stem(n,x);

axis([0 12 0 12]);

xlabel('Sample Index (n)');
ylabel('Amplitude');
title('Digital Signal');
grid on;
```

---

# Initialization

* `clc;` → clear command window
* `clear all;` → remove variables
* `close all;` → close previous figures

👉 **Why?** Clean environment = no confusion

---

# 🧠 2. Signal Definition

### 🔹 `x = [1 0 1 1 0 0 1];`

👉 This is a **discrete-time (digital) signal**

✔ Values exist only at specific points
✔ No continuous waveform

👉 You can think of it as:

* 1 = signal present
* 0 = signal absent

---

#  3. Indexing 

### 🔹 `n = 0:length(x)-1;`

👉 Creates index values:

If `x = [1 0 1 1 0 0 1]`
Length = 7

So:

```
n = [0 1 2 3 4 5 6]
```

👉 **Why needed?**

* Every sample must have a position (index)
* x-axis = index (n)

---

# 🧠 4. Plotting (Discrete Signal)

### 🔹 `stem(n,x);`

👉 Used for **discrete signals**

✔ Shows vertical lines + dots
✔ Clearly represents samples

👉 NOT like `plot()` (which is for continuous signals)

---

# 🧠 5. Axis Control

### 🔹 `axis([0 12 0 12]);`

👉 Format:

```
[x_min x_max y_min y_max]
```

👉 Here:

* x-axis → 0 to 12
* y-axis → 0 to 12

the signal values are only 0 and 1

 So y-axis up to 12 is unnecessary ,we can use axis([0 8 0 2]);

---

# 🧠 6. Labels & Title

### 🔹 `xlabel('Sample Index (n)');`

👉 x-axis meaning

---

### 🔹 `ylabel('Amplitude');`

👉 y-axis meaning

---

### 🔹 `title('Digital Signal');`

👉 Graph title

---

### 🔹 `grid on;`

👉 Makes graph easy to read

---

# 🎯 What This Graph Shows

* Discrete points at n = 0 to 6
* Values = 1 or 0
* Looks like a **binary signal**

---

--
## ✅ 2. Make It More Clear

```matlab
stem(n,x,'filled');
```

✔ Filled dots → better visibility

---

# 

👉 **Continuous signal → plot()**
👉 **Discrete signal → stem()**



------
### Subplot

```matlab
clc; clear all; close all;

t = 0:0.01:10;

x1 = sin(2*pi*t);
x2 = cos(2*pi*t/2);
x3 = square(2*pi*t/2);
x4 = sawtooth(2*pi*t);

figure;

subplot(2,2,1);
plot(t,x1);
title('Sine wave');

subplot(2,2,2);
plot(t,x2,'r--');
title('Cosine wave');

subplot(2,2,3);
plot(t,x3,'k:');
title('Square wave');

subplot(2,2,4);
plot(t,x4,'g-.');
title('Sawtooth wave');
```

---


# Time Vector

```matlab
t = 0:0.01:10;
```

👉 Meaning:

* Start = 0 sec
* Step = 0.01
* End = 10 sec

✔ Total duration = 10 seconds
✔ Smaller step → smoother graph

---

#  Signals 

---

## 🔵 1. Sine Wave

x_1(t) = \sin(2\pi t)

👉 Frequency = 1 Hz
👉 Smooth periodic wave

---

## 🔴 2. Cosine Wave

x_2(t) = \cos(\pi t)

👉 Because: `2πt / 2 = πt`

✔ Lower frequency than sine
✔ Starts from maximum

---

## ⚫ 3. Square Wave

👉 Generated using:

```matlab
square(2*pi*t/2)
```

👉 Characteristics:

* Only two values: **+1 and -1**
* Sudden jumps (no smooth curve)

✔ Used in digital signals

---

## 🟢 4. Sawtooth Wave

👉 Generated using:

```matlab
sawtooth(2*pi*t)
```

👉 Characteristics:

* Linear rise
* Sudden drop

✔ Used in signal processing, music synthesis

---


### 🔹 `figure;`

👉 Creates new window

---

👉 Divides screen into **2 rows × 2 columns**

| Position | Meaning      |
| -------- | ------------ |
| (2,2,1)  | Top-left     |
| (2,2,2)  | Top-right    |
| (2,2,3)  | Bottom-left  |
| (2,2,4)  | Bottom-right |

---

#  Plot Styling

| Code    | Meaning        |
| ------- | -------------- |
| `'r--'` | red dashed     |
| `'k:'`  | black dotted   |
| `'g-.'` | green dash-dot |

👉 Helps differentiate signals visually

---

* **Top-left:** Smooth sine
* **Top-right:** Slower cosine
* **Bottom-left:** Digital-like square
* **Bottom-right:** Ramp-shaped sawtooth

---

*basic signal types**:

| Signal   | Type                |
| -------- | ------------------- |
| Sine     | Continuous          |
| Cosine   | Continuous          |
| Square   | Digital-like        |
| Sawtooth | Non-smooth periodic |


