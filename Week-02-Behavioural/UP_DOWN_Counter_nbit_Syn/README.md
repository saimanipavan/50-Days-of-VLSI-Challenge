# Parameterized N-Bit Synchronous Up/Down Counter

## Overview

This folder contains the Verilog implementation of a **Parameterized N-Bit Synchronous Up/Down Counter** using **Behavioral Modeling**. The counter can increment or decrement its value on every **positive edge of the clock** based on a control signal. The design includes an **active-low asynchronous reset** and is verified using a dedicated testbench, along with the simulation waveform and RTL schematic.

## Folder Contents

```text
UP_DOWN_Counter_nbit_Syn/
│
├── UP_DOWN_Counter_nbit_Syn.v
│
├── UP_DOWN_Counter_nbit_Syn_TB.v
│
├── UP_DOWN_Counter_nbit_Syn_Waveform.png
│
└── UP_DOWN_Counter_nbit_Syn_RTL.png
```

## Module Description

A **Parameterized N-Bit Synchronous Up/Down Counter** is a sequential circuit that counts either **up** or **down** depending on the `UP_DOWN` control input.

The counter width is configurable through the `Data_Width` parameter, making the design reusable for different counter sizes.

An **active-low asynchronous reset (`rst_n`)** initializes the counter to all zeros.

### Parameter

* `Data_Width = 4` (default)

### Inputs

* `clk`
* `rst_n`
* `UP_DOWN`

### Outputs

* `out[Data_Width-1:0]`

---

## Counter Operation

| `UP_DOWN` | Operation  |
| :-------: | ---------- |
|     0     | Count Down |
|     1     | Count Up   |

---

## Counting Sequence (4-Bit Example)

### Count Up (`UP_DOWN = 1`)

```text
0000 → 0001 → 0010 → ... → 1111 → 0000
```

### Count Down (`UP_DOWN = 0`)

```text
0000 → 1111 → 1110 → ... → 0001 → 0000
```

---

## Implementation

The counter is implemented using **Behavioral Modeling** with a clocked `always` block.

The implementation includes:

* Positive-edge triggered operation
* Active-low asynchronous reset
* Parameterized counter width
* Up-count mode
* Down-count mode
* Automatic rollover during overflow and underflow

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

These verify correct up-counting, down-counting, rollover behavior, parameterized operation, and asynchronous reset.

---

## Modeling Style

* **Behavioral Modeling**
* Parameterized module design
* Edge-triggered `always @(posedge clk or negedge rst_n)`
* Nested `if-else` statements
* Non-blocking assignments (`<=`)
* Arithmetic increment (`+`) and decrement (`-`) operators

---

## Learning Outcomes

After completing this project, you will understand:

* Synchronous Up/Down Counter operation
* Parameterized module design in Verilog
* Configurable counter width
* Up and down counting
* Counter rollover behavior
* Active-low asynchronous reset
* Behavioral Modeling
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
