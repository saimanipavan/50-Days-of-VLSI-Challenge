# JK Flip-Flop

## Overview

This folder contains the Verilog implementation of a **JK Flip-Flop** using **Behavioral Modeling**. The design is triggered on the **positive edge of the clock** and includes an **active-high asynchronous reset**. The implementation is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
JK_FF/
│
├── JK_FF.v
│
├── JK_FF_TB.v
│
├── JK_FF_Waveform.png
│
└── JK_FF_RTL.png
```

## Module Description

A **JK Flip-Flop** is an **edge-triggered sequential circuit** that stores one bit of information. It overcomes the invalid state of the SR Flip-Flop by toggling its output when both inputs are HIGH.

An **active-high asynchronous reset (`rst`)** forces the output to `0`, independent of the clock.

### Inputs

* `clk`
* `rst`
* `J`
* `K`

### Outputs

* `Q`
* `Q_bar`

> **Note:** In the provided implementation, `Q_bar` is assigned as:
>
> ```verilog
> assign Q_bar = Q;
> ```
>
> Typically, `Q_bar` should be the complement of `Q` (`~Q`). If this is unintentional, consider changing it to:
>
> ```verilog
> assign Q_bar = ~Q;
> ```

---

## Truth Table

| Reset (`rst`) | Clock |  J  |  K  | Q (Next State) | Operation          |
| :-----------: | :---: | :-: | :-: | :------------: | ------------------ |
|       1       |   X   |  X  |  X  |        0       | Asynchronous Reset |
|       0       |   ↑   |  0  |  0  |    No Change   | Hold               |
|       0       |   ↑   |  0  |  1  |        0       | Reset              |
|       0       |   ↑   |  1  |  0  |        1       | Set                |
|       0       |   ↑   |  1  |  1  |     Toggle     | Toggle             |

---

## Implementation

The JK Flip-Flop is implemented using **Behavioral Modeling** with a clocked `always` block and a `case` statement.

The implementation includes:

* Positive-edge triggered operation
* Active-high asynchronous reset
* Hold condition
* Reset operation
* Set operation
* Toggle operation

---

## Testbench

The testbench generates a clock, cycles through all combinations of `J` and `K`, and verifies the asynchronous reset functionality.

| Time (ns)  | Operation                                      |
| ---------- | ---------------------------------------------- |
| 0          | `rst = 0`, `JK = 01`                           |
| Every 2 ns | Clock toggles                                  |
| Every 4 ns | `J` and `K` increment through all combinations |
| 10         | `rst = 1` (Reset asserted)                     |
| 40         | `rst = 0` (Reset released)                     |

The simulation ends automatically after **50 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct operation of the JK Flip-Flop, including hold, set, reset, toggle, and asynchronous reset conditions.

---

## Modeling Style

* **Behavioral Modeling**
* Edge-triggered `always @(posedge clk or posedge rst)`
* `case` statement
* Non-blocking assignments (`<=`)
* Continuous assignment (`assign`) for `Q_bar`

---

## Learning Outcomes

After completing this project, you will understand:

* JK Flip-Flop operation
* Edge-triggered sequential logic
* Active-high asynchronous reset
* Behavioral Modeling in Verilog
* `case` statements
* Non-blocking assignments (`<=`)
* Toggle operation
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
