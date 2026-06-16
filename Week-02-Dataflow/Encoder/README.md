# 8×3 Encoder

## Overview

This folder contains the Verilog implementation of an **8×3 Encoder** using **Dataflow Modeling**. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
Encoder/
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

An **8×3 Encoder** is a combinational logic circuit that converts **one of eight active-high input lines** into a **3-bit binary output** representing the active input.

> **Note:** This implementation assumes that **only one input is HIGH at a time**. If multiple inputs are asserted simultaneously, the output is undefined.

### Inputs

* `i[7:0]`

### Outputs

* `y[2:0]`

---

## Truth Table

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

## Logic Equations

* **y[2]** = `i[7] + i[6] + i[5] + i[4]`
* **y[1]** = `i[7] + i[6] + i[3] + i[2]`
* **y[0]** = `i[7] + i[5] + i[3] + i[1]`

---

## Testbench

The testbench applies one active input at a time to verify the functionality of the encoder.

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

These verify the correct operation of the 8×3 Encoder for all valid input conditions.

---

## Modeling Style

* **Dataflow Modeling**
* Verilog continuous assignments (`assign`)
* Bitwise OR (`|`) operations

---

## Learning Outcomes

After completing this project, you will understand:

* Encoder operation
* 8×3 binary encoding
* Dataflow Modeling in Verilog
* Continuous assignment (`assign`)
* Bitwise logic operations
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

**Day 9 – Week 2 – 50 Days VLSI Challenge**
