# D Flip-Flop

## Overview

This folder contains the Verilog implementation of a **D (Data) Flip-Flop** using **Behavioral Modeling**. The design is triggered on the **positive edge of the clock** and includes an **active-low asynchronous reset**. The implementation is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
D_FF/
│
├── D_FF.v
│
├── D_FF_TB.v
│
├── D_FF_Waveform.png
│
└── D_FF_RTL.png
```

## Module Description

A **D Flip-Flop** is an **edge-triggered sequential circuit** that stores one bit of data. On every **rising edge of the clock**, the output `Q` takes the value of the input `D`.

An **active-low asynchronous reset (`rst_n`)** forces the output to `0`, independent of the clock.

### Inputs

* `clk`
* `rst_n`
* `D`

### Outputs

* `Q`
* `Q_bar`

---

## Truth Table

| Reset (`rst_n`) | Clock |  D  | Q (Next State) | Operation          |
| :-------------: | :---: | :-: | :------------: | ------------------ |
|        0        |   X   |  X  |        0       | Asynchronous Reset |
|        1        |   ↑   |  0  |        0       | Store 0            |
|        1        |   ↑   |  1  |        1       | Store 1            |

---

## Implementation

The D Flip-Flop is implemented using **Behavioral Modeling** with a clocked `always` block.

The implementation includes:

* Positive-edge triggered operation
* Active-low asynchronous reset
* Data storage on the rising edge of the clock

---

## Testbench

The testbench generates a clock, applies different values of `D`, and verifies the asynchronous reset functionality.

| Time (ns) | Operation            |
| --------- | -------------------- |
| 0         | `D = 0`, `rst_n = 1` |
| 4         | `D = 1`              |
| 8         | `rst_n = 0`, `D = 0` |
| 12        | `D = 1`              |
| 20        | `rst_n = 1`          |

The clock toggles every **2 ns**, resulting in a **4 ns clock period**.

The simulation ends automatically after **30 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct operation of the D Flip-Flop, including data storage and asynchronous reset.

---

## Modeling Style

* **Behavioral Modeling**
* Edge-triggered `always @(posedge clk or negedge rst_n)`
* Non-blocking assignments (`<=`)
* Continuous assignment (`assign`) for `Q_bar`

---

## Learning Outcomes

After completing this project, you will understand:

* D Flip-Flop operation
* Edge-triggered sequential logic
* Active-low asynchronous reset
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
