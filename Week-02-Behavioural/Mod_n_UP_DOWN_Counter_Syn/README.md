# Parameterized Mod-N Synchronous Up/Down Counter

## Overview

This folder contains the Verilog implementation of a **Parameterized Mod-N Synchronous Up/Down Counter** using **Behavioral Modeling**. The counter counts either upward or downward within a user-defined modulus (`N`) and automatically wraps around when the count reaches its upper or lower limit. The design includes an **active-low asynchronous reset** and is verified using a dedicated testbench, along with the simulation waveform and RTL schematic.

## Folder Contents

```text
Mod_n_UP_DOWN_COUNTER_Syn/
│
├── Mod_n_UP_DOWN_COUNTER_Syn.v
│
├── Mod_n_UP_DOWN_COUNTER_Syn_TB.v
│
├── Mod_n_UP_DOWN_COUNTER_Syn_Waveform.png
│
└── Mod_n_UP_DOWN_COUNTER_Syn_RTL.png
```

## Module Description

A **Mod-N Up/Down Counter** is a sequential circuit that counts within a fixed range of **0 to N−1**. Depending on the `UP_DOWN` control signal, the counter either increments or decrements on every rising edge of the clock.

Unlike a normal binary counter, the counter wraps around when it reaches the counting limits.

An **active-low asynchronous reset (`rst_n`)** initializes the counter to `0`.

### Parameters

* `N = 10` (default modulus)
* `Data_Width = 4` (default counter width)

### Inputs

* `clk`
* `rst_n`
* `UP_DOWN`

### Outputs

* `out[Data_Width:0]`

---

## Counter Operation

| `UP_DOWN` | Operation  |
| :-------: | ---------- |
|     0     | Count Down |
|     1     | Count Up   |

---

## Counting Sequence (Default: Mod-10)

### Count Up (`UP_DOWN = 1`)

```text
0 → 1 → 2 → 3 → 4 → 5 → 6 → 7 → 8 → 9 → 0
```

### Count Down (`UP_DOWN = 0`)

```text
0 → 9 → 8 → 7 → 6 → 5 → 4 → 3 → 2 → 1 → 0
```

---

## Implementation

The counter is implemented using **Behavioral Modeling** with a clocked `always` block.

The implementation includes:

* Positive-edge triggered operation
* Active-low asynchronous reset
* Parameterized modulus (`N`)
* Parameterized counter width
* Up-count mode
* Down-count mode
* Automatic wrap-around at the counting limits

---

## Testbench

The testbench generates a clock, applies reset, and changes the counting direction during simulation.

| Time (ns) | Operation                                |
| --------- | ---------------------------------------- |
| 0         | Reset asserted (`rst_n = 0`), Count Down |
| 10        | Reset released (`rst_n = 1`)             |
| 70        | `UP_DOWN = 1` (Count Up)                 |
| 130       | Reset asserted (`rst_n = 0`)             |

The clock toggles every **2 ns**, resulting in a **4 ns clock period**.

The simulation ends automatically after **200 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify correct modulo counting, up/down operation, wrap-around behavior, parameterized design, and asynchronous reset.

---

## Modeling Style

* **Behavioral Modeling**
* Parameterized module design
* Edge-triggered `always @(posedge clk or negedge rst_n)`
* Nested `if-else` statements
* Non-blocking assignments (`<=`)
* Arithmetic increment (`+`) and decrement (`-`) operators
* Comparison operators (`>=`, `==`)

---

## Learning Outcomes

After completing this project, you will understand:

* Mod-N counter operation
* Up/Down counting
* Counter wrap-around logic
* Parameterized module design in Verilog
* Behavioral Modeling
* Active-low asynchronous reset
* Non-blocking assignments (`<=`)
* Writing Verilog testbenches
* Functional simulation
* Waveform analysis
* RTL schematic generation

---

## Tools Used

* Xilinx Vivado
* Verilog HDL
* XSim Simulator

---

**Day 12 – Week 2 – 50 Days VLSI Challenge**
