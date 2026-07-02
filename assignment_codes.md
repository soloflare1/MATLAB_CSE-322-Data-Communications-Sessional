## 1. Polar NRZ-L

### 1. Sequence: 1111111111110000

```matlab
clear all; close all;

m = [1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0];

n = length(m);
x = [];
y = [];

for i=1:n
    x = [x i-1 i];
    if(m(i) == 0)
        y = [y 1 1];
    else
        y = [y -1 -1];
    end
end

plot(x, y, 'b', 'LineWidth', 3);
axis([0 n -1.5 1.5]);

title('Polar NRZ-L (1111111111110000)');
xlabel('Time');
ylabel('Amplitude');
grid on;
```

---

### 2. Sequence: 0000000000001111

```matlab
clc; clear all; close all;

m = [0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1];

n = length(m);
x = [];
y = [];

for i=1:n
    x = [x i-1 i];
    if(m(i) == 0)
        y = [y 1 1];
    else
        y = [y -1 -1];
    end
end

plot(x, y, 'b', 'LineWidth', 3);
axis([0 n -1.5 1.5]);

title('Polar NRZ-L (0000000000001111)');
xlabel('Time');
ylabel('Amplitude');
grid on;
```

---

### 3. Sequence: 0101010101010101

```matlab
clc; clear all; close all;

m = [0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1];

n = length(m);
x = [];
y = [];

for i=1:n
    x = [x i-1 i];
    if(m(i) == 0)
        y = [y 1 1];
    else
        y = [y -1 -1];
    end
end

plot(x, y, 'b', 'LineWidth', 3);
axis([0 n -1.5 1.5]);

title('Polar NRZ-L (0101010101010101)');
xlabel('Time');
ylabel('Amplitude');
grid on;
```

---

### 4. Sequence: 0001111001101010

```matlab
clc; clear all; close all;

m = [0 0 0 1 1 1 1 0 0 1 1 0 1 0 1 0];

n = length(m);
x = [];
y = [];

for i=1:n
    x = [x i-1 i];
    if(m(i) == 0)
        y = [y 1 1];
    else
        y = [y -1 -1];
    end
end

plot(x, y, 'b', 'LineWidth', 3);
axis([0 n -1.5 1.5]);

title('Polar NRZ-L (0001111001101010)');
xlabel('Time');
ylabel('Amplitude');
grid on;
```

---

# 2. Differential Manchester

### 1. Sequence: 1111111111110000

```matlab
clc; clear; close all;

m = [1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0];
n = length(m);

x = [];
y = [];
prev = 1;

for i = 1:n
    if m(i) == 0
        prev = -prev;
    end

    x = [x i-1 i-0.5 i-0.5 i];
    y = [y prev prev -prev -prev];

    prev = -prev;
end

plot(x,y,'r','LineWidth',3);
axis([0 n -1.5 1.5]);
grid on;

title('Differential Manchester (1111111111110000)');
xlabel('Time');
ylabel('Amplitude');
```

---

### 2. Sequence: 0000000000001111

```matlab
clc; clear; close all;

m = [0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1];
n = length(m);

x = [];
y = [];
prev = 1;

for i = 1:n
    if m(i) == 0
        prev = -prev;
    end

    x = [x i-1 i-0.5 i-0.5 i];
    y = [y prev prev -prev -prev];

    prev = -prev;
end

plot(x,y,'r','LineWidth',3);
axis([0 n -1.5 1.5]);
grid on;

title('Differential Manchester (0000000000001111)');
xlabel('Time');
ylabel('Amplitude');
```

---

### 3. Sequence: 0101010101010101

```matlab
clc; clear; close all;

m = [0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1];
n = length(m);

x = [];
y = [];
prev = 1;

for i = 1:n
    if m(i) == 0
        prev = -prev;
    end

    x = [x i-1 i-0.5 i-0.5 i];
    y = [y prev prev -prev -prev];

    prev = -prev;
end

plot(x,y,'r','LineWidth',3);
axis([0 n -1.5 1.5]);
grid on;

title('Differential Manchester (0101010101010101)');
xlabel('Time');
ylabel('Amplitude');
```

---

### 4. Sequence: 0001111001101010

