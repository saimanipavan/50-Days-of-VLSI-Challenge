# 4-Bit Asynchronous Down Counter Using D Flip-Flops

## Overview

This folder contains the Verilog implementation of a **4-Bit Asynchronous (Ripple) Down Counter** using **D Flip-Flops** and **Structural Modeling**. The counter decrements its value on each clock cycle using a ripple-clock architecture, where the output of one flip-flop drives the clock input of the next stage.

The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
DOWN_Counter_4bit_Asyn_D_FF/
│
├── DOWN_Conter_4bit_Asyn_D_FF.v
│
├── DOWN_Counter_4bit_Asyn_D_FF_TB.v
│
├── DOWN_Counter_4bit_Asyn_D_FF_Waveform.png
│
└── DOWN_Counter_4bit_Asyn_D_FF_RTL.png
```

## Module Description

A **4-Bit Asynchronous Down Counter** is a sequential circuit that decrements its count from **1111** to **0000**. Unlike a synchronous counter, each flip-flop is triggered by the output of the previous stage, creating a ripple effect.

The counter is implemented using **D Flip-Flops configured in toggle mode** by connecting `D = Q̅`. The down-counting sequence is obtained by assigning the complemented outputs (`Q̅`) as the counter output.

An **active-low asynchronous reset (`rst_n`)** clears all flip-flops.

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

Counter output:

```text
out = {Q3_bar, Q2_bar, Q1_bar, Q0_bar}
```

---

## Counting Sequence

| Clock Count | Output |
| :---------: | :----: |
|    Reset    |  1111  |
|      1      |  1110  |
|      2      |  1101  |
|      3      |  1100  |
|      4      |  1011  |
|      5      |  1010  |
|      6      |  1001  |
|      7      |  1000  |
|      8      |  0111  |
|     ...     |   ...  |
|      15     |  0000  |
|      16     |  1111  |

---

## Implementation

The counter is implemented using:

* Four D Flip-Flops
* Ripple-clock architecture
* D Flip-Flops configured in toggle mode (`D = Q̅`)
* Complemented outputs for down-count sequence
* Active-low asynchronous reset

Since each stage is clocked by the previous stage, propagation delay accumulates through the ripple chain.

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

These verify the correct down-counting sequence and asynchronous reset operation.

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

* Asynchronous (Ripple) Down Counter operation
* Counter implementation using D Flip-Flops
* Flip-Flop toggling using `D = Q̅`
* Down counting using complemented outputs
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
