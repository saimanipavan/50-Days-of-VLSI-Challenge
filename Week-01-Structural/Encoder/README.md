# 8×3 Encoder

## Overview

This folder contains the Verilog implementation of an **8×3 Encoder** using **Gate-Level Modeling**. The design converts one active input out of eight into a corresponding 3-bit binary output. The implementation is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

> **Note:** This is a **basic (non-priority) 8×3 Encoder**, where only one input is assumed to be HIGH at any given time.

## Folder Contents

```text
Encoder_8x3/
│
├── Encoder_8x3.v
│
├── Encoder_8x3_TB.v
│
├── Encoder_8x3_Waveform.png
│
└── Encoder_8x3_RTL.png
```

## Module Description

The 8×3 Encoder converts a single active input line into its corresponding 3-bit binary code.

### Inputs

* `i[7:0]`

### Outputs

* `y[2:0]`

### Truth Table

| Active Input | Output (`y`) |
| :----------: | :----------: |
|  `00000001`  |     `000`    |
|  `00000010`  |     `001`    |
|  `00000100`  |     `010`    |
|  `00001000`  |     `011`    |
|  `00010000`  |     `100`    |
|  `00100000`  |     `101`    |
|  `01000000`  |     `110`    |
|  `10000000`  |     `111`    |

---

## Testbench

The testbench verifies the encoder by activating one input at a time.

| Time (ns) | Active Input |
| --------- | ------------ |
| 0         | `00000000`   |
| 10        | `00000001`   |
| 20        | `00000010`   |
| 30        | `00000100`   |
| 40        | `00001000`   |
| 50        | `00010000`   |
| 60        | `00100000`   |
| 70        | `01000000`   |
| 80        | `10000000`   |

The simulation ends automatically after **100 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct functionality of the 8×3 Encoder.

---

## Modeling Style

* **Gate-Level Modeling**
* Verilog gate primitives used:

  * `or`

---

## Learning Outcomes

After completing this project, you will understand:

* Encoder operation
* Binary encoding
* Gate-Level Modeling in Verilog
* Combinational logic design
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

**Day 5 – 50 Days VLSI Challenge**
