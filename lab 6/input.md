### 1. Numeric Input

```matlab
bit = input('Enter data: ');
```

* Input must be written as:

```matlab
[1 0 1 1]
```

* MATLAB treats it as a numeric array.

---

### 2. String Input

```matlab
str = input('Enter data: ','s');
bit = str - '0';
```

* Input is written as:

```
1011
```

* It is first taken as a string, then converted into a numeric array.

---


| Method        | Input Style | Requirement        |
| ------------- | ----------- | ------------------ |
| Numeric input | `[1 0 1 1]` | Must use brackets  |
| String input  | `1011`      | No brackets needed |


