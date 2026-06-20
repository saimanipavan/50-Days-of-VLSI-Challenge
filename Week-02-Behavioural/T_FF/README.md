# T Flip-Flop

## Overview

This folder contains the Verilog implementation of a **T (Toggle) Flip-Flop** using **Behavioral Modeling**. The design is triggered on the **positive edge of the clock** and includes an **active-high asynchronous reset**. The implementation is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
T_FF/
│
├── T_FF.v
│
├── T_FF_TB.v
│
├── T_FF_Waveform.png
│
└── T_FF_RTL.png
```

## Module Description

A **T Flip-Flop** is an **edge-triggered sequential circuit** that stores one bit of information. On every **rising edge of the clock**, the output toggles when the **T** input is HIGH. When **T** is LOW, the previous state is retained.

An **active-high asynchronous reset (`rst`)** forces the output to `0`, independent of the clock.

### Inputs

* `clk`
* `rst`
* `T`

### Outputs

* `Q`
* `Q_bar`

---

## Truth Table

| Reset (`rst`) | Clock |  T  | Q (Next State) | Operation          |
| :-----------: | :---: | :-: | :------------: | ------------------ |
|       1       |   X   |  X  |        0       | Asynchronous Reset |
|       0       |   ↑   |  0  |    No Change   | Hold               |
|       0       |   ↑   |  1  |     Toggle     | Toggle             |

---

## Implementation

The T Flip-Flop is implemented using **Behavioral Modeling** with a clocked `always` block.

The implementation includes:

* Positive-edge triggered operation
* Active-high asynchronous reset
* Hold condition
* Toggle operation

---

## Testbench

The testbench generates a clock, toggles the `T` input every **4 ns**, and verifies the asynchronous reset functionality.

| Time (ns)  | Operation                    |
| ---------- | ---------------------------- |
| 0          | `rst = 1`, `T = 1`           |
| Every 2 ns | Clock toggles                |
| Every 4 ns | `T` toggles                  |
| 20         | `rst = 0` (Normal operation) |
| 40         | `rst = 1` (Reset asserted)   |

The simulation ends automatically after **50 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct operation of the T Flip-Flop, including toggle, hold, and asynchronous reset conditions.

---

## Modeling Style

* **Behavioral Modeling**
* Edge-triggered `always @(posedge clk or posedge rst)`
* `if-else` conditional statements
* Non-blocking assignments (`<=`)
* Continuous assignment (`assign`) for `Q_bar`

---

## Learning Outcomes

After completing this project, you will understand:

* T Flip-Flop operation
* Edge-triggered sequential logic
* Toggle functionality
* Active-high asynchronous reset
* Behavioral Modeling in Verilog
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

**Day 11 – Week 2 – 50 Days VLSI Challenge**
