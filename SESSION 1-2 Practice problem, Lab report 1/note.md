## 🔹 **1. Setup Commands**

*  `clc` → Clears the command window
*  `clear all` → Removes all variables from workspace
*  `close all` → Closes all figure windows

👉 These commands are used to start with a clean environment.

---

## 🔹 **2. Analog Signal Generation**

Analog signal equation:
[
`y(t) = A \sin(2\pi f t + \theta)`
]

### Steps:

• Create time vector using sampling frequency
• Set frequency (f) and amplitude (A)
• Generate signal using `sin()` function
• Plot using `plot()`

👉 Output is a smooth continuous waveform.

---

## 🔹 **3. Digital Signal (Discrete Signal)**

* Digital signals are defined only at specific sample points
* Represented using a sequence like: `[1 0 1 1 0]`
* Plotted using `stem()` function

👉 Each value is shown as a separate point.

---

## 🔹 **4. plot() vs stem()**

| Function | Use                        |
| -------- | -------------------------- |
| plot()   | Continuous (analog) signal |
| stem()   | Discrete (digital) signal  |

---

## 🔹 **5. hold on Command**

* Used to plot multiple signals in the same figure
* Keeps previous graph and adds new one

👉 Useful for signal comparison.

---

## 🔹 **6. subplot Command**

* Divides one figure into multiple sections

### Format:

`subplot(m, n, p)`

* m = number of rows
* n = number of columns
* p = position of plot

👉 Example: `subplot(2,2,1)` means first section of a 2×2 grid.

---

## 🔹 **7. figure Command**

* Opens a new figure window
* Used when separate plots are needed

---

## 🔹 **8. Signal Operations**

### ➤ Addition:

[
x_3 = x_1 + x_2
]

👉 Signals are combined together.

---

### ➤ Subtraction:

[
`x_4 = x_1 - x_2`
]

👉 Shows difference between two signals.

---

### ➤ Multiplication:

[
`x_5 = x_1 .* x_2`
]

👉 Element-wise multiplication
⚠️ Must use `.*`, not `*`

---

### ➤ Division:

[
`x_6 = x_1 ./ x_2`
]

👉 Element-wise division (may cause divide-by-zero issues)

---

## 🔹 **9. Line Style and Formatting**

### Colors:

* r = red
* g = green
* b = blue
* k = black

### Line styles:

* `-` solid line
* `--` dashed line
* `:` dotted line
* `-.` dash-dot line

### Markers:

* o, x, *, s, d, etc.

---

## 🔹 **10. Key Differences**

| Concept        | Meaning                       |
| -------------- | ----------------------------- |
| Analog signal  | Continuous waveform           |
| Digital signal | Discrete values               |
| subplot        | Multiple graphs in one figure |
| figure         | Separate window               |
| hold on        | Overlay multiple plots        |
| .*             | Element-wise multiplication   |