```matlab
clc; clear; close all;

m = [0 0 0 1 1 1 1 0 0 1 1 0 1 0 1 0];
n = length(m);

x = [];
y = [];
prev = 1;

for i = 1:n
    if m(i) == 0
        prev = -prev;
    end

    x = [x i-1 i-0.5 i-0.5 i];
    y = [y prev prev -prev -prev];

    prev = -prev;
end

plot(x,y,'r','LineWidth',3);
axis([0 n -1.5 1.5]);
grid on;

title('Differential Manchester (0001111001101010)');
xlabel('Time');
ylabel('Amplitude');
```

---

# 3. Bipolar AMI

### 1. Sequence: 1111111111110000

```matlab
clc; clear; close all;

m = [1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0];
n = length(m);

x = [];
y = [];
last = -1;

for i = 1:n
    x = [x i-1 i];

    if m(i) == 1
        last = -last;
        y = [y last last];
    else
        y = [y 0 0];
    end
end

plot(x,y,'g','LineWidth',3);
axis([0 n -1.5 1.5]);
grid on;

title('Bipolar AMI (1111111111110000)');
xlabel('Time');
ylabel('Amplitude');
```

---

### 2. Sequence: 0000000000001111

```matlab
clc; clear; close all;

m = [0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1];
n = length(m);

x = [];
y = [];
last = -1;

for i = 1:n
    x = [x i-1 i];

    if m(i) == 1
        last = -last;
        y = [y last last];
    else
        y = [y 0 0];
    end
end

plot(x,y,'g','LineWidth',3);
axis([0 n -1.5 1.5]);
grid on;

title('Bipolar AMI (0000000000001111)');
xlabel('Time');
ylabel('Amplitude');
```

---

### 3. Sequence: 0101010101010101

```matlab
clc; clear; close all;

m = [0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1];
n = length(m);

x = [];
y = [];
last = -1;

for i = 1:n
    x = [x i-1 i];

    if m(i) == 1
        last = -last;
        y = [y last last];
    else
        y = [y 0 0];
    end
end

plot(x,y,'g','LineWidth',3);
axis([0 n -1.5 1.5]);
grid on;

title('Bipolar AMI (0101010101010101)');
xlabel('Time');
ylabel('Amplitude');
```

---

### 4. Sequence: 0001111001101010

```matlab
clc; clear; close all;

m = [0 0 0 1 1 1 1 0 0 1 1 0 1 0 1 0];
n = length(m);

x = [];
y = [];
last = -1;

for i = 1:n
    x = [x i-1 i];

    if m(i) == 1
        last = -last;
        y = [y last last];
    else
        y = [y 0 0];
    end
end

plot(x,y,'g','LineWidth',3);
axis([0 n -1.5 1.5]);
grid on;

title('Bipolar AMI (0001111001101010)');
xlabel('Time');
ylabel('Amplitude');
```
### 5. Program Enhancement : Polar NRZ-L Encoding 
```matlab
clc; clear; close all;

choice = input('Enter 1 for manual input or 2 for random sequence: ');

if choice == 1
    m = input('Enter binary sequence (e.g., [1 0 1 1 0]): ');
else
    n = input('Enter number of bits: ');
    m = randi([0 1],1,n);
    disp('Random Binary Sequence:');
    disp(m);
end

n = length(m);

x = [];
y = [];

for i = 1:n
    x = [x i-1 i];

    if m(i) == 0
        y = [y 1 1];
    else
        y = [y -1 -1];
    end
end

plot(x,y,'r','LineWidth',3);
axis([0 n -1.5 1.5]);
grid on;
hold on;

% Bit boundaries
for i = 0:n
    xline(i,'--b');
end

title('Polar NRZ-L Encoding');
xlabel('Time');
ylabel('Amplitude');

% Encoded voltage levels
disp('Encoded Voltage Levels:');
disp(y);

% Signal transitions
transitions = sum(diff(y) ~= 0);
fprintf('Total Signal Transitions: %d\n', transitions);

% DC bias
avg = mean(y);
fprintf('Average Signal Level (DC Bias): %.2f\n', avg);

% Count 0s and 1s
num0 = sum(m == 0);
num1 = sum(m == 1);

fprintf('Number of 0s: %d\n', num0);
fprintf('Number of 1s: %d\n', num1);

```
