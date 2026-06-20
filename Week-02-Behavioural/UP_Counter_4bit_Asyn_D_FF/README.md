# 4-Bit Asynchronous Up Counter Using D Flip-Flops

## Overview

This folder contains the Verilog implementation of a **4-Bit Asynchronous (Ripple) Up Counter** using **D Flip-Flops** and **Behavioral Modeling**. The counter increments its value on each clock cycle using a ripple-carry structure, where the output of one flip-flop drives the clock input of the next stage.

The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
UP_Counter_4bit_Asyn_D_FF/
│
├── UP_Counter_4bit_Asyn_D_FF.v
│
├── UP_Counter_4bit_Asyn_D_FF_TB.v
│
├── UP_Counter_4bit_Asyn_D_FF_Waveform.png
│
└── UP_Counter_4bit_Asyn_D_FF_RTL.png
```

## Module Description

A **4-Bit Asynchronous Up Counter** is a sequential circuit that increments its count from **0000** to **1111**. Unlike a synchronous counter, all flip-flops do not share the same clock. Instead, each stage is triggered by the output of the previous stage, creating a ripple effect.

The counter is implemented using **D Flip-Flops configured in toggle mode** by connecting `D = Q̅`.

An **active-low asynchronous reset (`rst_n`)** clears all flip-flops to `0`.

### Inputs

* `clk`
* `rst_n`

### Outputs

* `out[3:0]`

---

## Counter Architecture

Each D Flip-Flop is configured as a T Flip-Flop:

```text
D = Q̅
```

Clock connections:

```text
FF0 Clock ← clk
FF1 Clock ← Q0_bar
FF2 Clock ← Q1_bar
FF3 Clock ← Q2_bar
```

Output:

```text
out = {Q3, Q2, Q1, Q0}
```

---

## Counting Sequence

| Clock Count | Output |
| :---------: | :----: |
|    Reset    |  0000  |
|      1      |  0001  |
|      2      |  0010  |
|      3      |  0011  |
|      4      |  0100  |
|      5      |  0101  |
|      6      |  0110  |
|      7      |  0111  |
|      8      |  1000  |
|     ...     |   ...  |
|      15     |  1111  |
|      16     |  0000  |

---

## Implementation

The counter is implemented using:

* Four D Flip-Flops
* Ripple-clock architecture
* D Flip-Flops configured in toggle mode (`D = Q̅`)
* Active-low asynchronous reset

Because each stage waits for the previous stage to toggle, propagation delay accumulates through the counter chain.

---

## Testbench

The testbench generates a clock and verifies both counting and reset functionality.

| Time (ns)  | Operation                          |
| ---------- | ---------------------------------- |
| 0          | Reset asserted (`rst_n = 0`)       |
| 10         | Reset released (`rst_n = 1`)       |
| Every 2 ns | Clock toggles                      |
| 82         | Reset asserted again (`rst_n = 0`) |

The simulation ends automatically after **100 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* D Flip-Flop module
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct ripple counting sequence and asynchronous reset operation.

---

## Modeling Style

* **Structural Modeling**
* Hierarchical Design
* D Flip-Flop Instantiation
* Ripple Counter Architecture
* Continuous Assignment (`assign`)
* Active-low Asynchronous Reset

---

## Learning Outcomes

After completing this project, you will understand:

* Asynchronous (Ripple) Counter operation
* Counter implementation using D Flip-Flops
* Flip-Flop toggling using `D = Q̅`
* Structural Verilog Modeling
* Hierarchical Design Methodology
* Ripple propagation delay
* Active-low asynchronous reset
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

**Day 13 – Week 2 – 50 Days VLSI Challenge**
