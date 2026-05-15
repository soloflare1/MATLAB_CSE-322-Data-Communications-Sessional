## Why Do We Need Modulation?

Computers produce only binary bits:

```text
1 0 1 1 0
```

These bits cannot be sent directly over long distances efficiently.

So we use a **carrier wave** (a sine wave) and change one of its properties to represent `0` and `1`.

The three main properties of a sine wave are:

1. **Amplitude** → Height of the wave
2. **Frequency** → How fast the wave repeats
3. **Phase** → Starting position of the wave

---

# 1. ASK (Amplitude Shift Keying)

## What?

ASK changes the **amplitude** of the carrier signal.

## How?

* Bit `1` → Signal is present.
* Bit `0` → No signal.

## Why?

Because it is the simplest modulation technique.

## Example

Binary data: `1 0 1`

```text
1 → Wave
0 → No Wave
1 → Wave
```

## Pros

* Very simple
* Low cost

## Cons

* Highly affected by noise

## When Used

* RFID
* Optical communication

---

# 2. FSK (Frequency Shift Keying)

## What?

FSK changes the **frequency** of the carrier signal.

## How?

* Bit `1` → High frequency
* Bit `0` → Low frequency

## Why?

Because frequency is more resistant to noise than amplitude.

## Example

Binary data: `1 0 1`

```text
1 → Fast Wave
0 → Slow Wave
1 → Fast Wave
```

## Pros

* Better noise immunity than ASK

## Cons

* Requires more bandwidth

## When Used

* Bluetooth
* Radio communication

---

# 3. PSK (Phase Shift Keying)

## What?

PSK changes the **phase** of the carrier signal.

## How?

* Bit `1` → Normal wave
* Bit `0` → Inverted wave (180° shift)

## Why?

Because it is very reliable and uses bandwidth efficiently.

## Example

Binary data: `1 0 1`

```text
1 → Normal Wave
0 → Inverted Wave
1 → Normal Wave
```

## Pros

* Excellent noise resistance
* Efficient use of bandwidth

## Cons

* More complex receiver

## When Used

* Wi-Fi
* Satellite communication
* Mobile networks

---

# Important Terms

## Bandwidth

Bandwidth is the amount of frequency space needed to transmit a signal.

## Requires More Bandwidth

Needs more frequency space.

## Uses Bandwidth Efficiently

Can transmit data using less frequency space.

---

# Why FSK Requires More Bandwidth

FSK uses two different frequencies (`f0` and `f1`), so it occupies a wider frequency range.

---

# Why PSK Is Bandwidth Efficient

PSK keeps the same frequency and changes only the phase, so it uses less frequency space.

---

# Comparison 

| Technique | Changes   | Bit 1          | Bit 0         | Noise Resistance |
| --------- | --------- | -------------- | ------------- | ---------------- |
| ASK       | Amplitude | Signal         | No signal     | Low              |
| FSK       | Frequency | High frequency | Low frequency | Medium           |
| PSK       | Phase     | Normal wave    | Inverted wave | High             |

---

* **ASK** → A = Amplitude
* **FSK** → F = Frequency
* **PSK** → P = Phase


---

# Best Choice

* Simplest → ASK
* Better noise resistance → FSK
* Most efficient and reliable → PSK
