# 4-Bit Synchronous Down Counter

## Overview

This folder contains the Verilog implementation of a **4-Bit Synchronous Down Counter** using **Behavioral Modeling**. The counter decrements its value on every **positive edge of the clock** and includes an **active-low asynchronous reset**. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
DOWN_Counter_4bit_Syn/
│
├── DOWN_Counter_4bit_Syn.v
│
├── DOWN_Counter_4bit_Syn_TB.v
│
├── DOWN_Counter_4bit_Syn_Waveform.png
│
└── DOWN_Counter_4bit_Syn_RTL.png
```

## Module Description

A **4-Bit Synchronous Down Counter** is a sequential circuit that decrements its output by **1** on every **rising edge of the clock**.

The counter counts in binary from **1111 (15)** down to **0000 (0)** and then wraps around to **1111**. An **active-low asynchronous reset (`rst_n`)** initializes the counter to `1111` regardless of the clock.

### Inputs

* `clk`
* `rst_n`

### Outputs

* `out[3:0]`

---

## Counting Sequence

| Clock Edge | Counter Output |
| :--------: | :------------: |
|    Reset   |     `1111`     |
|      1     |     `1110`     |
|      2     |     `1101`     |
|      3     |     `1100`     |
|      4     |     `1011`     |
|     ...    |       ...      |
|     15     |     `0000`     |
|     16     |     `1111`     |

---

## Implementation

The counter is implemented using **Behavioral Modeling** with a clocked `always` block.

The implementation includes:

* Positive-edge triggered counting
* Active-low asynchronous reset
* Automatic rollover from `0000` to `1111`

---

## Testbench

The testbench generates a clock and verifies both the counting sequence and reset operation.

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
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct counting sequence, counter rollover, and asynchronous reset operation.

---

## Modeling Style

* **Behavioral Modeling**
* Edge-triggered `always @(posedge clk or negedge rst_n)`
* Non-blocking assignments (`<=`)
* Arithmetic decrement operator (`-`)

---

## Learning Outcomes

After completing this project, you will understand:

* Synchronous down counter operation
* Binary down-counting sequence
* Counter rollover behavior
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

**Day 12 – Week 2 – 50 Days VLSI Challenge**
