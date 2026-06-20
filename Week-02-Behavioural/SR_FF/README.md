# SR Flip-Flop

## Overview

This folder contains the Verilog implementation of an **SR (Set-Reset) Flip-Flop** using **Behavioral Modeling**. The design is triggered on the **positive edge of the clock** and includes an **active-low asynchronous reset**. The implementation is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
SR_FF/
│
├── SR_FF.v
│
├── SR_FF_TB.v
│
├── SR_FF_Waveform.png
│
└── SR_FF_RTL.png
```

## Module Description

An **SR Flip-Flop** is an **edge-triggered sequential circuit** that stores one bit of information. The output changes only on the **rising edge of the clock** and supports **Set**, **Reset**, **Hold**, and **Invalid** operations.

An **active-low asynchronous reset (`rst_n`)** initializes the output to `0` regardless of the clock.

### Inputs

* `clk`
* `rst_n`
* `S`
* `R`

### Outputs

* `Q`
* `Q_bar`

---

## Truth Table

| Reset (`rst_n`) | Clock |  S  |  R  | Q (Next State) | Operation          |
| :-------------: | :---: | :-: | :-: | :------------: | ------------------ |
|        0        |   X   |  X  |  X  |        0       | Asynchronous Reset |
|        1        |   ↑   |  0  |  0  |    No Change   | Hold               |
|        1        |   ↑   |  0  |  1  |        0       | Reset              |
|        1        |   ↑   |  1  |  0  |        1       | Set                |
|        1        |   ↑   |  1  |  1  |        X       | Invalid            |

---

## Implementation

The SR Flip-Flop is implemented using **Behavioral Modeling** with a clocked `always` block.

The implementation includes:

* Positive-edge triggered operation
* Active-low asynchronous reset
* Hold condition
* Set operation
* Reset operation
* Invalid state

---

## Testbench

The testbench generates a clock with a **4 ns period**, applies an active-low reset, and cycles through all input combinations of `S` and `R`.

| Time (ns)  | Operation                                      |
| ---------- | ---------------------------------------------- |
| 0          | Reset asserted (`rst_n = 0`)                   |
| 16         | Reset released (`rst_n = 1`)                   |
| Every 2 ns | Clock toggles                                  |
| Every 4 ns | `S` and `R` increment through all combinations |

The simulation ends automatically after **32 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct operation of the SR Flip-Flop, including asynchronous reset, hold, set, reset, and invalid conditions.

---

## Modeling Style

* **Behavioral Modeling**
* Edge-triggered `always @(posedge clk or negedge rst_n)`
* `case` statement
* Non-blocking assignments (`<=`)
* Continuous assignment (`assign`) for `Q_bar`

---

## Learning Outcomes

After completing this project, you will understand:

* SR Flip-Flop operation
* Edge-triggered sequential logic
* Active-low asynchronous reset
* Behavioral Modeling in Verilog
* `case` statements
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
