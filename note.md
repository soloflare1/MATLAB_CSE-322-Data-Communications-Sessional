### 1. PCM is done to transform an analog signal into a digital bit stream.
* To convert an analog signal into digital data so that it can be processed, stored, and transmitted using digital systems.
  
| Step | MATLAB Variable                                     | Output                                    |
| ---- | --------------------------------------------------- | ----------------------------------------- |
| 1    | `sig`                                               | `[-2 -1 0 1 2]`                           |
| 2    | `shifted_sig = sig + A`                             | `[0 1 2 3 4]`                             |
| 3    | `normalized = (shifted_sig/max(shifted_sig))*(L-1)` | `[0 1.75 3.5 5.25 7]`                     |
| 4    | `quantized = round(normalized)`                     | `[0 2 4 5 7]`                             |
| 5    | `en = dec2bin(quantized,3)`                         | `000`<br>`010`<br>`100`<br>`101`<br>`111` |
| 6    | `de = bin2dec(en)`                                  | `[0; 2; 4; 5; 7]`                         |
| 7    | `reconstructed = (de/7)*4`                          | `[0; 1.143; 2.286; 2.857; 4]`             |
| 8    | `reconstructed_sig = reconstructed - 2`             | `[-2; -0.857; 0.286; 0.857; 2]`           |

---
* Converts the quantized analog samples into binary (digital) data.
* Decodes the binary data into quantized decimal levels.

### 2. ASK , FSK, PSK - digital bit to digital signal
